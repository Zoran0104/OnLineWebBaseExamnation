using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AdminChangePassword : System.Web.UI.Page
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
    void ClearFields()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            obj.User_name = TextBox1.Text;
            obj.Password = TextBox2.Text;
            SqlDataReader dr = obj.UserLogin();
            if (dr.Read())
            {
                obj.User_name = TextBox1.Text;
                obj.Password = TextBox2.Text;
                obj.New_Password = TextBox3.Text;
                int i = obj.changepass();
                if (i > 0)
                {
                    Label1.Text = "Password Changed Successfull ....";
                    ClearFields();
                }
                else
                {
                    Label1.Text = "Password Changing Failed Try Again ......";
                }
            }
            else
            {
                Label1.Text = "Invalid User name And Password..";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = "Error: Get asp.net Teamsupport";
        }
         
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            ClearFields();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}