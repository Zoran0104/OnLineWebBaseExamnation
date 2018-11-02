using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_studentReport : System.Web.UI.Page
{
    DALExam objDAL = new DALExam();
    protected void Page_Load(object sender, EventArgs e)
    {
        Gvrpt.DataSource = objDAL.GetStudentReport();
        Gvrpt.DataBind();
    }
}