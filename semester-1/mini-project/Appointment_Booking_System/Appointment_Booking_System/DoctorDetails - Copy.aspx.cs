using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DoctorDetails : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ABDULLAH\Desktop\project\catering\catering\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["user"]==null)
        {
            Response.Redirect("Doctor_Login.aspx");
        }
        else
        {
            con.Open();
            showdata();

        }
    }
    public void showdata()
    {
        cmd.CommandText = "select * from DoctorDetails where Name ='" + Session["user"]+"'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        Label1.Text = ds.Tables[0].Rows[0]["Id"].ToString();
        Label2.Text = ds.Tables[0].Rows[0]["Name"].ToString();
        Label3.Text = ds.Tables[0].Rows[0]["Specialization"].ToString();
        Label4.Text = ds.Tables[0].Rows[0]["Degree"].ToString();
        Label5.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
        Label6.Text = ds.Tables[0].Rows[0]["Age"].ToString();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
       
        Response.Redirect("Login.aspx");
    }
}