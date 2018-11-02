<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudantManager.master" AutoEventWireup="true" CodeFile="StudentExamCheckvalidorinvalid.aspx.cs" Inherits="Student_StudentExamCheckvalidorinvalid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #frmch
        {
            height: 309px;
        }
        #frm
        {
            height: 68px;
            width: 520px;
            font-size:20px;
            background-color:gray;
        }
        #chk
        {
            height: 218px;
            width: 525px;
            background-color:lightcoral;
        }
        .auto-style1
        {
            width: 100%;
            height: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id ="frmch">
        <center style="height: 308px">
            <div id ="frm">

                <span class="style5">
                <br />
                Exam Paper Wise Check Date</span></div>
            <div id ="chk">

                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Exam Date : </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="217px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Student Exam Id : </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="216px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Exam Key Code : </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="22px" OnTextChanged="TextBox3_TextChanged" Width="213px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1"  runat="server" Height="28px" Text="Go Exam Paper" Width="119px" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>

            </div>
        </center>
    </div>
</asp:Content>

