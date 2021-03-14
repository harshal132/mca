using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.IO;
public partial class addfood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["number"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        else
        {
            try
            {
                Retrived();
            }
            catch (Exception ex)
            {
                Response.Redirect("adminlogin.aspx");

            }
        }
      
    }


    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }
    void Retrived()
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            String st = "select Id from [dbo].[AddFood] order by Id";
            SqlCommand cmd = new SqlCommand(st, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                id.Text = dr["Id"].ToString();
            }
            int i = int.Parse(id.Text);
            i = i + 1;
            id.Text = i.ToString();
            con.Close();
            dr.Close();
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }

    }
    protected void insert_Click(object sender, EventArgs e)
    {

        

    }

    protected void delete_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            String del = "delete from [dbo].[AddFood] where FoodName='" + foodname.Text + "'";
            SqlCommand cmd = new SqlCommand(del, con);
            int i = cmd.ExecuteNonQuery();
            if (i >= 1)
                ShowMessage("Food delete successfully");
            else
                ShowMessage("food Not delete");
            this.foodname.Text = "";
            this.fooddes.Text = "";
            price.Text = "";
            date.Text = "";
            quantity.Text = "";
            show();


        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
            Response.Write("error" + ex.ToString());
        }
        this.foodname.Text = "";
        this.fooddes.Text = "";
        price.Text = "";
        date.Text = "";
        quantity.Text = "";

    }


    void show()
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from [dbo].[AddFood]", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSourceID = null;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        try
        {
            GridViewRow gr = GridView1.SelectedRow;
            id.Text = gr.Cells[1].Text;
            foodname.Text = gr.Cells[2].Text;
            fooddes.Text = gr.Cells[3].Text;
            price.Text = gr.Cells[4].Text;
            quantity.Text = gr.Cells[5].Text;
            date.Text = gr.Cells[5].Text;
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }

    }

    protected void New_Click(object sender, EventArgs e)
    {

        try
        {
            this.foodname.Text = "";
            this.fooddes.Text = "";
            price.Text = "";
            date.Text = "";
            quantity.Text = "";
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            if (searchtextbox.Text != "")
            {
                GridView1.DataSourceID = null;
                GridView1.DataSource = SqlDataSource2;
                GridView1.DataBind();
                searchtextbox.Text = "";
            }
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            GridView1.DataSourceID = null;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }

    }





    protected void fooddes_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("update [dbo].[AddFood] set FoodName = '" + foodname.Text + "',FoodDescription = '" + fooddes.Text + "',Price = '" + price.Text + "',Quantity = '" + quantity.Text + "',Date = '" + date.Text + "' where FoodName='" + foodname.Text + "'", con);
            cmd.ExecuteNonQuery();


            this.foodname.Text = "";
            fooddes.Text = "";
            price.Text = "";
            date.Text = "";
            quantity.Text = "";
            show();
            ShowMessage("Update successfully");

        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }



    }

    protected void insert_Click1(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("~/FoodImage/") + Path.GetFileName(FileUpload1.FileName));
            String link = "~/FoodImage/" + Path.GetFileName(FileUpload1.FileName);
            String insert = "insert into  [dbo].[AddFood] (Id,FoodName,FoodDescription,Price,Quantity,Date,FileUpload1) values(@Id2,@FoodName,@FoodDescription,@Price,@Quantity,@Date,@FileUpload1)";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.Parameters.AddWithValue("@Id2", id.Text);
            cmd.Parameters.AddWithValue("@FoodName", foodname.Text);
            cmd.Parameters.AddWithValue("@FoodDescription", fooddes.Text);
            cmd.Parameters.AddWithValue("@Price", price.Text);
            cmd.Parameters.AddWithValue("@Quantity", quantity.Text);
            cmd.Parameters.AddWithValue("@Date", date.Text);
            cmd.Parameters.AddWithValue("@FileUpload1", link);
            cmd.ExecuteNonQuery();
            con.Close();
            ShowMessage("Food Add successfully");
            show();
            Retrived();
            this.foodname.Text = "";
            this.fooddes.Text = "";
            price.Text = "";
            date.Text = "";
            quantity.Text = "";

        }
        catch (Exception ex)
        {

            Response.Write("error" + ex.ToString());
            
        }
    }
}