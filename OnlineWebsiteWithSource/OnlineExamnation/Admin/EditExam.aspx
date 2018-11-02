<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="EditExam.aspx.cs" Inherits="Admin_EditExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <center>
<table>
<tr><td>&nbsp;</td></tr>
<tr><td>
    <asp:GridView ID="gvExamName" runat="server" AutoGenerateColumns="false" 
        CellPadding="4" ForeColor="#333333" GridLines="None" Visible="False" 
        onrowcancelingedit="gvExamName_RowCancelingEdit" 
        onrowediting="gvExamName_RowEditing" 
        onrowdeleting="gvExamName_RowDeleting" onrowupdating="gvExamName_RowUpdating" OnSelectedIndexChanged="gvExamName_SelectedIndexChanged">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <Columns>
    
            <asp:TemplateField HeaderText="ExamId">
              <ItemTemplate>
                <asp:Label  ID="itExamId" runat="server" Text='<%# Eval("ExamId")%>' ></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
              <asp:Label  ID="EtbExamId" runat="server" Text='<%# Eval("ExamId")%>' ></asp:Label>
              </EditItemTemplate>            
            </asp:TemplateField>
    
            <asp:TemplateField HeaderText="ExamName">
              <ItemTemplate>
                <%# Eval("ExamName")%>
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="etbExamName" runat="server" Text='<%# Eval("ExamName")%>' ></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="etbExamName" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                <%# Eval("DOR")%>
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="etbDOR" runat="server" Text='<%# Eval("DOR")%>' ></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="etbDOR" ErrorMessage="*"></asp:RequiredFieldValidator>
              </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="No Of Questions">
              <ItemTemplate>
                <%# Eval("NoOfQustion")%>
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="etbNoOfQuestions" runat="server" TextMode="MultiLine" Text='<%# Eval("NoOfQustion")%>' ></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="etbNoOfQuestions" ErrorMessage="*"></asp:RequiredFieldValidator>
              </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="NegativeMarking" Visible="false">
              <ItemTemplate>
                <%# Eval("NegativeMarking")%>
              </ItemTemplate>
              <EditItemTemplate>
               <asp:DropDownList ID="ddletbNegativeMarking" CausesValidation="false" runat="server" Width="150" >
                      <asp:ListItem>--Select--</asp:ListItem>
                      <asp:ListItem>Yes</asp:ListItem>
                      <asp:ListItem>No</asp:ListItem>
              </asp:DropDownList>
              <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="ddletbNegativeMarking" ErrorMessage="*"></asp:RequiredFieldValidator>
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
    <tr><td align="right"><asp:HyperLink ID="hlBack" NavigateUrl="~/Admin/frmExams.aspx" runat="server" Text="Go To Back"></asp:HyperLink></td></tr>
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
</table>
</center>
</asp:Content>

