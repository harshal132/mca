using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Net.Mail;
using System.Net;
using System.Activities.Validation;


public partial class atcorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        TextBox5.Text = DateTime.Now.ToShortDateString();
       int totalprice = Convert.ToInt32(Request.QueryString["totalprice"]);
        Label6.Text = "<b>"+totalprice.ToString()+"</b>";
        Random r = new Random();
        r.Next(10000,99999);
        Label10.Text = r.Next(10000,99999).ToString();
    }
    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }
    private void SendMailup()
    {
        string filename = Server.MapPath("atcmessage.html");
        string mailbody = System.IO.File.ReadAllText(filename);
        mailbody = mailbody.Replace("##OrderId##", Label10.Text);
        mailbody = mailbody.Replace("##NAME##", TextBox1.Text);
        mailbody = mailbody.Replace("##Email##", TextBox2.Text);
        mailbody = mailbody.Replace("##Mobile##", TextBox3.Text);
        mailbody = mailbody.Replace("##Address##", TextBox4.Text);
        mailbody = mailbody.Replace("##OrderId1##", Request.QueryString["productid1"].ToString());
        mailbody = mailbody.Replace("##OrderId2##", Request.QueryString["productid2"].ToString());
        mailbody = mailbody.Replace("##OrderId3##", Request.QueryString["productid3"].ToString());
        
        mailbody = mailbody.Replace("##totalprice##", Label6.Text);
        string from = "gaminikhil1122@gmail.com";
        string to = "amkarfastfood123@gmail.com";
        MailMessage message = new MailMessage(from, to);
        message.Subject = "user order information";
        message.Body = mailbody;
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        System.Net.NetworkCredential basicCredential = new System.Net.NetworkCredential("gaminikhil1122@gmail.com", "nick1122");
        client.EnableSsl = true;
        client.UseDefaultCredentials = true;
        client.Credentials = basicCredential;
        try
        {
            client.Send(message);
            ShowMessage("Email Sending successfully...!");
        }
        catch (Exception ex)
        {
            ShowMessage(ex.Message);
        }
    }

    private void SendMail()
    {
        string filename = Server.MapPath("atcorderplace.html");
        string mailbody = System.IO.File.ReadAllText(filename);
        mailbody = mailbody.Replace("##OrderId##", Label10.Text);
        mailbody = mailbody.Replace("##NAME##", TextBox1.Text);
        mailbody = mailbody.Replace("##Email##", TextBox2.Text);
        mailbody = mailbody.Replace("##Mobile##", TextBox3.Text);
        mailbody = mailbody.Replace("##Address##", TextBox4.Text);
       
        mailbody = mailbody.Replace("##totalprice##", Label6.Text);
        string from = "amkarfastfood123@gmail.com";
        string to = TextBox2.Text;
        MailMessage message = new MailMessage(from, to);
        message.Subject = "Order Place Successfull!";
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
            ShowMessage("Email Sending successfully...!");
        }
        catch (Exception ex)
        {
            ShowMessage(ex.Message);
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SendMailup();
        SendMail();
        Response.Redirect("orderplace.aspx");

    }
}