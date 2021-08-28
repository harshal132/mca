using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;

public partial class _Default : System.Web.UI.Page
{
    WebService objectCal = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void calculate(object sender, EventArgs e) {
        int cm = Convert.ToInt32(TextBox1.Text);
        answer.Text = objectCal.calculateGrade(cm);
    }
}