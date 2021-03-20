using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class buynowrecord : System.Web.UI.Page
{
    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        string name = Request.QueryString["FoodName"];
        string Price = Request.QueryString["price"];
        String quantity = Request.QueryString["quantity"];
        Label1.Text = name;
        Label3.Text = Price;
        Label5.Text = quantity;
        Label8.Text = id;
        int total = Convert.ToInt32(Price) * Convert.ToInt32(quantity);
        Label6.Text = total.ToString();
        Random r = new Random();
        double d = r.Next(10000, 99999);
        Label7.Text =  d.ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        

        /*if (Session ==null)
        {

        }
        else
        {
            var id = Label8.Text;
            var q =Label5.Text;
            Response.Redirect("BuyNow.aspx?price=" + Label6.Text + "&quantity=" + Convert.ToInt32(q)+ "&id="+ Convert.ToInt32(id)+"&name="+ Label1.Text);
        }*/
        ShowMessage("card service is not avaliable please go with cod");


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var productid = Label8.Text;
        var totalprice = Label6.Text;
        var id = Label7.Text;
        var q = Label5.Text;
        Response.Redirect("codrecord.aspx?FoodName="+Label1.Text+ "&id="+ Convert.ToInt32(id) +"&totalprice="+ Convert.ToInt32(totalprice)+"&quantity="+Convert.ToInt32(q)+"&productid="+ Convert.ToInt32(productid));
    }
}