using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text;

public partial class adminreports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["number"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        else
        {
            try
            {
                
            }
            catch (Exception ex)
            {
                Response.Redirect("adminlogin.aspx");
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter sdf = new SqlDataAdapter("select * from [dbo].[employeedata] where joininingdate between '"+ date1.Text + "'and'"+ date2.Text+"'", con);
        DataTable dt = new DataTable();
        sdf.Fill(dt);
        GridView1.DataSourceID = null;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
        date1.Text = "";
        date2.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
            SqlDataAdapter sdf = new SqlDataAdapter("select * from [dbo].[AddFood] where Date between '" + date1.Text + "'and'" + date2.Text + "'", con);
            DataTable dt = new DataTable();
            sdf.Fill(dt);
            GridView1.DataSourceID = null;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
            date1.Text = "";
            date2.Text = "";
       
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter sdf = new SqlDataAdapter("select * from [dbo].[codrecord] where date between '" + date1.Text + "'and'" + date2.Text + "'", con);
        DataTable dt = new DataTable();
        sdf.Fill(dt);
        GridView1.DataSourceID = null;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
        date1.Text = "";
        date2.Text = "";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter sdf = new SqlDataAdapter("select * from [dbo].[user] ", con);
        DataTable dt = new DataTable();
        sdf.Fill(dt);
        GridView1.DataSourceID = null;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
        date1.Text = "";
        date2.Text = "";
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter sdf = new SqlDataAdapter("select * from [dbo].[Table] ", con);
        DataTable dt = new DataTable();
        sdf.Fill(dt);
        GridView1.DataSourceID = null;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
        date1.Text = "";
        date2.Text = "";
    }
}