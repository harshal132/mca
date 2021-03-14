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
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Equals("admin") && TextBox2.Text.Equals("admin"))
        {
            Response.Redirect("AdminAddDoctor.aspx");
        }
        else
        {
            Label1.Text = "Invalid User";
        }
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Equals("admin") && TextBox2.Equals("admin"))
        {
            Response.Redirect("AdminAddDoctor.aspx");
        }
    }
}