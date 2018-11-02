using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Student_StuPersonalInfo : System.Web.UI.Page
{
    StuInformetion obj = new StuInformetion();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["User"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
    void Fill()
    {
        obj.User_Id = Convert.ToInt32(Session["User"].ToString());
        SqlDataReader dr = obj.selectdata();
        if (dr.Read())
        {
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
            TextBox4.Text = dr[3].ToString();
            TextBox5.Text = dr[4].ToString();
            TextBox6.Text = dr[5].ToString();
            TextBox7.Text = dr[6].ToString();

        }
        else
        {
            Label1.Text = "Data Not Found ...";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox2.Text == "")
            {
                Label1.Text = "Click View Data Frist.....";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
            obj.User_Id =Convert.ToInt32( Session["User"].ToString());
            obj.Frist_name = TextBox2.Text;
            obj.Last_name = TextBox3.Text;
            obj.Date_Of_Birth = TextBox4.Text;
             obj.Contect_No = TextBox6.Text;
            obj.Address = TextBox7.Text;
            int i = obj.UpdateStu();
            if (i > 0)
            {

                Label1.Text =  "Update Successfull.....";
                Label1.ForeColor = System.Drawing.Color.Blue;
            }
            else
            {
                Label1.Text = "Not Updated...";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            }
            

        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            Fill();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
}