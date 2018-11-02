<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #login
        {
            height: 223px;
            width: 653px;
            background-color:rgba(77, 147, 243, 0.70);
               border-radius:10px 10px;
        }
        #loginmain
        {
            height: 226px;
            background-color:rgba(77, 147, 243, 0.49)
          
        }
        .auto-style1
        {
            width: 100%;
            height: 165px;
        }
        .auto-style4
        {
            width: 613px;
            height: 16px;
        }
        .auto-style5
        {
            width: 440px;
            height: 16px;
        }
        .auto-style6
        {
            height: 16px;
        width: 61px;
    }
        .auto-style8
        {
            width: 10px;
             height: 16px;
        }
        .auto-style10
        {
            width: 2545px;
              height: 16px;
        }
        .auto-style11
        {
            width: 10px;
            height: 34px;
        }
        .auto-style12
        {
            width: 2545px;
            font-size: 20px;
            height: 34px;
        }
        .auto-style13
        {
            width: 613px;
            height: 34px;
        }
        .auto-style14
        {
            width: 440px;
            height: 34px;
        }
        .auto-style15
        {
            height: 34px;
        width: 61px;
    }
        .auto-style28
    {
        width: 2545px;
        font-size: 20px;
        height: 11px;
    }
    .auto-style29
    {
        width: 10px;
        height: 11px;
    }
    .auto-style30
    {
        width: 613px;
        height: 11px;
    }
    .auto-style31
    {
        width: 440px;
        height: 11px;
    }
    .auto-style32
    {
        height: 11px;
        width: 61px;
    }
    .auto-style33
    {
        width: 10px;
        height: 1px;
    }
    .auto-style34
    {
        width: 2545px;
        font-size: 20px;
        height: 1px;
    }
    .auto-style35
    {
        width: 613px;
        height: 1px;
    }
    .auto-style36
    {
        width: 440px;
        height: 1px;
    }
    .auto-style37
    {
        height: 1px;
        width: 61px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>  <div id ="loginmain">
     
           <div id ="login">

               <table class="auto-style1">
                   <tr>
                       <td class="auto-style29"></td>
                       <td class="auto-style28"></td>
                       <td class="auto-style30"></td>
                       <td class="auto-style31"><h1>Login Form</h1></td>
                       <td class="auto-style32"></td>
                   </tr>
                   <tr>
                       <td class="auto-style8"></td>
                       <td class="auto-style10">
                           <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Forgote Password......</asp:LinkButton>
                       </td>
                       <td class="auto-style4">User Name :</td>
                       <td class="auto-style5">
                           <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="201px"></asp:TextBox>
                       </td>
                       <td class="auto-style6">
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style11"></td>
                       <td class="auto-style12"></td>
                       <td class="auto-style13">Password&nbsp; :</td>
                       <td class="auto-style14">
                           <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="202px" TextMode="Password"></asp:TextBox>
                       </td>
                       <td class="auto-style15">
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style33"></td>
                       <td class="auto-style34">
                           <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/StudentRegistration.aspx" Font-Underline="True" OnClick="LinkButton1_Click">New Studant Registation Hear.....</asp:LinkButton>
                       </td>
                       <td class="auto-style35"></td>
                       <td class="auto-style36">
                           <asp:Button ID="Button1" runat="server" Height="33px" Text="Login" Width="87px" Font-Names="Forte" Font-Size="Medium" OnClick="Button1_Click" />
                       </td>
                       <td class="auto-style37"></td>
                   </tr>
                   <tr>
                       <td class="auto-style29"></td>
                       <td class="auto-style28">
                           </td>
                       <td class="auto-style30"></td>
                       <td class="auto-style31">
                           <asp:Label ID="Label1" runat="server"></asp:Label>
                       </td>
                       <td class="auto-style32"></td>
                   </tr>
               </table>

            </div>
       
    </div>
    </center> 
</asp:Content>

