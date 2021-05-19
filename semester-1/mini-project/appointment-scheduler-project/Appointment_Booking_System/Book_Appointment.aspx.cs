using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net.Mail;
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

    public Boolean checkIfDoctorIsBusy(String doctorName, String date, String time) {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "select COUNT(*) from Appointment where Doctor_Name = '"+doctorName+"' AND Date = '"+date+"' AND + Time = '"+time+"';";

        using (var cmd = new SqlCommand(query, con))
        {
            int rowsAmount = (int)cmd.ExecuteScalar(); // get the value of the count
            if (rowsAmount > 0)
            {
                con.Close();
                return true;
            }
            else
            {
                con.Close();
                return false;
            }
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
                if (checkIfDoctorIsBusy(DoctorName.SelectedValue, TextBox2.Text, Time.SelectedValue)) {
                    displayMessage("Doctor is busy on selected Date and Time, Try selecting different Date or Time!");
                }
                else
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
                    string insert = "insert into Appointment values(@email_id,@category,@doctorName,@patientName,@date,@time)";
                    SqlCommand cmd = new SqlCommand(insert, con);
                    //showdata();
                    cmd.Parameters.AddWithValue("@email_id", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@category", Category.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@doctorName", DoctorName.SelectedValue);
                    cmd.Parameters.AddWithValue("@patientName", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@date", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@time", Time.SelectedValue);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    displayMessage("Your Appointment is Booked, Please check your Inbox for Details!");
                    sendMailToPatient(DoctorName.SelectedValue, TextBox1.Text, TextBox2.Text, Time.SelectedValue, TextBox3.Text);
                    con.Close();
                }
            }
        }
        catch (Exception)
        {
            displayMessage("You already booked the appointment...");
        }
        //SessionData();


    }
    public void updateDoctorName(object sender, EventArgs e) {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        string insert = "select Name from DoctorDetails where Specialization = '" + Category.SelectedItem.Text + "';";
        SqlCommand cmd = new SqlCommand(insert, con);
        con.Open();
        DoctorName.DataSource = cmd.ExecuteReader();
        DoctorName.DataBind();
        con.Close();
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

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date.CompareTo(DateTime.Today) < 0)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Gray;
        }
    }
    public void displayMessage(String message) // For Alerts
    {
        Type cstype = this.GetType();

        // Get a ClientScriptManager reference from the Page class.
        ClientScriptManager cs = Page.ClientScript;

        // Check to see if the startup script is already registered.
        if (!cs.IsStartupScriptRegistered(cstype, "PopupScript"))
        {
            String cstext = "alert('" + message + "');";
            cs.RegisterStartupScript(cstype, "PopupScript", cstext, true);
        }
    }

    public void sendMailToPatient(String doctorName, String patientEmail, String date, String time, String patientName) {
        String mailBody = "Hello "+patientName+",\n\tYour appointment is booked with "+doctorName+" on "+date+" at "+time;
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("hiray.projects@gmail.com");
        SmtpClient smtp = new SmtpClient();
        smtp.Port = 587;
        smtp.EnableSsl = true;
        mail.Subject = "Appointment Booked Successfully!";
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential("hiray.projects@gmail.com", "Testgma@1");
        smtp.Host = "smtp.gmail.com";
        //recipient
        mail.To.Add(new MailAddress(patientEmail));
        mail.IsBodyHtml = true;
        mail.Body = mailBody;
        smtp.Send(mail);
        sendMailToDoctor(doctorName, patientName, date, time);
    }

    public void sendMailToDoctor(String doctorName, String patientName, String date, String time) {
        String mailBody = "Hello " + doctorName + ",\n\tYour appointment is booked with " + patientName + " on " + date + " at " + time;
        String doctorEmail = getDoctorMail(doctorName);

        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("hiray.projects@gmail.com");
        SmtpClient smtp = new SmtpClient();
        smtp.Port = 587;
        smtp.EnableSsl = true;
        mail.Subject = "Appointment Booked";
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential("hiray.projects@gmail.com", "Testgma@1");
        smtp.Host = "smtp.gmail.com";
        //recipient
        mail.To.Add(new MailAddress(doctorEmail));
        mail.IsBodyHtml = true;
        mail.Body = mailBody;
        smtp.Send(mail);
    }

    public String getDoctorMail(String doctorName) { // get doctor name from database
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "select EmailID from DoctorDetails where Name = '" + doctorName + "';";
        String name = "";
        using (var cmd = new SqlCommand(query, con))
        {
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    name = reader[0].ToString();
                    
                }
                return name;
            }
        }
    }
}