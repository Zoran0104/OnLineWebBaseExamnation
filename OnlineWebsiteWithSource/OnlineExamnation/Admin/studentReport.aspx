<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="studentReport.aspx.cs" Inherits="Admin_studentReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         .auto-style1
        {
            height: 236px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <center> 
      
<table >
<tr><td style="font-size: x-large;background-color:darkkhaki;">Student Report</td></tr>
<asp:GridView ID="Gvrpt" runat="server" AutoGenerateColumns="false" AllowPaging="True" PageSize="20" >
<Columns>
<asp:BoundField DataField="Id" HeaderText="UseId" />
<asp:BoundField DataField="ExamTypeName" HeaderText="Exam Type" />
<asp:BoundField DataField="ExamName" HeaderText="Exam Name" />
<asp:BoundField DataField="NoOfQustion" HeaderText="No Of Questions" />
<asp:BoundField DataField="CorrectAnswer" HeaderText="Correct Answers" />
<asp:BoundField DataField="WrongAnsawer" HeaderText="Wrong Answers" />
<asp:BoundField DataField="Attempted" HeaderText="Attempted" />
<asp:BoundField DataField="NetScore" HeaderText="Marks" />
<asp:BoundField DataField="TimeTaken" HeaderText="Time Taken" />
<asp:BoundField DataField="ExamAttendDate" HeaderText="ExamAttended Date" />
</Columns>
    <EmptyDataTemplate>
        NO Data In the Table
    </EmptyDataTemplate>
</asp:GridView>
    </table> 
        <br />
  <br />
    <br />
</center>
     <div id ="dd" style ="height:480px"></div>
</asp:Content>

