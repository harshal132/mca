using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminAddDoctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = generateDoctorID().ToString();
    }
    public int generateDoctorID() {
        Random generator = new Random();
        String r = generator.Next(0, 1000000).ToString("D6");
        int random = Convert.ToInt32(r);
        if (!checkIfAlreadyUsed(random))
        {
            return random;
        }
        else {
            random = generateDoctorID();
            return random;
        }  
    }

    public Boolean checkIfAlreadyUsed(int random) {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "select COUNT(*) from DoctorDetails where Id ="+random+";";
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

    protected void registerDoctor(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals("") || TextBox4.Text.Equals("") || RadioButtonList1.SelectedValue.Equals(""))
            {
                Label1.Text = "Please Enter All Details To Register!";
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
				
                String insert = "insert into DoctorDetails values(@id,@uname,@name,@Password,@Specialization,@Degree,@Gender,@Age)";
                SqlCommand cmd = new SqlCommand(insert, con);
				
                cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                cmd.Parameters.AddWithValue("@uname", TextBox2.Text);
                cmd.Parameters.AddWithValue("@name", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Specialization", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@Degree", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@Age", TextBox4.Text);
                

                con.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "Record Inserted Successfully.";
                con.Close();
            }
        }
        catch(Exception)
        {
            Label1.Text = "Please Enter Valid Details!";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}