<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ForgotePassword.aspx.cs" Inherits="ForgotePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #forgotepass
        {
            height: 406px;
            width: 601px;
            background-color:rgba(75, 23, 255, 0.49)
        }
        .auto-style1
        {
            width: 100%;
            height: 230px;
        }
        .auto-style2
        {
            width: 206px;
        }
        .auto-style3
        {
            width: 273px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>  
      <div id ="forgotepass">

          <table class="auto-style1">
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">User Name</td>
                  <td class="auto-style3">
                      <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="232px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">Sequrity Qustion&nbsp;&nbsp; --</td>
                  <td class="auto-style3">
                      <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="236px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">Sequrity Answer&nbsp; --</td>
                  <td class="auto-style3">
                      <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="234px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">Email&nbsp; To Sent Password--</td>
                  <td class="auto-style3">
                      <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="232px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Wrong email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  </td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">
                      <asp:Button ID="Button2" runat="server" Height="27px" OnClick="Button2_Click" Text="Find Password............" Width="129px" />
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">
                      <asp:Label ID="Label1" runat="server"></asp:Label>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">
                      &nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>

    </div>

  </center>

</asp:Content>

