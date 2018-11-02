<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudantManager.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    #stumain
    {
        height: 351px;
        font-size:40px;
        background-color:rgba(151, 16, 243, 0.47)
        }
        
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
         <div id ="stumain">
       <div id ="stuwel">
  <marquee> <h1 style ="font-size:60px;color:#0094ff">   Welcome To 
        <asp:Label ID="Label1" runat="server" Font-Size="55px"  ForeColor="#ff3399"></asp:Label>
        </h1></marquee>
           <br />
        <img src="../Images/F.GIF" style="height: 104px" /></div>
    </div></center>
   
</asp:Content>

