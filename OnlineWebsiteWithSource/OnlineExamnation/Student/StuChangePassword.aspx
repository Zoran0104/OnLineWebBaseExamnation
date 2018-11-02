<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudantManager.master" AutoEventWireup="true" CodeFile="StuChangePassword.aspx.cs" Inherits="Student_StuChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #chpass
        {
            height: 390px;
              background-color:rgba(150, 239, 19, 0.59)
        }
        #sh
        {
            height: 56px;
            font-size:35px;
            text-decoration:underline;
             background-color:rgba(150, 239, 19, 0.59)
        }
        #chp
        {
            height: 248px;
            width: 595px;
            background-color:gray;
            border-radius :10px 10px;
        }
        .auto-style1
        {
            width: 86%;
            height: 246px;
            font-size:17px;
        }
        .auto-style2
        {
            width: 208px;
        }
        .auto-style3
        {
            width: 208px;
            height: 26px;
        }
        .auto-style4
        {
            height: 26px;
        }
        .auto-style5
        {
            width: 208px;
            height: 44px;
        }
        .auto-style6
        {
            height: 44px;
        }
        .auto-style7
        {
            width: 208px;
            height: 21px;
        }
        .auto-style8
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id ="chpass">
      <center>  
          <div id ="sh">
              Change Password
        </div>
        <div id ="chp">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">User name&nbsp; &nbsp;* :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="267px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Old Passwod&nbsp; *&nbsp; :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="267px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">New Password&nbsp; *&nbsp; :</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="267px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="33px" Text="Change" Width="103px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Height="33px" OnClick="Button2_Click" Text="Clear" Width="103px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
  </center>
    </div>
</asp:Content>

