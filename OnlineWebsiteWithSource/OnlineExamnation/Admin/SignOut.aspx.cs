using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SignOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            Session.Remove("Admin");
        }
        catch (Exception ex)
        {
            LinkButton1.Text = ex.Message;
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
            LinkButton1.Text = ex.Message;
        }
    }
}