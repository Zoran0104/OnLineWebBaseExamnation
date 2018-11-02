using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DALExam
/// </summary>
public class DALExam
{
    string conn = ConfigurationManager.ConnectionStrings["OnlineWebBasedExam"].ConnectionString;
    public DALExam()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int InsertExamType(string a, string b, string c)
    {
        SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlCommand cmd = new SqlCommand("InsertExamType", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a", a);
        cmd.Parameters.AddWithValue("@b", b);
        cmd.Parameters.AddWithValue("@c", c);
        return cmd.ExecuteNonQuery();
    }
    public int InsertExams(string a, string b, string c, int d, string e, int f, int g)
    {
        SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlCommand cmd = new SqlCommand("InsertExams", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a", a);
        cmd.Parameters.AddWithValue("@b", b);
        cmd.Parameters.AddWithValue("@c", c);
        cmd.Parameters.AddWithValue("@d", d);
        cmd.Parameters.AddWithValue("@e", e);
        cmd.Parameters.AddWithValue("@f", f);
        cmd.Parameters.AddWithValue("@g", g);
        return cmd.ExecuteNonQuery();
    }
    public int UpdateExams(string a, string b, string c, int d, int e)
    {
        SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlCommand cmd = new SqlCommand("UpdateExams", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a", a);
        cmd.Parameters.AddWithValue("@b", b);
        cmd.Parameters.AddWithValue("@c", c);
        cmd.Parameters.AddWithValue("@d", d);
        cmd.Parameters.AddWithValue("@e", e);

        return cmd.ExecuteNonQuery();
    }

    public DataSet ReadExamType()
    {
        SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlDataAdapter dr = new SqlDataAdapter("ReadExamType", cn);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        return ds;

    }
    public DataSet ReadExamName()
    {
        SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlDataAdapter dr = new SqlDataAdapter("ReadExamName", cn);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        return ds;

    }
    public int InsertQustions(int a, string b, string c, string d, string e, string f, string g, int h)
    {
        SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlCommand cmd = new SqlCommand("InsertQustions", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a", a);
        cmd.Parameters.AddWithValue("@b", b);
        cmd.Parameters.AddWithValue("@c", c);
        cmd.Parameters.AddWithValue("@d", d);
        cmd.Parameters.AddWithValue("@e", e);
        cmd.Parameters.AddWithValue("@f", f);
        cmd.Parameters.AddWithValue("@g", g);
        cmd.Parameters.AddWithValue("@h", h);
        return cmd.ExecuteNonQuery();
    }
    public DataSet QustionBind(int exid)
    {

        try
        {
          SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlDataAdapter dr = new SqlDataAdapter("QustionBinda", cn);
        SqlCommand cmd = new SqlCommand("QustionBinda", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a", exid);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
      
    }
    public int QustionUpdating(int ExamId, string Qustion, string answer1, string answer2, string answer3, string answer4, string correctanswer, int mark)
    {



        try
        {
          SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlCommand cmd = new SqlCommand("QustionUpdating", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a", Qustion);
        cmd.Parameters.AddWithValue("@b", answer1);
        cmd.Parameters.AddWithValue("@c", answer2);
        cmd.Parameters.AddWithValue("@d", answer3);
        cmd.Parameters.AddWithValue("@e", answer4);
        cmd.Parameters.AddWithValue("@f", correctanswer);
        cmd.Parameters.AddWithValue("@g", mark);
        cmd.Parameters.AddWithValue("@h", ExamId);
        return cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
      
    }
    public DataSet gettblExamRequest()
    {

        try
        {
         SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        string s = "select * from ExamRequst where Status = 0";
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataAdapter dr = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
       
    }
    public DataSet getNotAttemptedExamId(int examtypeid)
    {

        try
        { 
          string s = "Select ExamId,ExamName from  Exams where Status=0 and ExamTypeId=" + examtypeid;
        SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataAdapter dr = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        return ds;

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
       
    }
    public int InsertScheduleExam(int Userid, int ExamId, string date, string dateofexam, int examrequstid, string keycode, string userName, int status)
    {


        try
        {
          string s = "insert into SeduleExam values('" + Userid + "','" + ExamId + "','" + date + "','" + dateofexam + "','" + examrequstid + "','" + keycode + "','" + userName + "','" + status + "')";
        SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlCommand cmd = new SqlCommand(s, cn);
        return cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
       
    }
    public DataSet GetStudentReport()
    {
         try
        {
        SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlDataAdapter dr = new SqlDataAdapter("GetStudentReport", cn);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        return ds;
        }
         catch (Exception ex)
         {
             throw new ArgumentException(ex.Message);
         }
      
    }

    public DataSet getExamTypeName()
    {
        try
        {
            string s = "Select ExamTypeName , ExamTypeId from ExamType";
            SqlConnection cn = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dr.Fill(ds);
            return ds;

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public DataSet getExamName(string id)
    {
        try
        {
            string s = "Select ExamName , ExamId from  Exams where ExamTypeId='" + id + "'";
            SqlConnection cn = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dr.Fill(ds);
            return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }


    public int InsertExamRequest(int Userid, string Dateofreg, int ExamTypeid, int examid, int status, string perfd)
    {
        string ss = "insert into ExamRequst values('" + Userid + "','" + Dateofreg + "','" + ExamTypeid + "','" + examid + "','" + status + "','" + perfd + "')";
        SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlCommand cmd = new SqlCommand(ss, cn);
        return cmd.ExecuteNonQuery();
    }
    public DataSet GetCheckStatus(int UserId)
    {
        try
        {
            string s = "select * from ExamRequst er,Exams ex where er.ExamId=ex.ExamId and er.UserId=" + UserId; ;
            SqlConnection cn = new SqlConnection(conn);
             SqlDataAdapter dr = new SqlDataAdapter(s, cn );
            DataSet ds = new DataSet();
            dr.Fill(ds);
            return ds;

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public DataSet ShowExamRequestDetails(int id, int reqid)
    {
        string s ="select * from SeduleExam where ExamId=" + id + " and ExamRequstId="+reqid;
        SqlConnection cn = new SqlConnection(conn);
        cn.Open();
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataAdapter dr = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        return ds;
    }

}