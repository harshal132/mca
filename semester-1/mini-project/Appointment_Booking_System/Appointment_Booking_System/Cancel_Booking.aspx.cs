using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cancel_Booking : System.Web.UI.Page
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
            con.Open();
            showdata();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        cmd.CommandText = "delete from Appointment where EmailID ='" + Label1.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        Session.Remove("EmailID");

    }
    public void showdata()
    {
        cmd.CommandText = "select * from Patient where EmailID ='" + Session["user"] + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        Label1.Text = ds.Tables[0].Rows[0]["EmailID"].ToString();

    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();

        Response.Redirect("Login.aspx");
    }
}