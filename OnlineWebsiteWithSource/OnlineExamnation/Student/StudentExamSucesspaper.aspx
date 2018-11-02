<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudantManager.master" AutoEventWireup="true" CodeFile="StudentExamSucesspaper.aspx.cs" Inherits="Student_StudentExamSucesspaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #has
        {
            height: 299px;
        }
        #hm
        {
            height: 77px;
            width: 727px;
            font-size:30px;
        }
        #kl
        {
            height: 199px;
            width: 726px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id ="has">
        <center>
            <div id ="hm">

                <br />

                Exam Sucessfully Completed......</div>
            <div id ="kl">

                <asp:GridView ID="gridresult" runat="server" CellPadding="4" GridLines="None" Height="49px" OnSelectedIndexChanged="gridresult_SelectedIndexChanged" Width="426px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

                </asp:GridView>

            </div>
        </center>
    </div>
</asp:Content>

