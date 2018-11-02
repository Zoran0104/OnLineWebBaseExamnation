using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Exams : System.Web.UI.Page
{
    BALExam obj = new BALExam();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   void  cleartext()
    {
        txtDescription.Text = "";
        txtExamName.Text = "";
        txtNoOfQues.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

     int i =   obj.InsertExams(txtExamName.Text, txtDescription.Text, DateTime.Now.Date.ToShortDateString().ToString(), Convert.ToInt32(txtNoOfQues.Text),DropDownList1.Text  , Convert.ToInt32(ddlExamTypeId.SelectedValue.ToString()), 0);
     if (i > 0)
     {
         cleartext();
         lblMsg.Text = "Insert Successfull .....";
     }
     else
     {
         lblMsg.Text = "Failed....";
     }
    }
    protected void ddlExamTypeId_DataBound(object sender, EventArgs e)
    {
        
        ddlExamTypeId.Items.Insert(0, "Select");
    }
    protected void tbEdit_Click(object sender, EventArgs e)
    {
       Server.Transfer("EditExam.aspx");
    }
}