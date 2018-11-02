using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for DALQuestionPaper
/// </summary>
public class DALQuestionPaper
{
    string con = ConfigurationManager.ConnectionStrings["OnlineWebBasedExam"].ConnectionString;
  
	public DALQuestionPaper()
	{
		 
	}
    public  DataSet ShowExaminationAllDetails(int id)
    {
        SqlConnection cn = new SqlConnection(con);
        cn.Open();
        SqlCommand cmd = new SqlCommand("SelectExaminationdetails", cn);
        SqlDataAdapter dr = new SqlDataAdapter(cmd);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", id);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        return ds;
    }
    public SqlDataReader FindQuestions(int id)
    {
        try
        {
            SqlConnection cn = new SqlConnection(con);
            cn.Open();
            SqlCommand cmd = new SqlCommand("FindNoOfQuestions", cn);
             cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            return  cmd.ExecuteReader();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public int InsertStudentExaminationDetails(int ExamId, int QustionSno, string Answer,int CorrectOrWrong)
    {

        SqlConnection cn = new SqlConnection(con);
        cn.Open();
        SqlCommand cmd = new SqlCommand("ExamDetail_Insert", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a", ExamId);
        cmd.Parameters.AddWithValue("@b", QustionSno);
        cmd.Parameters.AddWithValue("@c", Answer);
        cmd.Parameters.AddWithValue("@d", CorrectOrWrong);
        return cmd.ExecuteNonQuery();
    }
    public int InsertstudentResults(int UserId, int Examid, int NoOfQuestion, int CorrectAnswers, int WrongAnswers, int Attempted, int NetScore, string TimeTaken ,string ExamAttendDate)
    {
        try
        {

            SqlConnection cn = new SqlConnection(con);
            cn.Open();
            SqlCommand cmd = new SqlCommand("InsertResult", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a",UserId);
            cmd.Parameters.AddWithValue("@b",Examid);
            cmd.Parameters.AddWithValue("@c", NoOfQuestion);
            cmd.Parameters.AddWithValue("@d", CorrectAnswers);
            cmd.Parameters.AddWithValue("@e", WrongAnswers);
            cmd.Parameters.AddWithValue("@f", Attempted);
            cmd.Parameters.AddWithValue("@g", NetScore);
            cmd.Parameters.AddWithValue("@h", TimeTaken);
            cmd.Parameters.AddWithValue("@i", ExamAttendDate);
           
            return cmd.ExecuteNonQuery();

            }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public SqlDataReader GetIsNegMarking(int examid)
    {
        try
        {
            string s = "select NegativeMarking from Exams where Examid=" + examid;
             SqlConnection cn = new SqlConnection(con);
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            return  cmd.ExecuteReader();

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }


    public DataSet DisplayResult(int id,int UserId)
    {
        try
        {



            SqlConnection cn = new SqlConnection(con);
            cn.Open();
            SqlCommand cmd = new SqlCommand("DisplayResults", cn);
            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@UserId", UserId);
            DataSet ds = new DataSet();
            dr.Fill(ds);
            return ds;

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    //public DataSet DisplayResult(int id)
    //{
    //    try
    //    {

           

    //        SqlConnection cn = new SqlConnection(con);
    //        cn.Open();
    //        SqlCommand cmd = new SqlCommand("DisplayResult", cn);
    //        SqlDataAdapter dr = new SqlDataAdapter(cmd);
    //        cmd.CommandType = CommandType.StoredProcedure;
    //        cmd.Parameters.AddWithValue("@id", id);
    //        DataSet ds = new DataSet();
    //        dr.Fill(ds);
    //        return ds;

    //      }
    //    catch (Exception ex)
    //    {
    //        throw new ArgumentException(ex.Message);
    //    }
    //}
}