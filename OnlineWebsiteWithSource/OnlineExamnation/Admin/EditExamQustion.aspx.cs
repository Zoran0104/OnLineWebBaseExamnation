using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_EditExamQustion : System.Web.UI.Page
{
    BALExam obj = new BALExam();
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void ClearData()
    {
        txtQuestion.Text = txtAnswerA.Text = txtAnswerB.Text = txtAnswerC.Text = txtAnswerD.Text = "";
        txtCorrectAnswer.Text = txtMarksforQuestion.Text = "";
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

    }
   
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
                 int i = obj.InsertQustions(Convert.ToInt32(ddlExamId.SelectedValue.ToString()), txtQuestion.Text, txtAnswerA.Text, txtAnswerB.Text, txtAnswerC.Text, txtAnswerD.Text, txtCorrectAnswer.Text, Convert.ToInt32(txtMarksforQuestion.Text));
                if (i > 0)
                {
                    ClearData();
                  
                    lblMsg.Text = "Qustion Inserted SuccessFull.....";
                    lblMsg.ForeColor  = System.Drawing.Color.Blue;
                }
                else
                {
                    lblMsg.Text = "Erroe Inserting Qustions.......";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                }

             
         
        }
        catch (Exception ex)
        {
            lblMsg.Text ="!  Select Exam Name  Or  "+ ex.Message;
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void ddlExamId_DataBound(object sender, EventArgs e)
    {
        ddlExamId.Items.Insert(0, "---Select---");
    }
    protected void ddlExamId_SelectedIndexChanged(object sender, EventArgs e)
    {
    
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        
        try
        {
           if (ddlExamId.Text == "---Select---")
        {
            lblMsg.Text = "Select Exam Name To edit ......";
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
             Response.Redirect("UpdateExamQustion.aspx?id="+Convert.ToInt32(ddlExamId.SelectedValue.ToString()));
        }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
        
    }
}