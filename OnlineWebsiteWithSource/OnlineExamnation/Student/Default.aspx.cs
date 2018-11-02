using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null && Session["User"] !=null)
        {
            Label1.Text = Session["UserName"].ToString();
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }    
    }
}