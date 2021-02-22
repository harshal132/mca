using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class AddtoCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            try
            {


                if (!IsPostBack)
                {
                    DataTable dt = new DataTable();
                    DataRow dr;
                    dt.Columns.Add("sno");
                    dt.Columns.Add("productid");
                    dt.Columns.Add("productname");
                    dt.Columns.Add("quantity");
                    dt.Columns.Add("Price");
                    dt.Columns.Add("totalprice");
                    dt.Columns.Add("productimage");




                    if (Request.QueryString["id"] != null)
                    {
                        if (Session["Buyitems"] == null)
                        {
                            dr = dt.NewRow();
                            SqlConnection con = new SqlConnection();
                            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                            con.Open();
                           
                            String myquery = "select * from [dbo].[AddFood] where Id=" + Request.QueryString["id"];
                            SqlCommand cmd = new SqlCommand();
                            cmd.CommandText = myquery;
                            cmd.Connection = con;
                            SqlDataAdapter da = new SqlDataAdapter();
                            da.SelectCommand = cmd;
                            DataSet ds = new DataSet();
                            da.Fill(ds);
                            dr["sno"] = 1;
                            dr["productid"] = ds.Tables[0].Rows[0]["Id"].ToString();
                            dr["productname"] = ds.Tables[0].Rows[0]["FoodName"].ToString();
                            dr["productimage"] = ds.Tables[0].Rows[0]["FileUpload1"].ToString();
                            dr["quantity"] = Request.QueryString["quantity"];
                            dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                            int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                            int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                            int totalprice = price * quantity;
                            savecartdetail(1, ds.Tables[0].Rows[0]["Id"].ToString(), ds.Tables[0].Rows[0]["FoodName"].ToString(), ds.Tables[0].Rows[0]["FileUpload1"].ToString(), Request.QueryString["quantity"].ToString(), ds.Tables[0].Rows[0]["price"].ToString(), totalprice.ToString());
                            dr["totalprice"] = totalprice;

                            dt.Rows.Add(dr);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();

                            Session["buyitems"] = dt;
                            GridView1.FooterRow.Cells[5].Text = "Total Amount";
                            GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                            Response.Redirect("AddToCart.aspx");


                        }
                        else
                        {

                            dt = (DataTable)Session["buyitems"];
                            int sr;
                            sr = dt.Rows.Count;

                            dr = dt.NewRow();
                            SqlConnection con = new SqlConnection();
                            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                            con.Open();
                            String myquery = "select * from [dbo].[AddFood] where Id=" + Request.QueryString["id"];
                            SqlCommand cmd = new SqlCommand();
                            cmd.CommandText = myquery;
                            cmd.Connection = con;
                            SqlDataAdapter da = new SqlDataAdapter();
                            da.SelectCommand = cmd;
                            DataSet ds = new DataSet();
                            da.Fill(ds);
                            dr["sno"] = sr + 1;
                            dr["productid"] = ds.Tables[0].Rows[0]["Id"].ToString();
                            dr["productname"] = ds.Tables[0].Rows[0]["FoodName"].ToString();
                            dr["productimage"] = ds.Tables[0].Rows[0]["FileUpload1"].ToString();
                            dr["quantity"] = Request.QueryString["quantity"];
                            dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                            int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                            int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                            int totalprice = price * quantity;
                            dr["totalprice"] = totalprice;
                            savecartdetail(1, ds.Tables[0].Rows[0]["Id"].ToString(), ds.Tables[0].Rows[0]["FoodName"].ToString(), ds.Tables[0].Rows[0]["FileUpload1"].ToString(), Request.QueryString["quantity"].ToString(), ds.Tables[0].Rows[0]["price"].ToString(), totalprice.ToString());
                            dt.Rows.Add(dr);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();

                            Session["buyitems"] = dt;
                            GridView1.FooterRow.Cells[5].Text = "Total Amount";
                            GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                            Response.Redirect("AddToCart.aspx");


                        }
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        if (GridView1.Rows.Count > 0)
                        {
                            GridView1.FooterRow.Cells[5].Text = "Total Amount";
                            GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                        }


                    }
                    Label6.Text = GridView1.Rows.Count.ToString();
                    Label7.Text = GridView1.Rows[0].Cells[1].Text;
                    Label8.Text= GridView1.Rows[1].Cells[1].Text;
                    Label9.Text= GridView1.Rows[2].Cells[1].Text;
                    Label10.Text= GridView1.Rows[3].Cells[1].Text;
                    
                   
                }
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

        }
    }

    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["buyitems"] = null;
        clearsavedcart();
    }
    private void clearsavedcart()
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        con.Open();
        String updatedata = "delete from [dbo].[addtocart] where username='" + Session["name"].ToString() + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Redirect("food.aspx");
    }
    private void savecartdetail(int sno, String productid, String Productname, String productimage, String quantity, String price, String totalprice)
    {
        String query = "insert into [dbo].[addtocart](sno,productid,productname,productimage,quantity,price,totalprice,username) values(" + sno + ",'" + productid + "','" + Productname + "','" + productimage + "','" + quantity + "','" + price + "','" + totalprice + "','" + Session["name"].ToString() + "')";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        con.Open();         
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("atcorder.aspx?totalprice=" + grandtotal()+"&productid1="+Label7.Text+ "&productid2="+ Label8.Text + "&productid3="+ Label9.Text + "&productid4="+ Label10.Text);

    }
}