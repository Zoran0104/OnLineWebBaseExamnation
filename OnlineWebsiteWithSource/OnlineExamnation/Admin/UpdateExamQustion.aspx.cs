using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_UpdateExamQustion : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["OnlineWebBasedExam"].ConnectionString;
    int id;
    DALExam OBJDAL = new DALExam();
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32( Request["id"]);
       if(!IsPostBack)
        {
            QustionBind();
            gvExamQuestion.Visible = true;
        }
    }
    void QustionBind()
    {
        string s = "select * from ExamQustion where ExamId ='"+id+"'";
        SqlConnection cn = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataAdapter dr = new SqlDataAdapter(cmd);
         DataSet ds = new DataSet();
        dr.Fill(ds);
         gvExamQuestion.DataSource = ds;
        gvExamQuestion.DataBind();

    }
    protected void gvExamQuestion_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvExamQuestion_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvExamQuestion.EditIndex = -1;
        QustionBind();
    }
    protected void gvExamQuestion_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
          int l1 = Convert.ToInt32(gvExamQuestion.Rows[e.RowIndex].Cells[0].Text);

        string s = "delete from ExamQustion where  ExamId = '" + l1 + "'";
        SqlConnection cn = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand(s, cn);
        cn.Open();
       int i = cmd.ExecuteNonQuery();
       if (i > 0)
       {
           QustionBind();
           gvExamQuestion.EditIndex = -1;
       }
       else
       {

       }

    }
    protected void gvExamQuestion_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvExamQuestion.EditIndex = e.NewEditIndex;
        QustionBind();
    }
    protected void gvExamQuestion_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        DALExam objdal = new DALExam();
        Label l1 = (Label)gvExamQuestion.Rows[e.RowIndex].FindControl("EtbExamId");
        TextBox t, t1, t2, t3 ,t4,t5,t6;
        t = (TextBox)gvExamQuestion.Rows[e.RowIndex].FindControl("etbQuestionText");
        t1 = (TextBox)gvExamQuestion.Rows[e.RowIndex].FindControl("etbAnswer1");
        t2 = (TextBox)gvExamQuestion.Rows[e.RowIndex].FindControl("etbAnswer2");
        t3 = (TextBox)gvExamQuestion.Rows[e.RowIndex].FindControl("etbAnswer3");
        t4 = (TextBox)gvExamQuestion.Rows[e.RowIndex].FindControl("etbAnswer4");
        t5 = (TextBox)gvExamQuestion.Rows[e.RowIndex].FindControl("etbCorrectAnswer");
        t6 = (TextBox)gvExamQuestion.Rows[e.RowIndex].FindControl("etbMarksfortheQuestion");

       int i =  objdal.QustionUpdating(Convert.ToInt32(l1.Text), t.Text, t1.Text, t2.Text, t3.Text, t4.Text, t5.Text, Convert.ToInt32(t6.Text));
       if (i > 0)
       {
           
           gvExamQuestion.EditIndex = -1;
           QustionBind();
       }
       else
       {
           gvExamQuestion.EditIndex = -1;
       }
     }
}