using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DALLogin
/// </summary>
public class DALLogin
{
    string conString = ConfigurationManager.ConnectionStrings["OnlineWebBasedExam"].ConnectionString;

    public DALLogin()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public SqlDataReader adminlogin(string username, string password)
    {
        SqlConnection cn = new SqlConnection(conString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("AdminLogin", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@password", password);
        return cmd.ExecuteReader();
    }
    public int changpass(string user, string pass, string newpass)
    {
        SqlConnection cn = new SqlConnection(conString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("UpdatePassword", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@b", pass);
        cmd.Parameters.AddWithValue("@a", user);
        cmd.Parameters.AddWithValue("@c", newpass);
        return cmd.ExecuteNonQuery();
    }
    public SqlDataReader forgotePasswordous(string qus, string ans, string un)
    {
        SqlConnection cn = new SqlConnection(conString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("FindPasswerd", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a", qus);
        cmd.Parameters.AddWithValue("@b", ans);
        cmd.Parameters.AddWithValue("@c", un);

        return cmd.ExecuteReader();
    }
}