<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddNewAdmin.aspx.cs" Inherits="Admin_AddNewAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #addad
        {
            height: 522px;
            width: 100%;
            background-color:rgba(63, 36, 238, 0.34)
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
        width: 176px;
    }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="addad">
    <center>
        <div id ="Adadmin" style="height: 518px; width: 628px; background-color:rgba(20, 137, 250, 0.45)">
                 <table class="auto-style1">
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add New Admin&nbsp; </td>
                      <td class="auto-style4">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Frist Name *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td class="auto-style4">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Last Name </td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td class="auto-style4">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">
                          &nbsp;</td>
                      <td class="auto-style4">
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Contect No. *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td class="auto-style4">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Mobile No Not Valid !" ForeColor="Red" ValidationExpression="(D-)?\d{10}"></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Address *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox5" runat="server" Height="41px" Width="230px" TextMode="MultiLine"></asp:TextBox>
                      </td>
                      <td class="auto-style4">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Date of Birth *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td class="auto-style4">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">User Name *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td class="auto-style4">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Password *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td class="auto-style4">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Security Qustion *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox9" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td class="auto-style4">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Securty Answer *</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox10" runat="server" Height="25px" Width="230px"></asp:TextBox>
                      </td>
                      <td class="auto-style4">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">
                          <asp:Button ID="Button1" runat="server" Text="Submit" Height="31px" Width="82px" OnClick="Button1_Click" />
                      </td>
                      <td class="auto-style4">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">
                          <asp:Label ID="Label1" runat="server"></asp:Label>
                      </td>
                      <td class="auto-style4">
                          &nbsp;</td>
                  </tr>
              </table>
        </div>
    </center>
  </div>
</asp:Content>

