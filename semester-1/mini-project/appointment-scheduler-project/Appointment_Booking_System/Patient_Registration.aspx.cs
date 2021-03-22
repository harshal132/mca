using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Patient_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registerUser(object sender, EventArgs e)
    {
        int result = 0;
        result = validateMobileNumber();
        result = validateName();
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
            result = 1;
        }
        else
        {
            result = 0;
        }
        return result;
    }

    public int validateName() {
        int result = 0;
        Regex regName = new Regex("[a-zA-Z]{8}");
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
    public void storeDetails()
    {
        try
        {
            if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals("") || TextBox4.Text.Equals("") || TextBox5.Text.Equals("") || TextBox6.Text.Equals(""))
            {
                Label1.Text = "Please Enter All The Details For Registration";
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
                string insert = "insert into Patient values(@fname,@lname,@password,@email,@mobile,@Gender,@age)";
                SqlCommand cmd = new SqlCommand(insert, con);

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
                Label1.Text = "Record Inserted Successfully.";
                con.Close();
            }
        }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Invalid Details! Please Provide Valid Details";
        }
    }

}


