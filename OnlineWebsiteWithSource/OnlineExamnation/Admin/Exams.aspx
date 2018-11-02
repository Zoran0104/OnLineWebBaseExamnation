<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Exams.aspx.cs" Inherits="Admin_Exams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #er
        {
            height: 322px;
            width: 568px;  
            background-color:#A6D2FF;
        }
        #dhj
        {
            height: 325px;
          
        }
        .auto-style1
        {
            width: 231px;
        }
    .auto-style3
    {
        width: 231px;
        height: 74px;
    }
        .auto-style4
        {
            width: 212px;
            height: 74px;
        }
        .auto-style5
        {
            width: 212px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id ="dhj">
        <center>
            <div id ="er">
                <table style="height: 317px; width: 558px;">
<tr><td colspan="2" style="font-size:30px"><center>Exam Details</center></td></tr>
<tr><td class="auto-style4">Exam Type Name</td><td class="auto-style3"><asp:DropDownList ID="ddlExamTypeId" runat="server" 
        Width="201px" DataSourceID="SqlDataSource1" 
                                                            
        DataTextField="ExamTypeName" DataValueField="ExamTypeId" 
        ondatabound="ddlExamTypeId_DataBound" Height="31px"></asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamnationConnectionString %>" SelectCommand="SELECT [ExamTypeName], [ExamTypeId] FROM [ExamType]"></asp:SqlDataSource>
                                                        </td></tr>
<tr><td style="font-size :medium" class="auto-style5">Exam Name</td><td class="auto-style1"><asp:TextBox ID="txtExamName" runat="server" Width="201px" Height="28px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtExamName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td style="font-size:medium" class="auto-style5">Description</td><td class="auto-style1"><asp:TextBox ID="txtDescription" runat="server" Width="201px" Height="28px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtDescription" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td style="font-size:medium" class="auto-style5">No Of Questions</td><td class="auto-style1"><asp:TextBox ID="txtNoOfQues" runat="server" Width="201px" Height="28px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtNoOfQues" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
 
<tr><td style="font-size:medium" class="auto-style5">Negative Marking</td><td class="auto-style1">
    <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="96px">
        <asp:ListItem>No</asp:ListItem>
        <asp:ListItem>Yes</asp:ListItem>
    </asp:DropDownList>
    </td></tr>
 
<tr><td colspan="2">
<asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" Height="28px" Width="84px" />
&nbsp 
    <asp:Button ID="tbEdit" runat="server" Text="Edit" onclick="tbEdit_Click" CausesValidation="False" Height="29px" Width="72px" />
</td></tr>
<tr><td colspan="2">
<asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </td></tr>
</table>
            </div>
        </center>
    </div>
</asp:Content>

