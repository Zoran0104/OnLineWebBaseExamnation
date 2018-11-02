using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for BALQuestionPaper
/// </summary>
public class BALQuestionPaper
{
    string  con =ConfigurationManager.ConnectionStrings["OnlineWebBasedExam"].ConnectionString;
  
	public BALQuestionPaper()
	{
		//
		// TODO: Add constructor logic here
		//
	}
     

}