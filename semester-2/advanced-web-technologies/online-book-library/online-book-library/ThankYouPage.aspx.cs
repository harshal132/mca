using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThankYouPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bookName.Text = Session["bookName"].ToString();
        bookId.Text = Session["bookId"].ToString();
        authorName.Text = Session["author"].ToString();
        returnDate.Text = DateTime.Today.AddDays(10).ToString();
    }
}