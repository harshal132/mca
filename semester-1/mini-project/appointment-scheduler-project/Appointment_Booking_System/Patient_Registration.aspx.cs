using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals("") || TextBox4.Text.Equals("") || TextBox5.Text.Equals("") || TextBox6.Text.Equals(""))
            {
                Label1.Text = "Please Enter all the details";
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



                con.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "Record Inserted Successfully.";
                con.Close();
            }
        }
        catch (Exception)
        {
            Label1.Text = "Details are not valid ";
        }





    }
}


