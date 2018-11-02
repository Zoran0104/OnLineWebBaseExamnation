using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BALExam
/// </summary>
public class BALExam
{
    DALExam obj = new DALExam();
	public BALExam()
	{
		//
		// TODO: Add constructor logic here
		//
	}
  
    public int InsertExamType(string examTypeName ,string description,string date)
    {
        return obj.InsertExamType(examTypeName, description, date);
    }
    public int InsertExams(string ExamName, string Descriptionex, string DOR, int NoOfQustion, string Negative, int ExamTypeId, int Status)
    {
        return obj.InsertExams(ExamName, Descriptionex, DOR, NoOfQustion, Negative, ExamTypeId, Status);
    }
    public int UpdateExams(string ExamName ,string Description ,string DOR , int NegativeM ,int Id)
    {
      return   obj.UpdateExams(ExamName, Description, DOR, NegativeM, Id);
    }
    public int InsertQustions(int ExamId, string QustionText, string Answer1, string Answer2, string Answer3, string Answer4, string CorrectAnawer, int mark)
    {
      return   obj.InsertQustions(ExamId, QustionText, Answer1, Answer2, Answer3, Answer4, CorrectAnawer, mark);
    }
   
}