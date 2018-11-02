<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudantManager.master" AutoEventWireup="true" CodeFile="StuRequestforExam.aspx.cs" Inherits="Student_StuRequestforExam" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #abc
        {
            height: 337px;
            background-color:rgba(239, 116, 116, 0.23)
        }
        #ab
        {
            height: 62px;
            width: 598px;
             font-size:30px;
            background-color:Highlight;
        }
        #a
        {
            height: 253px;
            width: 599px;
            background-color:#C0C0C0;
        }
    .auto-style1
    {
        width: 100%;
            height: 244px;
        }
    .auto-style2
    {
        height: 55px;
    }
        .auto-style3
        {
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id ="abc">
      <center> 
          <div id ="ab">

              Exam Preference</div>
        <div id ="a">

            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Select Examination Date&nbsp; -</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="230px"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox1">
                        </asp:CalendarExtender>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Exam Type Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlExamTypeName" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="ExamTypeId" DataValueField="ExamTypeId" ondatabound="ddlExamTypeName_DataBound" onselectedindexchanged="ddlExamTypeName_SelectedIndexChanged" Width="202px" Height="31px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamnationConnectionString2 %>" SelectCommand="SELECT [ExamTypeId], [ExamTypeName] FROM [ExamType]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Exam Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlExamName" runat="server" ondatabound="ddlExamName_DataBound" OnSelectedIndexChanged="ddlExamName_SelectedIndexChanged" Width="201px" Height="35px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="33px" Text="Submit" Width="100px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>

      </center>
    </div>
</asp:Content>

