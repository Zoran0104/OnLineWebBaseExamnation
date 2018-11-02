using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Student_StudentExaminationPaper : System.Web.UI.Page
{

    static string IsNegCheckval;
    static string text;
    static int id, marks;
    decimal NegMarks;
   DALQuestionPaper objexamdetails = new DALQuestionPaper();
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
                IsNegCheckval = "";
                id = Convert.ToInt32(Request["Examid"]);
                calculate();
                IsNegCheck();
                GridView1.DataSource = objexamdetails.ShowExaminationAllDetails(id);
                GridView1.DataBind();
                lblStartTime.Text = DateTime.Now.ToLongTimeString().ToString();
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    static int NoOfQues;
    public void calculate()
    {
      SqlDataReader dr =  objexamdetails.FindQuestions(id);
      if (dr.Read())
      {
       NoOfQues =Convert.ToInt32( dr["NoOfQustion"].ToString());
      }
       
    }

    RadioButton r1, r2, r3, r4;
    Label lblCorrectAnswer, lblNoMarks, lblQuestionID;
    static int attemptcount, correctAnsCount, wrongAnsCount;
    public void Submit_Click(object sender, EventArgs e)
    {
        try
        {
            lblEndTime.Text = DateTime.Now.ToLongTimeString().ToString();
            DateTime dt = DateTime.Parse(lblStartTime.Text);
            DateTime dt2 = DateTime.Parse(lblEndTime.Text);
            Session["timediff"] = dt2.Subtract(dt);
            lblFinalTime.Text = Session["timediff"].ToString() + " Min";
            attemptcount = correctAnsCount = wrongAnsCount = marks = 0;
            foreach (GridViewRow item in GridView1.Rows)
            {
                text = "Noanswers";
                lblCorrectAnswer = (Label)item.FindControl("lblcorrectAnswer");
                lblNoMarks = (Label)item.FindControl("lblNoofmarks");
                lblQuestionID = (Label)item.FindControl("lblQuestionId");
                r1 = (RadioButton)item.FindControl("RadioButton1");
                r2 = (RadioButton)item.FindControl("RadioButton2");
                r3 = (RadioButton)item.FindControl("RadioButton3");
                r4 = (RadioButton)item.FindControl("RadioButton4");

                if (r1.Checked || r2.Checked || r3.Checked || r4.Checked)
                {
                    if (r1.Checked)
                    {
                        text = r1.Text;
                    }
                    if (r2.Checked)
                    {
                        text = r2.Text;
                    }
                    if (r3.Checked)
                    {
                        text = r3.Text;
                    }
                    if (r4.Checked)
                    {
                        text = r4.Text;
                    }
                    attemptcount = attemptcount + 1;

                    if (IsNegCheckval == "Yes")
                    {
                        if (lblCorrectAnswer.Text == text)
                        {
                            objexamdetails.InsertStudentExaminationDetails(id,Convert.ToInt32(lblQuestionID.Text) , text, 1);
                            marks += Convert.ToInt32(lblNoMarks.Text);
                            correctAnsCount += 1;
                        }
                        else
                        {
                            objexamdetails.InsertStudentExaminationDetails(id, Convert.ToInt32(lblQuestionID.Text), text, 0);
                            wrongAnsCount += 1;
                            marks = marks - Convert.ToInt32(0.25);
                        }
                    }
                    else
                    {
                        if (lblCorrectAnswer.Text == text)
                        {
                            objexamdetails.InsertStudentExaminationDetails(id, Convert.ToInt32(lblQuestionID.Text), text, 1);
                            marks += Convert.ToInt32(lblNoMarks.Text);
                            correctAnsCount += 1;
                        }
                        else
                        {
                            objexamdetails.InsertStudentExaminationDetails(id, Convert.ToInt32(lblQuestionID.Text), text, 0);
                            wrongAnsCount += 1;
                        }
                    }
                }
                else
                {
                    objexamdetails.InsertStudentExaminationDetails(id, Convert.ToInt32(lblQuestionID.Text), text, 0);
                }
            }
            InsertResult();
            Response.Redirect("~/Student/StudentExamSucesspaper.aspx?Examid=" + Convert.ToInt32(Session["ExamId"]));
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            Response.Redirect("~/Student/StudentExamSucesspaper.aspx?Examid=" + Convert.ToInt32(Session["ExamId"]));
        }
    }
    public void InsertResult()
    {
         objexamdetails.InsertstudentResults(Convert.ToInt32(Session["User"].ToString()), id,NoOfQues,correctAnsCount,wrongAnsCount,attemptcount,marks,Session["timediff"].ToString(),DateTime.Now.ToShortDateString().ToString());
    }
    public void IsNegCheck()
    {
        SqlDataReader ds = objexamdetails.GetIsNegMarking(id);

        if (ds.Read())
        {
            
            if(ds["NegativeMarking"].ToString()=="Yes")
            {
                IsNegCheckval = "Yes";
            }
        }
        else
        {
             lblMessage.Text   = "No Data In the Table";
        }
    }
 
}