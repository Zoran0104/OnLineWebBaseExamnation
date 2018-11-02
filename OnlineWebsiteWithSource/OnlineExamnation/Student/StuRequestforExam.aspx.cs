using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Student_StuRequestforExam : System.Web.UI.Page
{
     string conn = ConfigurationManager.ConnectionStrings["OnlineWebBasedExam"].ConnectionString;
	
    DALExam examdaterequest = new DALExam();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["User"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string dat = DateTime.Now.Date.ToShortDateString().ToString();
                int i = examdaterequest.InsertExamRequest(Convert.ToInt32(Session["User"].ToString()), dat, Convert.ToInt32(ddlExamTypeName.SelectedValue), Convert.ToInt32(ddlExamName.SelectedValue), 0, TextBox1.Text);
                if (i > 0)
                {
                    ClearData();
                    lblMsg.Text = "Exam Requst Sent SuccessFull Wait For Responce...";

                }
                else
                {
                    lblMsg.Text = "Exam Requst sending Faill Try Again......";
                }
           
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message+" \n  Chack Your Details...";
        }
    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    private void ClearData()
    {
       TextBox1.Text = "";
        
    }

    protected void ddlExamTypeName_DataBound(object sender, EventArgs e)
    {
        ddlExamTypeName.Items.Insert(0, "--Select--");
    }
    public void fillddlExamTypeName()
    {
        ddlExamName.DataSource = examdaterequest.getExamTypeName();
        ddlExamName.DataBind();
        ddlExamName.DataValueField = "ExamTypeId";
        ddlExamName.DataTextField = "ExamTypeName";
    }
    protected void ddlExamTypeName_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlExamTypeName.SelectedItem.ToString() != "--Select--")
        {
            ddlExamName.DataSource = examdaterequest.getExamName(ddlExamTypeName.SelectedValue);
            ddlExamName.DataValueField = "ExamId";
            ddlExamName.DataTextField = "ExamName";
            ddlExamName.DataBind();
        }
        else
        {
            lblMsg.Text = "Must Select Any One..";
        }
    }


    protected void ddlExamName_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlExamName_DataBound(object sender, EventArgs e)
    {

    }
}