using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class food : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            HyperLink1.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
        }
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        if (dt != null)
        {

            Label6.Text = dt.Rows.Count.ToString();
        }
        else
        {
            Label6.Text = "0";

        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (searchtextbox.Text != "")
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource2;
            DataList1.DataBind();
            searchtextbox.Text = "";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = null;
        DataList1.DataSource = SqlDataSource1;
        DataList1.DataBind();
    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "buy now")
        {
            Label name = (Label)(e.Item.FindControl("label3"));
            var n = name.Text;
            Label price = (Label)(e.Item.FindControl("label4"));
            var p = price.Text;
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("buynowrecord.aspx?id=" + e.CommandArgument.ToString() + "&FoodName=" + n + "&quantity=" + dlist.SelectedItem.ToString() + "&price=" + Convert.ToInt32(p));


        }
        if (e.CommandName == "add to cart")
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }
    }


    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        Label lb = e.Item.FindControl("Label7") as Label;
        ImageButton btn = e.Item.FindControl("ImageButton1") as ImageButton;
        ImageButton btna = e.Item.FindControl("ImageButton2") as ImageButton;
        Label lb1 = e.Item.FindControl("Label1") as Label;

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        String myquery = "Select * from [dbo].[AddFood] where Id=" + lb1.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String stockdata = "";

        if (ds.Tables[0].Rows.Count > 0)
        {
            stockdata = ds.Tables[0].Rows[0]["Quantity"].ToString();

        }
        con.Close();

        if (stockdata == "0")
        {
            lb.Text = "Out of Stock";
            btn.Enabled = false;
            btna.Enabled = false;
            btn.ImageUrl = "images/sold out.png";

        }
        else
        {
            lb.Text = stockdata;
        }

    }

   
}