<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #hg
        {
            height: 491px;
            font-size:50px;
           background-color:rgba(35, 247, 247, 0.31)
        }
    .auto-style1
    {
        width: 768px;
        color:#0094ff;
        text-shadow:10px 10px 5px green;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id ="hg"><br />
      <center><marquee>Welcome To Administrator&nbsp;
    <asp:Label ID="Label1" runat="server" ForeColor ="#6600ff"></asp:Label></marquee>
</center>

   </div>
</asp:Content>

