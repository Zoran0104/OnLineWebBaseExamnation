<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudantManager.master" AutoEventWireup="true" CodeFile="StuRequst_Status.aspx.cs" Inherits="Student_StuRequst_Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
       <asp:GridView ID="GridView1" HeaderStyle-BackColor="#dfff80"  runat="server" AutoGenerateColumns ="false"  OnRowEditing ="Gridview1_RowEditing" Height="159px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>

             <asp:BoundField DataField="ExamId" HeaderText="ExamId" />    
             <asp:BoundField DataField="ExamRequstId" HeaderText="Exam Request Id" />       
             <asp:BoundField DataField="ExamName" HeaderText="ExamName" />
             <asp:BoundField DataField="PerformDate" HeaderText="Exam Prefered Date" />
             <asp:BoundField DataField="DOR" HeaderText="Date Of Request" />
             
             <asp:CommandField  ShowEditButton="true" EditText="Go For Exam" />
           </Columns>
       </asp:GridView>

    </center>
</asp:Content>

