using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_StudentExamSucesspaper : System.Web.UI.Page
{
    static int ExamId;
    static string UserName;
    DALQuestionPaper objresult = new DALQuestionPaper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["User"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }

        UserName = Session["user"].ToString();
        ExamId = Convert.ToInt32(Request["Examid"]);

        gridresult.DataSource = objresult.DisplayResult(ExamId, Convert.ToInt32(UserName));
        gridresult.DataBind();
    }
    protected void gridresult_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}