using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_Login : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C: \Users\Deepak Maurya\Desktop\Appointment_Booking_System - 20191222T050711Z - 001\Appointment_Booking_System\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("DoctorDetails.aspx");
        }
        else
        {
           // con.Open();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String user = TextBox1.Text.Trim();
        cmd.CommandText = "select * from DoctorDetails where Name ='" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "DoctorDetails");
        if(ds.Tables[0].Rows.Count>0)
        {
            Session["User"] = user;
            Response.Redirect("DoctorDetails.aspx");
           // Response.Redirect("DoctorAppointments.aspx");
        }
    }
}