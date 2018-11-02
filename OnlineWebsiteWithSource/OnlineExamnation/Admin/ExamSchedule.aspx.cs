using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public partial class Admin_ExamSchedule : System.Web.UI.Page
{
    string emaill;
    string em = ConfigurationManager.AppSettings["email"];
    string pass = ConfigurationManager.AppSettings["passw"];
    string conn = ConfigurationManager.ConnectionStrings["OnlineWebBasedExam"].ConnectionString;
	
    DALExam objAttemptexam = new DALExam();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Admin"] == null && Session["AdminName"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {
           
            int examtypeid = Convert.ToInt32(Session["examtypeid"].ToString());
            ddlExamIdNotAttempted.DataSource = objAttemptexam.getNotAttemptedExamId(examtypeid);
            ddlExamIdNotAttempted.DataValueField = "ExamId";
            ddlExamIdNotAttempted.DataTextField = "ExamName";
            ddlExamIdNotAttempted.DataBind();
            Label1.Text = "<  Select Exam Hear";


            string s1 = "select LName from UserDetail where Id = '" + Session["uid"].ToString() + "'";
            SqlConnection cn2 = new SqlConnection(conn);
            cn2.Open();
            SqlCommand cmd2 = new SqlCommand(s1, cn2);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            if (dr2.Read())
            {
                emaill = dr2["LName"].ToString();

            }
            else
            {
                Label1.Text = "Email Loding Faill.....";
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtAssignExamDate.Text != "")
            {
              string username;
             string s = "select UserName from LoginDatails where Id = '"+ Session["uid"].ToString()+"'";
             SqlConnection cn = new SqlConnection(conn);
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
             SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                username = dr["UserName"].ToString();
              SendMails();
            int i  =objAttemptexam.InsertScheduleExam(Convert.ToInt32(Session["uid"].ToString()),Convert.ToInt32(ddlExamIdNotAttempted.SelectedValue),DateTime.Now.Date.ToString(),txtAssignExamDate.Text,Convert.ToInt32(Session["ExamRequestId"].ToString()),txtKeyCode.Text,username,0);

            if (i > 0)
            {
                ClearData();
                // LblMsg.Text = "Send SuccessFull.....";
            }
            else
            {
                LblMsg.Text = "Seding failed......";
            }
           }
            }
            else
            {
               LblMsg.Text = "Assign date ........";
            }
             
        }
        catch (Exception ex)
        {
            LblMsg.Text = ex.Message;
        }
    }
    void SendMails()
    {
        try
        {

            SmtpClient objmail = new SmtpClient();
            objmail.Credentials = new NetworkCredential(em, pass);
            objmail.Port = 586;
            objmail.Host = "smtp.gmail.com";
            objmail.EnableSsl = true;
            MailMessage msg = new MailMessage(em, emaill, "Exam details", "Your Key                 : " + txtKeyCode.Text + "" + "\n" + "Your ExamId              : " + Convert.ToInt32(ddlExamIdNotAttempted.SelectedValue) + "" + "\n" + "Your ExamDate            : " + txtAssignExamDate.Text);
            objmail.Send(msg);
            Label1.Text = "Youe Password Has been Sent in your Email......";
        }
        catch (Exception ex)
        {
            LblMsg.Text = "Your Key                 : " + txtKeyCode.Text + "" + "\n" +
                          "Your ExamId              : " + Convert.ToInt32(ddlExamIdNotAttempted.SelectedValue) + "" + "\n" +
                          "Your ExamDate            : " + txtAssignExamDate.Text;
        }

       
    }

    private void ClearData()
    {
        txtAssignExamDate.Text = txtKeyCode.Text = "";
    }
    protected void ddlExamIdAttempted_DataBound(object sender, EventArgs e)
    {
        ddlExamIdNotAttempted.Items.Insert(0, "--Select--");
       
    }
    protected void ddlExamIdNotAttempted_SelectedIndexChanged(object sender, EventArgs e)
    {
         Label1.Text = ddlExamIdNotAttempted.SelectedValue;
    }
    protected void LB_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowExamRequest.aspx");
    }
    protected void txtAssignExamDate_TextChanged(object sender, EventArgs e)
    {
        
        txtKeyCode.Text  =creatrendom(8);
    }
    public  string creatrendom(int pl)
    {
        string ac = "0123456789";
        Random obj = new Random();
        char[] chars = new char[pl];
        int acc = ac.Length;
        for (int i = 0; i < pl; i++)
        {
            chars[i] = ac[(int)((ac.Length) * obj.NextDouble())];
        }
        return new string(chars);
    }
}