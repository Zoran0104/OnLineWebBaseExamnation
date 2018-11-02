using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ShowExamRequest : System.Web.UI.Page
{
     DALExam schedule  = new DALExam();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GVScheduleExam.Visible = true;
            fillgrid();
        }
    }
    public void fillgrid()
    {
        GVScheduleExam.DataSource = schedule.gettblExamRequest();
        GVScheduleExam.DataBind();
    }
    static int id;
    static string preferdate;
    static int examtypeid;
    static int ExamRequestId;
    protected void GVScheduleExam_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
    protected void GVScheduleExam_RowEditing(object sender, GridViewEditEventArgs e)
    {
        id = Convert.ToInt32(GVScheduleExam.Rows[e.NewEditIndex].Cells[0].Text);
        preferdate = GVScheduleExam.Rows[e.NewEditIndex].Cells[1].Text;
        examtypeid = Convert.ToInt32(GVScheduleExam.Rows[e.NewEditIndex].Cells[2].Text);
        ExamRequestId = Convert.ToInt32(GVScheduleExam.Rows[e.NewEditIndex].Cells[3].Text);
        Session["preferdate"] = preferdate;
        Session["uid"] = id;
        Session["examtypeid"] = examtypeid;
        Session["ExamRequestId"] = ExamRequestId;
        Response.Redirect("ExamSchedule.aspx");
    }
}