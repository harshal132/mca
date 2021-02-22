using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            logout.Visible = true;
        }
    }

    
    protected void signup_Click1(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }

    protected void login1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new  SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            con.Open();
            String check = "SELECT count(1) FROM [dbo].[Table] WHERE name='" + name.Text + "' and password='" + password.Text + "'";
            SqlCommand cmd = new SqlCommand(check, con);
            string temp = cmd.ExecuteScalar().ToString();
            con.Close();
            if (temp == "1")
            {

                Session["name"] = name.Text;
                Session["buyitems"] = null;
               
                Response.Redirect("food.aspx");
            }
            else
            {
                Label1.Visible = true;
            }
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        //Session.Clear();
        Response.Redirect("login.aspx");
    }
}