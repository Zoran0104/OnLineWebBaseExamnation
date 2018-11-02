<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ExamSchedule.aspx.cs" Inherits="Admin_ExamSchedule" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <center>
<table border="2" style="height: 226px; width: 561px; background-color:#c7ccce">
<tr><td style="font-size: x-large" colspan="2">Exam Schedule</td></tr>
<tr><td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ExamId</td><td><asp:DropDownList ID="ddlExamIdNotAttempted" runat="server" Width="235px" 
                                                                onselectedindexchanged="ddlExamIdNotAttempted_SelectedIndexChanged" Height="31px" AutoPostBack="True">
    <asp:ListItem>--Select--</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label1" runat="server" Text="ExamId"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamnationConnectionString %>" SelectCommand="SELECT [ExamId] FROM [ExamRequst]"></asp:SqlDataSource>
    </td>
<%--    <td><asp:DropDownList ID="ddlExamIdAttempted" runat="server" Width="150" 
            ondatabound="ddlExamIdAttempted_DataBound"></asp:DropDownList></td>--%>
</tr>
<tr><td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date Of Assign</td>
<td><asp:TextBox ID="txtAssignExamDate" runat ="server" Width="241px" Height="22px" AutoPostBack="True" OnTextChanged="txtAssignExamDate_TextChanged" ></asp:TextBox>
    <asp:CalendarExtender ID="txtAssignExamDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtAssignExamDate">
    </asp:CalendarExtender>
&nbsp;&nbsp;
</tr>
<tr><td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Key Code</td><td><asp:TextBox ID="txtKeyCode" runat="server" Width="241px" Height="22px"></asp:TextBox></td></tr>
<tr><td align="left">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td colspan="2">
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="btnSubmit_Click" Height="29px" Width="85px" />&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </td></tr>
</table>
<asp:Label ID="LblMsg" runat="server" Text=""></asp:Label>
&nbsp;
        <asp:LinkButton ID="LBScheduleExam" runat="server" onclick="LB_Click">Go To 
        Schedule Exam</asp:LinkButton>
</center>
</asp:Content>

