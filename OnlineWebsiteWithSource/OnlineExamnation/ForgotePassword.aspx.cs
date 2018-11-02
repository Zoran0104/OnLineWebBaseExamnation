using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Configuration;
public partial class ForgotePassword : System.Web.UI.Page
{
    string em = ConfigurationManager.AppSettings["email"];
    string pass = ConfigurationManager.AppSettings["passw"];
    BALLogin obj = new BALLogin();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = em + "    " + pass;
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
                  SqlDataReader dr = obj.forgotePasswordou(TextBox1.Text, TextBox2.Text ,TextBox4.Text );
                    if (dr.Read())
                    {

                        try
                        {
                            SmtpClient objmail = new SmtpClient();
                            objmail.Credentials = new NetworkCredential(em, pass);
                            objmail.Port = 586;
                            objmail.Host = "smtp.gmail.com";
                            objmail.EnableSsl = true;
                            MailMessage msg = new MailMessage(em, TextBox3.Text, "Lost Password Ricovery", "\n Your Password is :\n" + dr["Password"].ToString());
                            objmail.Send(msg);
                            Label1.Text = "Youe Password Has been Sent in your Email......";
                            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
                        }
                        catch (Exception ex)
                        {
                            Label1.Text = "Sorry ! \n Password Sending Fail In your Email \n Your Password is : " + dr["Password"].ToString(); 
                            TextBox1.Text = TextBox2.Text = TextBox3.Text =TextBox4.Text  = "";
                           
                        }

                   }
                    else
                    {
                        Label1.Text = "Some Item  not Match.....";
                        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text   = "";
                    }
                 
        }
         catch (Exception ex)
        {
            Label1.Text = ex.Message;
        } 
    }
}