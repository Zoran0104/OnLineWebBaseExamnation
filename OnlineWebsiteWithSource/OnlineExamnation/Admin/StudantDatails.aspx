<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="StudantDatails.aspx.cs" Inherits="Admin_StudantDatails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #std
        {
            height: 484px;
            width: 100%;
            background-color:rgba(7, 238, 40, 0.20)
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <center>
          <div id ="std">

              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" DataSourceID="SqlDataSource1" PageSize="15" Width="80%">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                      <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                      <asp:BoundField DataField="LName" HeaderText="Email" SortExpression="LName" />
                      <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                      <asp:BoundField DataField="DOR" HeaderText="DOR" SortExpression="DOR" />
                      <asp:BoundField DataField="ContectNo" HeaderText="ContectNo" SortExpression="ContectNo" />
                      <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                  </Columns>
                  <EditRowStyle BackColor="#7C6F57" />
                  <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#E3EAEB" />
                  <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F8FAFA" />
                  <SortedAscendingHeaderStyle BackColor="#246B61" />
                  <SortedDescendingCellStyle BackColor="#D4DFE1" />
                  <SortedDescendingHeaderStyle BackColor="#15524A" />
              

              </asp:GridView>

              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamnationConnectionString %>" SelectCommand="SELECT Id, FName, LName, DOB, DOR, ContectNo, Address FROM UserDetail"></asp:SqlDataSource>

          </div>
       </center>
 
</asp:Content>

