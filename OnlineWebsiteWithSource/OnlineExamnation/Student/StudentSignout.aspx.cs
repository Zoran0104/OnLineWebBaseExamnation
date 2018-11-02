using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_StudentSignout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["User"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        try
        {
            Session.Remove("User");
            Session.Abandon();

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {

            Response.Redirect("~/index.aspx");
        }
        catch (Exception ex)
        {
            //throw new ArgumentException(ex.Message);
        }
    }
}