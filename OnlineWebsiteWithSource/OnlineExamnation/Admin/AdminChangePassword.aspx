<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminChangePassword.aspx.cs" Inherits="Admin_AdminChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #dgh
        {
            height: 308px;
        }
        #gh
        {
            height: 70px;
            width: 479px;
            font-size :30px;
        }
        #hgh
        {
            height: 207px;
            width: 469px;
            background-color:#CCCCCC;
        }
        .auto-style1
        {
            width: 70%;
            height: 174px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id ="dgh">
     <center>
           <div id ="gh">

               <br />
               Change Password</div>
        <div id ="hgh">

            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>User Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="190px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Old Password </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="22px" TextMode="Password" Width="190px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>New Password</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="22px" TextMode="Password" Width="190px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="29px" Text="Submit" Width="69px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Height="29px" Text="Clear" Width="65px" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>

     </center>
    </div>
</asp:Content>

