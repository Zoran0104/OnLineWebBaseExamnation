using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Student_StudentExamCheckvalidorinvalid : System.Web.UI.Page
{

    DALExam objexamcheck = new DALExam();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["User"] == null)
        {
             Response.Redirect("~/Login.aspx");
        }
        try
        {
            if (!IsPostBack)
            {
                DataSet ds = objexamcheck.ShowExamRequestDetails(Convert.ToInt32(Session["ExamId"]), Convert.ToInt32(Session["ExamRequestId"]));
                if (ds.Tables[0].Rows.Count != 0)
                {
                    TextBox1.Text = ds.Tables[0].Rows[0][4].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0][2].ToString();
                    ViewState["status"] = ds.Tables[0].Rows[0][8];
                    ViewState["KeyCode"] = ds.Tables[0].Rows[0][6];
                }
            }
        }
        catch (Exception ex)
        {
             Label1.Text = ex.Message;
        }
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string date = DateTime.Now.Date.ToShortDateString().ToString();
            if (TextBox1.Text == date)
            {
                if (Convert.ToBoolean(ViewState["status"]) == false && TextBox3.Text == ViewState["KeyCode"].ToString())
                {
                    Response.Redirect("StudentExaminationPaper.aspx?Examid=" + Convert.ToInt32(Session["ExamId"]));
                }
                else
                {
                    Label1.Text = "Already Exam is Attend ..So Attend Another Exam... ";
                }
            }
            else
            {
                Label1.Text = "Sorry Today Not Available in this  Exam ..."+date;
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}