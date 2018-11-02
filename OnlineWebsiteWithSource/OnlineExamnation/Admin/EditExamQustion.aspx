<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="EditExamQustion.aspx.cs" Inherits="Admin_EditExamQustion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 205px;
        }
        .auto-style2
        {
            width: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
         <center>
             <table style="font-size: xx-large; background-color:#FFAED7; width: 644px; height: 580px;">
                 <tr>
                     <td colspan="2" style="font-family: 'Times New Roman', Times, serif; font-size:30px; text-decoration:none;"><center>Exam Questions</center></td>
                     <td style="font-family: 'Times New Roman', Times, serif; font-size:30px; text-decoration:none;">&nbsp;</td>
                 </tr>
                 <tr>
                     <td style="font-size:medium" class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Exam Name</td>
                     <td class="auto-style2">
                         <asp:DropDownList ID="ddlExamId" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ExamName" DataValueField="ExamId" ondatabound="ddlExamId_DataBound" onselectedindexchanged="ddlExamId_SelectedIndexChanged" Width="240px" Height="31px">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamnationConnectionString %>" SelectCommand="SELECT [ExamName], [ExamId] FROM [Exams]"></asp:SqlDataSource>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="font-size:medium" class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Question Text</td>
                     <td class="auto-style2">
                         <asp:TextBox ID="txtQuestion" runat="server" TextMode="MultiLine" Width="376px" Height="74px"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="font-size:medium" class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Answer A:</td>
                     <td class="auto-style2">
                         <asp:TextBox ID="txtAnswerA" runat="server" TextMode="MultiLine" Width="376px" Height="35px"> </asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="font-size:medium" class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Answer B:</td>
                     <td class="auto-style2">
                         <asp:TextBox ID="txtAnswerB" runat="server" TextMode="MultiLine" Width="376px" Height="35px"> </asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="font-size:medium" class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Answer C:</td>
                     <td class="auto-style2">
                         <asp:TextBox ID="txtAnswerC" runat="server" TextMode="MultiLine" Width="376px" Height="35px"> </asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="font-size:medium" class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Answer D:</td>
                     <td class="auto-style2">
                         <asp:TextBox ID="txtAnswerD" runat="server" TextMode="MultiLine" Width="376px" Height="35px"> </asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="font-size:medium" class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Correct Answer</td>
                     <td class="auto-style2">
                         <asp:TextBox ID="txtCorrectAnswer" runat="server" TextMode="MultiLine" Width="376px" Height="35px"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="font-size:medium" class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Marks For The Question</td>
                     <td class="auto-style2">
                         <asp:TextBox ID="txtMarksforQuestion" runat="server" Width="148px" Height="20px"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                         <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" Text="Submit" Height="30px" Width="90px" />
                         &nbsp;&nbsp;
                         <asp:Button ID="btnEdit" runat="server" onclick="btnEdit_Click" Text="Edit" Height="30px" Width="90px" />
                     </td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td colspan="2">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td colspan="2">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
             </table>
             <br />
             <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
             <br />
         </center>
   
</asp:Content>

