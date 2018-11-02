using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BALLogin
/// </summary>
public class BALLogin
{
    DALLogin DALLoginObj = new DALLogin();
	public BALLogin()
	{
		//
		// TODO: Add constructor logic here
		//
	}
  
    public SqlDataReader forgotePasswordou(string qus ,string ans,string un)
    {
        return DALLoginObj.forgotePasswordous(qus, ans ,un);
    }
    string username, password, newpassw;

    public string New_Password
    {
        get { return newpassw; }
        set { newpassw = value; }
    }
  
    public string Password
    {
        get { return password; }
        set { password = value; }
    }

    public string User_name
    {
        get { return username; }
        set { username = value; }
    }

    public SqlDataReader UserLogin()
    {
       return  DALLoginObj.adminlogin(username, password);
    }
    public SqlDataReader matchPass()
    {
        return DALLoginObj.adminlogin(username, password);
    }
    public int changepass()
    {
        return DALLoginObj.changpass(username, password, newpassw);
    }
    
}