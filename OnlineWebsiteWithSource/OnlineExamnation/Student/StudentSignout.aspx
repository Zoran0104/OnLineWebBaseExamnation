<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudantManager.master" AutoEventWireup="true" CodeFile="StudentSignout.aspx.cs" Inherits="Student_StudentSignout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #sig
        {
            height: 192px;
        }
        #sigh
        {
            height: 77px;
            width: 808px;
            font-size:30px;
        }
        #li
        {
            height: 55px;
            width: 503px;
            font-size:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id ="sig">
      <center>  <div id ="sigh">

          Sign Out Successfull ...............!</div>
         <div id ="li">

             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign Out Completely</asp:LinkButton>

         </div></center> 
    </div> 
</asp:Content>

