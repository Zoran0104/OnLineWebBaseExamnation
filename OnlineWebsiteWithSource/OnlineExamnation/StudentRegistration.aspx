<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="StudentRegistration.aspx.cs" Inherits="StudentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #stregmain
        {
             background-color:#FFD9B3;
        }
        #reg
        {
           box-shadow :3px 3px 10px blue;
           background-color:#9B9BFF;
        }
        #reg
        {
            height: 576px;
            width: 647px;
            margin-top: 2px;
        }
        #stregmain
        {
            height: 583px;
        }
        .auto-style1
        {
            width: 101%;
            font-size:17px;
            height: 515px;
        }
        .auto-style2
        {
            width: 170px;
        }
        .auto-style3
        {
            width: 255px;
        }
    .auto-style4
    {
        width: 170px;
        height: 38px;
    }
    .auto-style5
    {
        width: 255px;
        height: 38px;
    }
    .auto-style6
    {
        height: 38px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id ="stregmain">
      <center>
          <div id ="reg">

              <table class="auto-style1">
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registation Form</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Frist Name *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Email*</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email Not valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Contect No. *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Mobile No Not Valid !" ForeColor="Red" ValidationExpression="(D-)?\d{10}"></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Address *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox5" runat="server" Height="41px" Width="230px" TextMode="MultiLine"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Date of Birth *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style4">User Name *</td>
                      <td class="auto-style5">
                          <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td class="auto-style6">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Password *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="230px" TextMode="Password"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Security Qustion *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox9" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Securty Answer *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox10" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">
                          <asp:Button ID="Button1" runat="server" Text="Submit" Height="31px" Width="82px" OnClick="Button1_Click" />
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">
                          <asp:Label ID="Label1" runat="server"></asp:Label>
                      </td>
                      <td>
                          <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                      </td>
                  </tr>
              </table>

        </div>

      </center>
    </div>
</asp:Content>

