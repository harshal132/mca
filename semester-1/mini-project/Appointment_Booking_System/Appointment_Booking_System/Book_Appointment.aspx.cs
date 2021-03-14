using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Appointment : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
        try
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
        }catch(Exception)
        {
          
        }
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals("") )
            {
                Label1.Text = "Please Enter all the details";
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
                string insert = "insert into Appointment values(@email_id,@category,@doctorName,@patientName,@date,@time)";
                SqlCommand cmd = new SqlCommand(insert, con);
                showdata();
                cmd.Parameters.AddWithValue("@email_id", TextBox1.Text);
                cmd.Parameters.AddWithValue("@category", Category.SelectedValue);
                cmd.Parameters.AddWithValue("@doctorName", DoctorName.SelectedValue);
                cmd.Parameters.AddWithValue("@patientName", TextBox3.Text);
                cmd.Parameters.AddWithValue("@date", TextBox2.Text);
                cmd.Parameters.AddWithValue("@time", Time.SelectedValue);
                

                con.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "Record Inserted Successfully.";
                con.Close();
            }
        }
        catch (Exception)
        {
            Label1.Text = "You already booked the appointment...";
        }
        SessionData();


    }
    public void showdata()
    {
        cmd.CommandText = "select * from Patient where EmailID ='" + Session["user"] + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        TextBox1.Text = ds.Tables[0].Rows[0]["EmailID"].ToString();

    }
    public void SessionData()
    {
        String user = TextBox1.Text.Trim();
        cmd.CommandText = "select * from Appointment where EmailID ='" + user + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "Patient");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["booking"] = user;
            //Response.Redirect("View_Booking.aspx");
            // Response.Redirect("DoctorAppointments.aspx");
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();

        Response.Redirect("Login.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;

    }
}