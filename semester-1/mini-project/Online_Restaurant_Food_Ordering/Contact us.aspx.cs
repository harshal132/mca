using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Net.Mail;
using System.Net;

public partial class Contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }
    private void SendMail()
    {
        string filename = Server.MapPath("contactmessage.html");
        string mailbody = System.IO.File.ReadAllText(filename);
        mailbody = mailbody.Replace("##NAME##", name.Text);
        mailbody = mailbody.Replace("##Email##", email.Text);
        mailbody = mailbody.Replace("##Mobile##", number.Text);

        string from = "amkarfastfood123@gmail.com";
        string to = email.Text;
        MailMessage message = new MailMessage(from, to);
        message.Subject = "Thank For FeedBack";
        message.Body = mailbody;
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        System.Net.NetworkCredential basicCredential = new System.Net.NetworkCredential("amkarfastfood123@gmail.com", "nick9896");
        client.EnableSsl = true;
        client.UseDefaultCredentials = true;
        client.Credentials = basicCredential;
        try
        {
            client.Send(message);
            ShowMessage("FeedBack Send  SuccessFully...!");
        }
        catch (Exception ex)
        {
            ShowMessage(ex.Message);
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            String insert = "insert into [dbo].[contact] (name,number,email,subject,message) values(@Name,@Number,@Email,@Subject,@Message)";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.Parameters.AddWithValue("@Name", name.Text);
            cmd.Parameters.AddWithValue("@Number", number.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);

            cmd.Parameters.AddWithValue("@Subject", subject.Text);
            cmd.Parameters.AddWithValue("@Message", message.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            SendMail();
            Page_Load(sender, e);
            Response.Write("user sign up");
            name.Text = "";
            email.Text = "";
            number.Text = "";
            subject.Text = "";
            message.Text = "";
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }
}