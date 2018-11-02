using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    BALLogin obj = new BALLogin();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text != null)
            {

                obj.User_name = TextBox1.Text;
                obj.Password = TextBox2.Text;
                SqlDataReader dr = obj.UserLogin();
                if (dr.Read())
                {
                    if (dr["Roll"].ToString().ToUpper() == "USER")
                    {
                        Session["User"] = dr["Id"].ToString();
                        Session["UserName"] = TextBox1.Text;
                        Response.Redirect("Student/Default.aspx");

                    }
                    else if (dr["Roll"].ToString().ToUpper() == "ADMIN")
                    {
                        Session["Admin"] = dr["Id"].ToString();
                        Session["AdminName"] = TextBox1.Text;
                        Response.Redirect("Admin/Default.aspx");
                    }
                    else
                    {
                        Label1.Text = "Invalid User Or Admin";
                    }
                }
                else
                {
                    Label1.Text = "Invalid User Or Admin";
                }
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotePassword.aspx");
    }
}