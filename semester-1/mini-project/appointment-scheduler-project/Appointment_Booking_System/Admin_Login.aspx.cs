using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    protected void loginButton(object sender, EventArgs e)
    {
        string userName = System.Web.Configuration.WebConfigurationManager.AppSettings["adminUsername"];
        string userPassowrd = System.Web.Configuration.WebConfigurationManager.AppSettings["adminPassword"];
        if (TextBox1.Text.Equals(userName) && TextBox2.Text.Equals(userPassowrd))
        {
            Response.Redirect("AdminAddDoctor.aspx");
        }
        else
        {
            Label1.Text = "Invalid Credentials Please Try Again!";
        }
        
    }
}