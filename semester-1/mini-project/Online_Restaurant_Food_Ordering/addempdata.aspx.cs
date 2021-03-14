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
using System.Net.Mail;
using System.Net;
using System.Activities.Validation;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        date.Text = DateTime.Now.ToShortDateString();
        if (Session["number"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        else
        {
            try
            {
                Retrived();
            }
            catch(Exception ex)
            {
                Response.Redirect("adminlogin.aspx");
            }
           
        }
        
    }
    void Retrived()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        String st = "select id from [dbo].[employeedata] order by id";
        SqlCommand cmd = new SqlCommand(st, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Id.Text = dr["id"].ToString();
        }

        int i = int.Parse(Id.Text);
        i = i + 1;
        Id.Text = i.ToString();
        con.Close();
        dr.Close();
    }

    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }

    private void SendMail()
    {
        string filename = Server.MapPath("gmailmessage.html");
        string mailbody = System.IO.File.ReadAllText(filename);
        mailbody = mailbody.Replace("##NAME##", name.Text);
        mailbody = mailbody.Replace("##Email##", email.Text);
        mailbody = mailbody.Replace("##Mobile##", number.Text);
        mailbody = mailbody.Replace("##Password##", password.Text);
        string from = "amkarfastfood123@gmail.com";
        string to = email.Text;
        MailMessage message = new MailMessage(from, to);
        message.Subject = "Registration Successfull!";
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
    private void SendMailed()
    {
        string filename = Server.MapPath("deletempmsg.html");
        string mailbody = System.IO.File.ReadAllText(filename);
        mailbody = mailbody.Replace("##NAME##", name.Text);
        mailbody = mailbody.Replace("##Email##", email.Text);
        mailbody = mailbody.Replace("##Mobile##", number.Text);
        mailbody = mailbody.Replace("##Password##", password.Text);
        string from = "amkarfastfood123@gmail.com";
        string to = email.Text;
        MailMessage message = new MailMessage(from, to);
        message.Subject = "AMKARFASTFOOD";
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
    private void SendMailup()
    {
        string filename = Server.MapPath("empupdatemsg.html");
        string mailbody = System.IO.File.ReadAllText(filename);
        mailbody = mailbody.Replace("##NAME##", name.Text);
        mailbody = mailbody.Replace("##Email##", email.Text);
        mailbody = mailbody.Replace("##Mobile##", number.Text);
        mailbody = mailbody.Replace("##Password##", password.Text);
        mailbody = mailbody.Replace("##Address##", address.Text);
        string from = "amkarfastfood123@gmail.com";
        string to = email.Text;
        MailMessage message = new MailMessage(from, to);
        message.Subject = "AMAKARFASTFOOD";
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

    void show()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from [dbo].[employeedata]", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSourceID = null;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }



    protected void delete_Click1(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            String Name1 = name.Text.ToString();
            String del = "delete from [dbo].[employeedata] where name='" + Name1 + "'";
            SqlCommand cmd = new SqlCommand(del, con);
            int i = cmd.ExecuteNonQuery();
            if (i >= 1)
                ShowMessage("delete successfully");
            else
                ShowMessage(" not delete");
            SendMailed();
            name.Text = "";
            number.Text = "";
            email.Text = "";
            address.Text = "";
            password.Text = "";
            date.Text = "";
            show();
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }

    }

    protected void update_Click1(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
            SqlCommand cmd = new SqlCommand("update [dbo].[employeedata] set  number = '" + number.Text + "',email = '" + email.Text + "',address = '" + address.Text + "',password = '" + password.Text + "' where name='" + name.Text + "'", con);
            cmd.ExecuteNonQuery();
            
            ShowMessage("update successfully");
           SendMailup();
            name.Text = "";
        number.Text = "";
        email.Text = "";
        address.Text = "";
        password.Text = "";
        date.Text = "";
        show();
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }

    protected void insert_Click1(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            String insert = "insert into [dbo].[employeedata]  (id,name,number,email,address,joininingdate,password) values(@Id,@Name,@Number,@Email,@Address,@JoingDate,@Password)";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.Parameters.AddWithValue("@Id", Id.Text);
            cmd.Parameters.AddWithValue("@Name", name.Text);
            cmd.Parameters.AddWithValue("@Number", number.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);
            cmd.Parameters.AddWithValue("@Address", address.Text);
            cmd.Parameters.AddWithValue("@JoingDate", DateTime.Parse(date.Text));
            cmd.Parameters.AddWithValue("@Password", password.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            ShowMessage("Register successfully");
            show();
           SendMail();
            name.Text = "";
            number.Text = "";
            email.Text = "";
            address.Text = "";
            password.Text = "";
            date.Text = "";
          Retrived();
            

        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }

   

    protected void searchbut_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from [dbo].[employeedata]",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSourceID = null;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }



    protected void new_Click(object sender, EventArgs e)
    {
        this.name.Text = "";
        number.Text = "";
        email.Text = "";
        address.Text = "";
        password.Text = "";
        date.Text = "";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        Id.Text = gr.Cells[1].Text;
        name.Text = gr.Cells[2].Text;
        number.Text = gr.Cells[3].Text;
        email.Text = gr.Cells[4].Text;
        address.Text = gr.Cells[5].Text;
        date.Text = System.DateTime.Today.ToShortDateString();
        password.Text = gr.Cells[7].Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (searchtextbox.Text != "")
        {
            GridView1.DataSourceID = null;
            GridView1.DataSource = SqlDataSource2;
            GridView1.DataBind();
            searchtextbox.Text = "";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = null;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
    }

    
}