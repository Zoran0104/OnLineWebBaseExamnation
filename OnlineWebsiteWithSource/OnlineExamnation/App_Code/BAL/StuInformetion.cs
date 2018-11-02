using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for StuInformetion
/// </summary>
public class StuInformetion
{
    DALStuinformation obj = new DALStuinformation();
	public StuInformetion()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string userid, username, fristname, lastname, dob, dor, conn, address, pass, sq, sa, status, roll;

    public string Roll
    {
        get { return roll; }
        set { roll = value; }
    }

    public string Status
    {
        get { return status; }
        set { status = value; }
    }

    public string Sa
    {
        get { return sa; }
        set { sa = value; }
    }

    public string Sq
    {
        get { return sq; }
        set { sq = value; }
    }

    public string Password
    {
        get { return pass; }
        set { pass = value; }
    }

    public string Address
    {
        get { return address; }
        set { address = value; }
    }

    public string Contect_No
    {
        get { return conn; }
        set { conn = value; }
    }

    public string Date_Of_Registation
    {
        get { return dor; }
        set { dor = value; }
    }

    public string Date_Of_Birth
    {
        get { return dob; }
        set { dob = value; }
    }

    public string Last_name
    {
        get { return lastname; }
        set { lastname = value; }
    }

    public string Frist_name
    {
        get { return fristname; }
        set { fristname = value; }
    }

    public string Username
    {
        get { return username; }
        set { username = value; }
    }

    public string Userid
    {
        get { return userid; }
        set { userid = value; }
    }
    int id;

    public int User_Id
    {
        get { return id; }
        set { id = value; }
    }
    public SqlDataReader selectdata()
    {
        return obj.getinfostu(id);
    }
    public int UpdateStu()
    {
        
        return obj.stuupdate(fristname, lastname, dob, conn, address, id);
    }
    public int AddNewUser()
    {
        return obj.AddNewUser(pass, sq, sa, status, roll, username);
    }
    public SqlDataReader SelectId()
    {
        return obj.SelectId(username, pass);
    }
    public int AddUser1()
    {
        return obj.AddNewUser1(id, fristname, lastname, dob, dor, conn, address);  
    }
    public SqlDataReader matchStu(string usernam , string password)
    {
        return obj.matchstudant(usernam, password);
    }
}