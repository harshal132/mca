using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;


public partial class adminprofile : System.Web.UI.Page
{
    static String imagelink;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["number"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        else
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                con.Open();

                DataSet ds = new DataSet();
                String checkuser = "SELECT * FROM [dbo].[admintable] WHERE number='" + Session["number"] + "'";
                SqlCommand cmd = new SqlCommand(checkuser, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                Label1.Text = ds.Tables[0].Rows[0]["name"].ToString();

                Label2.Text = ds.Tables[0].Rows[0]["email"].ToString();

                Label3.Text = ds.Tables[0].Rows[0]["number"].ToString();
               // image();
            }

            catch (Exception ex)
            {
                Response.Redirect("adminlogin.aspx");
            }   
                   
            }
        image();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        //Session.Clear();
        Response.Redirect("adminlogin.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (uploadimage() == true)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                con.Open();
                String query = "insert into [dbo].[ProfileDetail](sname,email,profileimage) values(@sname,@email,@image)";               
                SqlCommand cmd = new SqlCommand(query,con);
                cmd.Parameters.AddWithValue("@sname", Label1.Text);
                cmd.Parameters.AddWithValue("@email", Label2.Text);
                cmd.Parameters.AddWithValue("@image", imagelink);
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label4.Text = "photo insert SucessFully";
               // image();
            }
        }
        catch(Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }
    private Boolean uploadimage()
    {
        Boolean imagesaved = false;
        if (FileUpload1.HasFile == true)
        {

            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "image/jpeg")
            {
                int filesize;
                filesize = FileUpload1.PostedFile.ContentLength;

                if (filesize <= 51200)
                {
                    System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                    int height = img.Height;
                    int width = img.Width;
                    if (height == 200 && width == 200)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/ProfileImage/") + Label1.Text + ".jpg");
                        Image1.ImageUrl = "~/ProfileImage/" + Label1.Text + ".jpg";
                        imagelink = "ProfileImage/" + Label1.Text + ".jpg";


                        imagesaved = true;
                    }
                    else
                    {
                        Label4.Text = "Kindly Upload JPEG Image in Proper Dimensions 200 x 200";
                    }




                }
                else
                {
                    Label4.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                }

            }
            else
            {
                Label4.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
            }
        }
        else
        {
            Label4.Text = "You have not selected any file - Browse and Select File First";
        }

        return imagesaved;

    }
    public void image()
    {
        String imagelink1;
        try
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            con.Open();

            DataSet ds = new DataSet();
            String checkuser = "SELECT * FROM [dbo].[ProfileDetail] where sname='" + Label1.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
           // imagelink = ds.Tables[0].Rows[0]["profileimage"].ToString();
            imagelink1 = ds.Tables[0].Rows[0]["profileimage"].ToString();
            Image1.ImageUrl = imagelink1 + "?n=" + DateTime.Now.Second.ToString();

        }
        catch (Exception ex)
        {
            Response.Write("messga"+ex.Message);
        }
    }
}
