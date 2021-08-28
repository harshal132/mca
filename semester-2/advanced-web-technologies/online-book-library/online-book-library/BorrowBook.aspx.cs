using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BorrowBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void sendUserData(object sender, EventArgs e) {
        string bookId = bookID.Text;
        string bookName = TextBox2.Text;
        string authorName = TextBox4.Text;
        Session["bookId"] = bookId;
        Session["bookName"] = bookName;
        Session["author"] = authorName;
        Response.Redirect("ThankYouPage.aspx");
    }
}