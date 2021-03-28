using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Threading;

public partial class Patient_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registerUser(object sender, EventArgs e)
    {
        int result = 0;
        result = validateMobileNumber(); //0
        if (result == 0)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Provide Valid Details!";
        }
        else
        {
            storeDetails();
        }
    }

    public void clearRecords(){
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        RadioButtonList1.ClearSelection();
    }
    public int validateMobileNumber() {
        int result = 0;
        Regex regMobile = new Regex(@"\d{10}");
        Match matchMobile = regMobile.Match(TextBox5.Text);
        if (matchMobile.Success)
        {
            result = validateName();
        }
        else
        {
            result = 0;
        }
        return result;
    }

    public int validateName() {
        int result = 0;
        Regex regName = new Regex("[a-zA-Z]{3}");
        Match matchFirstName = regName.Match(TextBox1.Text);
        if (matchFirstName.Success)
        {
            matchFirstName = regName.Match(TextBox3.Text);
            if (matchFirstName.Success) {
                result = 1;
            }
            else
            {
                result = 0;
            }
        }
        else
        {
            result = 0;
        }
        return result;
    }
    public Boolean checkIfAlreadyRegistered() {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "select COUNT(*) from Patient where EmailID ='" + TextBox4.Text + "'";

        using (var cmd = new SqlCommand(query, con))
        {
            int rowsAmount = (int)cmd.ExecuteScalar(); // get the value of the count
            if (rowsAmount > 0)
            {
                con.Close();
                return true;
            }
            else
            {
                con.Close();
                return false;
            }
        }

    }

    public void displayMessage(String message) {
        Type cstype = this.GetType();

        // Get a ClientScriptManager reference from the Page class.
        ClientScriptManager cs = Page.ClientScript;

        // Check to see if the startup script is already registered.
        if (!cs.IsStartupScriptRegistered(cstype, "PopupScript"))
        {
            String cstext = "alert('" + message + "');";
            cs.RegisterStartupScript(cstype, "PopupScript", cstext, true);
        }
    }
    public void storeDetails()
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            string insert = "insert into Patient values(@fname,@lname,@password,@email,@mobile,@Gender,@age)";
            SqlCommand cmd = new SqlCommand(insert, con);
            if (checkIfAlreadyRegistered()){
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "User Already Registered with Given Email ID!";
            }
            else {
                cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@lname", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                cmd.Parameters.AddWithValue("@email", TextBox4.Text);
                cmd.Parameters.AddWithValue("@mobile", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(TextBox6.Text));
                //clear Textboxes
                clearRecords();
                con.Open();
                cmd.ExecuteNonQuery();
                //Response.Write("<script>alert('Data inserted successfully')</script>"); // Show Alert Box for Record Inserted Succefully!
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                //Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "scripts", "<script>alert('Data inserted successfully');</script>");
                displayMessage("User Registered Successfully!");
                con.Close();

                //Thread.Sleep(5000);
                Response.Redirect("Patient_Login.aspx");
            }  
        }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Invalid Details! Please Provide Valid Details";
        }
    }

}


