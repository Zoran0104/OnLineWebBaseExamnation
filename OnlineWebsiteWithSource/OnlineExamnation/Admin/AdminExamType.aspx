<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminExamType.aspx.cs" Inherits="Admin_AdminExamType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <center>
<table>
<tr><td colspan="2" style="font-size: x-large">Exam Type Details</td></tr>
<tr><td style="font-size:medium">Exam Type Name</td><td><asp:TextBox ID="txtExamTypeId" runat="server" Width="203px" Height="27px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtExamTypeId" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td style="font-size:medium">Description</td><td><asp:TextBox ID="txtDescription" runat="server" Width="203px" Height="27px" OnTextChanged="txtDescription_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescription" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td colspan="2">
<asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" Height="34px" Width="90px" />
&nbsp 
    <asp:Button ID="tbEdit" runat="server" Text="Edit" onclick="tbEdit_Click" CausesValidation="False" Height="34px" Width="90px" />
</td></tr>
<tr><td colspan="2">
<asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </td></tr>
<tr><td colspan="2">
    <asp:GridView ID="gvExamType" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" 
        onrowcancelingedit="gvExamType_RowCancelingEdit1" 
        onrowdeleting="gvExamType_RowDeleting1" onrowediting="gvExamType_RowEditing1" 
        onrowupdating="gvExamType_RowUpdating" Visible="False" AllowPaging="True" PageSize="15">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <Columns>
    
            <asp:TemplateField HeaderText="ExamTypeId">
                 
              <ItemTemplate>
                   <asp:Label  ID="itExamId" runat="server" Text='<%# Eval("ExamTypeId")%>'  Visible ="false"></asp:Label>
                    <%# Eval("ExamTypeId")%>
              </ItemTemplate>
              <EditItemTemplate>
              <asp:Label  ID="EtbExamTypeId" runat="server" Text='<%# Eval("ExamTypeId")%>' ></asp:Label>
              </EditItemTemplate>            
            </asp:TemplateField>
    
            <asp:TemplateField HeaderText="ExamTypeName">
              <ItemTemplate>
                <%# Eval("ExamTypeName")%>
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="etbExamTypeName" runat="server" Text='<%# Eval("ExamTypeName")%>' ></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="etbExamTypeName" ErrorMessage="*"></asp:RequiredFieldValidator>
              </EditItemTemplate>
            </asp:TemplateField>
            
             <asp:TemplateField HeaderText="Description">
              <ItemTemplate>
                <%# Eval("Description")%>
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="etbDescription" runat="server" TextMode="MultiLine" Text='<%# Eval("Description")%>' ></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="etbDescription" ErrorMessage="*"></asp:RequiredFieldValidator>
              </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Date">
              <ItemTemplate>
                <%# Eval("Date")%>
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="etbDate" runat="server" Text='<%# Eval("Date")%>' ></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="etbDate" ErrorMessage="*"></asp:RequiredFieldValidator>
              </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" CausesValidation="false" />
    </Columns>

        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
</td></tr>
</table>
</center>
</asp:Content>

