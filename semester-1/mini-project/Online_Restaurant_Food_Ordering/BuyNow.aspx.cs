using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Activities.Validation;


public partial class BuyNow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Text = Request.QueryString["name"].ToString();
        Label7.Text = Request.QueryString["id"].ToString();
        Label6.Text = Request.QueryString["quantity"].ToString();
        Label2.Text = Request.QueryString["price"].ToString();
        Random random = new Random();
        txnid.Value = (Convert.ToString(random.Next(10000, 20000)));
        txnid.Value = TextBox1.Text + txnid.Value.ToString();
        Response.Write(txnid.Value.ToString());
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        String insert = "insert into [dbo].[user] (name,number,email,address) values(@Name,@Number,@Email,@Address)";
        SqlCommand cmd = new SqlCommand(insert, con);
        cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Number", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
        cmd.ExecuteNonQuery();
        
        Double amount = Convert.ToDouble(Label2.Text);
        

        String text = key.Value.ToString() + "|" + txnid.Value.ToString() + "|" + amount + "|" + "Women Tops" + "|" + TextBox1.Text + "|" + TextBox2.Text + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "||||||" + salt.Value.ToString();
        //Response.Write(text);
        byte[] message = Encoding.UTF8.GetBytes(text);

        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] hashValue;
        SHA512Managed hashString = new SHA512Managed();
        string hex = "";
        hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }
        hash.Value = hex;

        System.Collections.Hashtable data = new System.Collections.Hashtable(); // adding values in gash table for data post
        data.Add("hash", hex.ToString());
        data.Add("txnid", txnid.Value);
        data.Add("key", key.Value);
        // string AmountForm = ;// eliminating trailing zeros

        data.Add("amount", amount);
        data.Add("firstname", TextBox1.Text.Trim());
        data.Add("email", TextBox2.Text.Trim());
        data.Add("phone", TextBox3.Text.Trim());
        data.Add("productinfo", "Women Tops");
        data.Add("udf1", "1");
        data.Add("udf2", "1");
        data.Add("udf3", "1");
        data.Add("udf4", "1");
        data.Add("udf5", "1");

        data.Add("surl", "http://localhost:1063/SuccessPayment.aspx");
        data.Add("furl", "http://localhost:1063/FailurePayment.aspx");

        data.Add("service_provider", "");


        string strForm = PreparePOSTForm("https://test.payu.in/_payment", data);
        Page.Controls.Add(new LiteralControl(strForm));

        var id = Label7.Text;
        var q = Label6.Text;
        String update = "update [dbo].[AddFood] set Quantity=Quantity-" + Convert.ToInt32(q)+ "where Id="+Convert.ToInt32(id);
        SqlCommand cmd1 = new SqlCommand(update, con);
        cmd1.ExecuteNonQuery();

    }
    private string PreparePOSTForm(string url, System.Collections.Hashtable data)      // post form
    {
        //Set a name for the form
        string formID = "PostForm";
        //Build the form using the specified data to be posted.
        StringBuilder strForm = new StringBuilder();
        strForm.Append("<form id=\"" + formID + "\" name=\"" +
                       formID + "\" action=\"" + url +
                       "\" method=\"POST\">");

        foreach (System.Collections.DictionaryEntry key in data)
        {

            strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                           "\" value=\"" + key.Value + "\">");
        }


        strForm.Append("</form>");
        //Build the JavaScript which will do the Posting operation.
        StringBuilder strScript = new StringBuilder();
        strScript.Append("<script language='javascript'>");
        strScript.Append("var v" + formID + " = document." +
                         formID + ";");
        strScript.Append("v" + formID + ".submit();");
        strScript.Append("</script>");
        //Return the form and the script concatenated.
        //(The order is important, Form then JavaScript)
        return strForm.ToString() + strScript.ToString();
    }

}