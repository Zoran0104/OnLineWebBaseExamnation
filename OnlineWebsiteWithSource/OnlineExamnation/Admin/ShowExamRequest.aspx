<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ShowExamRequest.aspx.cs" Inherits="Admin_ShowExamRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<table>
<tr><td>
<asp:GridView ID="GVScheduleExam" runat="server" AutoGenerateColumns="False" 
        Visible="False" onrowediting="GVScheduleExam_RowEditing" 
        onselectedindexchanged="GVScheduleExam_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="UserId" />
                <asp:BoundField DataField="PerformDate" HeaderText="Exam Preferable Date" />
                <asp:BoundField DataField="ExamTypeId" HeaderText="ExamTypeId" />
                <asp:BoundField DataField="ExamRequstId" HeaderText="ExamRequestId" />

                <asp:TemplateField HeaderText="ExamId">
                    <ItemTemplate>
                        <%# Eval("ExamId")%>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="etbExamName" runat="server" Text='<%# Eval("ExamName")%>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="etbExamName"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ShowEditButton="true" EditText="Schedule Exam" CausesValidation="false" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <EmptyDataTemplate>
                No Data In The Table
            </EmptyDataTemplate>
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
</td></tr>
</table>
</center>
</asp:Content>

