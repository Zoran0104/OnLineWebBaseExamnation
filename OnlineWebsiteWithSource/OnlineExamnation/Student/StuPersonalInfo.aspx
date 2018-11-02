<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudantManager.master" AutoEventWireup="true" CodeFile="StuPersonalInfo.aspx.cs" Inherits="Student_StuPersonalInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #persi
        {
            height: 514px;
            background-color:rgba(226, 12, 242, 0.30)
        }
        #pe
        {
            height: 55px;
            width: 590px;
            font-size:30px;
            background-color:Highlight;
        }
        #si
        {
            height: 450px;
            width: 587px;
            background-color:gray;
        }
        .auto-style1
        {
            width: 98%;
        height: 451px;
    }
    .auto-style2
    {
        height: 62px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id ="persi">
     <center>   <div id ="pe">
         Account Information
        </div>
        <div id ="si">

            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Frist Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="231px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="231px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date Of Birth</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="231px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date Of Registation</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="27px" Width="231px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contect No.</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="27px" Width="231px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox7" runat="server" Height="48px" Width="228px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Height="29px" OnClick="Button2_Click" Text="View Data" Width="94px" />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Update" Height="32px" Width="85px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div></center>
    </div>
</asp:Content>

