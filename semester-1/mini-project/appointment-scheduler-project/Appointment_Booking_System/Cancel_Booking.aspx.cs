using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Cancel_Booking : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    public void showMessage(String message) {
        Type cstype = this.GetType();
        // Get a ClientScriptManager reference from the Page class.
        ClientScriptManager cs = Page.ClientScript;
        // Check to see if the startup script is already registered.
        if (!cs.IsStartupScriptRegistered(cstype, "PopupScript"))
        {
            String cstext = "alert('"+message+"');";
            cs.RegisterStartupScript(cstype, "PopupScript", cstext, true);
        }
    }
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
        if (checkAppointment(Label1.Text)){
            cmd.CommandText = "delete from Appointment where EmailID ='" + Label1.Text + "'";
            sendMailToPatient(Label1.Text);
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            showMessage("Your Appointment is cancelled!");
            Session.Remove("EmailID");
        }
        else{
            showMessage("No Appointments Available To Cancel!");
        }
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

    public Boolean checkAppointment(String userEmail) {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        String query = "select count(*) from Appointment where EmailID = '" + userEmail + "';";
        con.Open();
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

    public void sendMailToPatient(String patientMail) {
        //gather data required for mail
        String patientName = getPatientName(patientMail);
        String doctorName = getDoctorName(patientMail);
        String date = getDate(patientMail);
        String time = getTime(patientMail);
        String doctorMail = getDoctorMail(doctorName);
        //Actual Mail Code
        String mailBody = "Hello " + patientName + ",\n\tYour appointment is cancelled with Dr. " + doctorName + " on " + date + " at " + time;
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("hiray.projects@gmail.com");
        SmtpClient smtp = new SmtpClient();
        smtp.Port = 587;
        smtp.EnableSsl = true;
        mail.Subject = "Appointment Cancelled!";
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential("hiray.projects@gmail.com", "Testgma@1");
        smtp.Host = "smtp.gmail.com";
        //sending mail to patient
        mail.To.Add(new MailAddress(patientMail));
        mail.IsBodyHtml = true;
        mail.Body = mailBody;
        smtp.Send(mail);
        //sending mail to doctor
        sendMailToDoctor(doctorName, patientName, date, time);
    }
    public void sendMailToDoctor(String doctorName, String patientName, String date, String time)
    {
        String mailBody = "Hello Dr. " + doctorName + ",<br>Your appointment with " + patientName + " on " + date + " at " + time + " is cancelled!";
        String doctorEmail = getDoctorMail(doctorName);
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("hiray.projects@gmail.com");
        SmtpClient smtp = new SmtpClient();
        smtp.Port = 587;
        smtp.EnableSsl = true;
        mail.Subject = "Appointment Cancelled!";
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

    public String getPatientName(String patientMail) {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "select First_Name from Patient where EmailID = '" + patientMail + "';";
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
    public String getDate(String patientMail) {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "select Date from Appointment where EmailID = '" + patientMail + "';";
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

    public String getTime(String patientMail) {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "select Time from Appointment where EmailID = '" + patientMail + "';";
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

    public String getDoctorName(String patientMail) {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "select Doctor_Name from Appointment where EmailID = '" + patientMail + "';";
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
    public String getDoctorMail(String doctorName)
    {
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