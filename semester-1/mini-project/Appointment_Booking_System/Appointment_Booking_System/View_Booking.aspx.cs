using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View_Booking : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Patient_Login.aspx");
        }
        else
        {
           // cmd.CommandText = "select * from Appointment where EmailID ='" + Session["User"] + "'";
            //cmd.Connection = con;
            //sda.SelectCommand = cmd;
           // sda.Fill(ds);
           // Label1.Text = ds.Tables[0].Rows[0]["EmailID"].ToString();

            con.Open();
            showdata();

        }
    }
    public void showdata()
    {
        try
        {
            cmd.CommandText = "select * from Appointment where EmailID ='" + Session["user"] + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label1.Text = ds.Tables[0].Rows[0]["EmailID"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["Category"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["Doctor_Name"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["Patient Name"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["Date"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["Time"].ToString();
        }
        catch(Exception)
        {
            Label7.Text = "No booking is available";
        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");

    }
}