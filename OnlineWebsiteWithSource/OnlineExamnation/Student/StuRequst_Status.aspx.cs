using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_StuRequst_Status : System.Web.UI.Page
{
    DALExam objCheckStatus = new DALExam();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["User"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                fillgrid();
            }
        }
    }
    public void fillgrid()
    {
         GridView1.DataSource = objCheckStatus.GetCheckStatus(Convert.ToInt32( Session["User"].ToString()));
         GridView1.DataBind();
    }
    protected void Gridview1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            Session["ExamId"] = Convert.ToInt32(GridView1.Rows[e.NewEditIndex].Cells[0].Text);
            Session["ExamRequestId"] = Convert.ToInt32(GridView1.Rows[e.NewEditIndex].Cells[1].Text);
            Response.Redirect("StudentExamCheckvalidorinvalid.aspx");
        }
        catch (Exception ex)
        {
        //  Label1.Text = "No Data Avaliable";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}