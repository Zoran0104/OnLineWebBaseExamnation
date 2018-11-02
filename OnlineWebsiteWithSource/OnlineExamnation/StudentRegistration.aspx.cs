using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class StudentRegistration : System.Web.UI.Page
{
    StuInformetion obj = new StuInformetion();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
          SqlDataReader dr2 =  obj.matchStu(TextBox7.Text, TextBox8.Text);
          if (dr2.Read())
          {
              Label1.Text = "Please Change UserName ..........";
          }
          else
          {

            if (TextBox1.Text != null)
            {
             obj.Password = TextBox8.Text;
            obj.Sq = TextBox9.Text;
            obj.Sa = TextBox10.Text;
            obj.Status = "0";
            obj.Roll = "User";
            obj.Username = TextBox7.Text;
            int i = obj.AddNewUser();
            if (i > 0)
            {
                obj.Username = TextBox7.Text;
                obj.Password = TextBox8.Text;
               SqlDataReader dr1 = obj.SelectId();
               if (dr1.Read())
               {
                   obj.User_Id =  Convert.ToInt32( dr1["Id"].ToString());
                   obj.Frist_name = TextBox1.Text;
                   obj.Last_name = TextBox2.Text;
                   obj.Date_Of_Birth = TextBox6.Text;
                   obj.Date_Of_Registation = DateTime.Now.Date.ToShortDateString().ToString();
                   obj.Contect_No = TextBox4.Text;
                   obj.Address = TextBox5.Text;
                   int i1 = obj.AddUser1();
                   if (i1 > 0)
                   {
                    
                   Label1.Text = "Account Creat Successfull....";
                   clearall();

                   }
               }


                
            }
            }
            else
            {
                Label1.Text = "Enter Frist Name ...";
            }
           
          }

        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void clearall()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
         TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
    }
}