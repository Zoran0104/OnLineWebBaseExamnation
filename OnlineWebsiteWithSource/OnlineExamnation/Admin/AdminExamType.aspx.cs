using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AdminExamType : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["OnlineWebBasedExam"].ConnectionString;
	
    BALExam obj = new BALExam();
    DALExam ObjDal = new DALExam();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        if (!IsPostBack)
        {
            gvExamType.EditIndex = -1;
             DataBinda();
        }
        
    }
    void DataBinda()
    {
         DataSet ds =  ObjDal.ReadExamType();
          gvExamType.DataSource = ds;
          gvExamType.DataBind();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
         int i = obj.InsertExamType(txtExamTypeId.Text, txtDescription.Text, DateTime.Now.Date.ToShortDateString().ToString());
         if (i > 0)
         {
             DataBinda();
             lblMsg.Text = "ExamType Add successfull ...";
         }
         else
         {
             lblMsg.Text = "Failed......";
         }
    }
    void ClearData()
    {
        try
        {
            txtExamTypeId.Text = "";
            txtDescription.Text = "";
            lblMsg.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }

    protected void tbEdit_Click(object sender, EventArgs e)
    {
        gvExamType.Visible = true;
        DataBinda();
    }
    protected void gvExamType_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        gvExamType.EditIndex = e.NewEditIndex;
        DataBinda();
    }
    protected void gvExamType_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        gvExamType.EditIndex = -1;
        DataBinda();
    }
    protected void gvExamType_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
       
       // int ExamTypeId = 0;
        TextBox t, t1, t2, t3, t4;
        Label lExamNo = (Label)gvExamType.Rows[e.RowIndex].FindControl("EtbExamTypeId");

        t = (TextBox)gvExamType.Rows[e.RowIndex].FindControl("etbExamTypeName");
        t1 = (TextBox)gvExamType.Rows[e.RowIndex].FindControl("etbDescription");
        t2 = (TextBox)gvExamType.Rows[e.RowIndex].FindControl("etbDate");
         string s = "Update ExamType set ExamTypeName='" + t.Text + "', Description='" + t1.Text + "', Date='" + t2.Text + "' where ExamTypeId=" + lExamNo.Text; ;
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand(s, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        gvExamType.EditIndex = -1;
        DataBinda();
    }
    protected void gvExamType_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {

        int ExamId;
        Label l1 = (Label)(gvExamType.Rows[e.RowIndex].FindControl("itExamId"));
        ExamId = Convert.ToInt32(l1.Text);

        string  ExamTypeId =  gvExamType.Rows[e.RowIndex].Cells[1].Text;
        string s = "delete ExamType where ExamTypeId = '" + ExamId+"'";
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand(s, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        gvExamType.EditIndex = -1;
        DataBinda();
    }
    protected void txtDescription_TextChanged(object sender, EventArgs e)
    {

    }
}