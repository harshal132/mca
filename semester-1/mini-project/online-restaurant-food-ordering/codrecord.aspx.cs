using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Net.Mail;
using System.Net;
using System.Activities.Validation;

public partial class codrecord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox5.Text = DateTime.Now.ToShortDateString();

        string totalprice = Request.QueryString["totalprice"].ToString();
        string id = Request.QueryString["id"].ToString();
        string name = Request.QueryString["FoodName"].ToString();
        Label7.Text = name;
        Label6.Text = id;
        Label8.Text = totalprice;
        
    }
    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
        
    }

    private void SendMail()
    {
        string filename = Server.MapPath("ordermessage.html");
        string mailbody = System.IO.File.ReadAllText(filename);
        mailbody = mailbody.Replace("##NAME##", TextBox1.Text);
        mailbody = mailbody.Replace("##Email##", TextBox2.Text);
        mailbody = mailbody.Replace("##Mobile##", TextBox3.Text);
        mailbody = mailbody.Replace("##Address##", TextBox4.Text);
        mailbody = mailbody.Replace("##OrderId##", Label6.Text);
        mailbody = mailbody.Replace("##FoodName##",Label7.Text);
        mailbody = mailbody.Replace("##totalprice##", Label8.Text);
        string from = "amkarfastfood123@gmail.com";
        string to = TextBox2.Text;
        MailMessage message = new MailMessage(from, to);
        message.Subject = "Order Place Successfull!";
        message.Body = mailbody;
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        System.Net.NetworkCredential basicCredential = new System.Net.NetworkCredential("amkarfastfood123@gmail.com", "nick9896");
        client.EnableSsl = true;
        client.UseDefaultCredentials = true;
        client.Credentials = basicCredential;
        try
        {
            client.Send(message);
            ShowMessage("Email Sending successfully...!");
        }
        catch (Exception ex)
        {
            ShowMessage(ex.Message);
        }
    }

    void ShowMessagee(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }
    private void SendMailup()
    {
        string filename = Server.MapPath("adminorder.html");
        string mailbody = System.IO.File.ReadAllText(filename);
        mailbody = mailbody.Replace("##NAME##", TextBox1.Text);
        mailbody = mailbody.Replace("##Email##", TextBox2.Text);
        mailbody = mailbody.Replace("##Mobile##", TextBox3.Text);
        mailbody = mailbody.Replace("##OrderId##", Label6.Text);
        mailbody = mailbody.Replace("##FoodName##", Label7.Text);
        mailbody = mailbody.Replace("##Address##", TextBox4.Text);
        mailbody = mailbody.Replace("##totalprice##", Label8.Text);
        string from = "gaminikhil1122@gmail.com";
        string to = "amkarfastfood123@gmail.com";
        MailMessage message = new MailMessage(from, to);
        message.Subject = "User Order information";
        message.Body = mailbody;
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        System.Net.NetworkCredential basicCredential = new System.Net.NetworkCredential("amkarfastfood123@gmail.com", "nick9896");
        client.EnableSsl = true;
        client.UseDefaultCredentials = true;
        client.Credentials = basicCredential;
        try
        {
            client.Send(message);
            ShowMessagee("Email Sending successfully...!");
        }
        catch (Exception ex)
        {
            ShowMessagee(ex.Message);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            String insert = "insert into [dbo].[codrecord]  (name,email,number,address,date) values(@Name,@Email,@Number,@Address,@Date)";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);           
            cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Number", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Date",DateTime.Parse(TextBox5.Text));
            
            cmd.ExecuteNonQuery();
           
            ShowMessage("Order Place successfully");

            SendMail();
            SendMailup();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Label6.Text = "";
            Label7.Text = "";
            Label8.Text = "";
            

            
            String update = "update [dbo].[AddFood] set Quantity=Quantity-" + Convert.ToInt32(Request.QueryString["quantity"])+"where id="+ Convert.ToInt32(Request.QueryString["productid"]);
            SqlCommand cmd1 = new SqlCommand(update, con);
            cmd1.ExecuteNonQuery();
            Response.Redirect("orderplace.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }
}
