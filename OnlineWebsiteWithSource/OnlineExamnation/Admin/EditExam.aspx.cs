using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_EditExam : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["OnlineWebBasedExam"].ConnectionString;

    BALExam obj = new BALExam();
    DALExam ObjDal = new DALExam();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        if (!IsPostBack)
        {
            gvExamName.Visible = true;
            gvExamName.EditIndex = -1;
             DataBindaa();
        }
    }
    void DataBindaa()
    {
        DataSet ds = ObjDal.ReadExamName();
        gvExamName .DataSource = ds;
        gvExamName.DataBind();
    }
    protected void gvExamName_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvExamName_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            TextBox t, t1, t2, t3, t4;
            DropDownList d1;
            Label lExamid = (Label)gvExamName.Rows[e.RowIndex].FindControl("EtbExamId");

            t = (TextBox)gvExamName.Rows[e.RowIndex].FindControl("etbExamName");
            t1 = (TextBox)gvExamName.Rows[e.RowIndex].FindControl("etbDescription");
            t2 = (TextBox)gvExamName.Rows[e.RowIndex].FindControl("etbDOR");
            t3 = (TextBox)gvExamName.Rows[e.RowIndex].FindControl("etbNoOfQuestions");
            d1 = (DropDownList)gvExamName.Rows[e.RowIndex].FindControl("ddletbNegativeMarking");

            int j = obj.UpdateExams(t.Text,t1.Text,t2.Text,Convert.ToInt32(t3.Text),Convert.ToInt32(lExamid.Text));
             if (j > 0)
            {
                gvExamName.EditIndex = -1;
                DataBindaa();
                lblMsg.Text = "Record updated";
            }
            else
            {
                gvExamName.EditIndex = -1;
               lblMsg.Text = "Error !...";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void gvExamName_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {

        gvExamName.EditIndex = -1;
        DataBindaa();
    }
    protected void gvExamName_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        try
        {
            int ExamId;
            Label l1 = (Label)(gvExamName.Rows[e.RowIndex].FindControl("itExamId"));
            ExamId = Convert.ToInt32(l1.Text);
         string s = "delete Exams where ExamId = '" + ExamId + "'";
         SqlConnection con = new SqlConnection(conn);
         SqlCommand cmd = new SqlCommand(s, con);
         con.Open();
        int j =  cmd.ExecuteNonQuery();
        con.Close();
        gvExamName.EditIndex = -1;
        DataBindaa();

            if (j > 0)
            {
                DataBindaa();
                lblMsg.Text = "Record Deleted Successfully";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
       
    }
    protected void gvExamName_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvExamName.EditIndex = e.NewEditIndex;
        DataBindaa();
    }
}