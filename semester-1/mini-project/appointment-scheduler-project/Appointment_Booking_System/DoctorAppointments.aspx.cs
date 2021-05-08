﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DoctorAppointments : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Doctor_Login.aspx");
        }
        else
        {
            con.Open();
            getDoctorAppointmentDetails();
        }
    }
    public void getDoctorAppointmentDetails()
    {
        cmd.CommandText = "select * from DoctorDetails where EmailID ='" + Session["user"] + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        Label1.Text = ds.Tables[0].Rows[0]["EmailID"].ToString();
        Label2.Text = ds.Tables[0].Rows[0]["Name"].ToString();
        sda = new SqlDataAdapter("select \"Patient Name\", Date, Time from Appointment where Doctor_Name='" + Label2.Text + "'", con);
        dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();

        Response.Redirect("Login.aspx");

    }
}