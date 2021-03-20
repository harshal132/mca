
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login1_Click(object sender, EventArgs e)
    {
        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\user.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        String myquery = "select * from [dbo].[admintable]";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String name1;
        String number1;
        String password1;
        name1 = ds.Tables[0].Rows[0]["name"].ToString();
       number1 = ds.Tables[0].Rows[0]["number"].ToString();
        password1 = ds.Tables[0].Rows[0]["password"].ToString();

        if (name1 == name.Text && number1 == number.Text &&  password1 == password.Text)
        {
            Session["adminname"] = name1;
            Session["number"] = number1;
            Response.Redirect("addempdata.aspx");
        }
        else
        {
            Label1.Visible = true;
        }


        con.Close();
    }



    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}