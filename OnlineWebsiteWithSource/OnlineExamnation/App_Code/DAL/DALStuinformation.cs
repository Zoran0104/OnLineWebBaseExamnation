using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DALStuinformation
/// </summary>
public class DALStuinformation
{
    string conString = ConfigurationManager.ConnectionStrings["OnlineWebBasedExam"].ConnectionString;

	public DALStuinformation()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public  SqlDataReader getinfostu(int username)
    {
       SqlConnection cn = new SqlConnection(conString);
       cn.Open();
       SqlCommand cmd = new SqlCommand("UserDatails", cn);
       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.AddWithValue("@a", username);
       return cmd.ExecuteReader();
    }
    public int stuupdate( string a,string b,string c,string d,string e,  int userid)
    {
        SqlConnection cn = new SqlConnection(conString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("UpdateUserDatails", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@i", userid);
        cmd.Parameters.AddWithValue("@a", a);
        cmd.Parameters.AddWithValue("@b", b);
        cmd.Parameters.AddWithValue("@c", c);
        cmd.Parameters.AddWithValue("@d", d);
        cmd.Parameters.AddWithValue("@e", e);
        
        return  cmd.ExecuteNonQuery();
    }
    public int AddNewUser(string pass, string sq, string sans,string stat,string roll,string Username)
    {
        SqlConnection cn = new SqlConnection(conString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("CreatAccount1", cn);
        cmd.CommandType = CommandType.StoredProcedure;
         cmd.Parameters.AddWithValue("@a", pass);
        cmd.Parameters.AddWithValue("@b", sq);
        cmd.Parameters.AddWithValue("@c", sans);
        cmd.Parameters.AddWithValue("@e", roll);
        cmd.Parameters.AddWithValue("@d", stat);
        cmd.Parameters.AddWithValue("@f", Username);

        return cmd.ExecuteNonQuery();
    }
    public SqlDataReader SelectId(string a, string b)
    {
        SqlConnection cn = new SqlConnection(conString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("SelectId", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a", a);
        cmd.Parameters.AddWithValue("@b", b);
        return cmd.ExecuteReader();
    }
    public int AddNewUser1(int id ,string FName , string LName ,string dob ,string dor ,string cont,string address)
    {
        SqlConnection cn = new SqlConnection(conString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("CreatAccount2", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a",id);
        cmd.Parameters.AddWithValue("@b", FName);
        cmd.Parameters.AddWithValue("@c", LName);
        cmd.Parameters.AddWithValue("@d",  dob);
        cmd.Parameters.AddWithValue("@e", dor);
        cmd.Parameters.AddWithValue("@f", cont);
        cmd.Parameters.AddWithValue("@g", address);
         return cmd.ExecuteNonQuery();
    }
    public SqlDataReader matchstudant(string usernam , string pass)
    {
        SqlConnection cn = new SqlConnection(conString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("matchstu", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a", usernam);
        cmd.Parameters.AddWithValue("@b", pass);
        return cmd.ExecuteReader();
    }
}