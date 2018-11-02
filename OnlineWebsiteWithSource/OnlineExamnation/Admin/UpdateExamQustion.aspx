<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateExamQustion.aspx.cs" Inherits="Admin_UpdateExamQustion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>  <asp:GridView ID="gvExamQuestion" runat="server" AutoGenerateColumns="False" Visible="false"
            OnRowCancelingEdit="gvExamQuestion_RowCancelingEdit" OnRowEditing="gvExamQuestion_RowEditing"
            OnRowDeleting="gvExamQuestion_RowDeleting" AllowPaging="True" PageSize="20" OnSelectedIndexChanged="gvExamQuestion_SelectedIndexChanged" OnRowUpdating="gvExamQuestion_RowUpdating">
        <Columns>
             <asp:TemplateField HeaderText="QustionSNo">
              <ItemTemplate>
                      <asp:Label  ID="itExamId" runat="server" Text='<%# Eval("QustionSNo")%>' ></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                  <asp:Label  ID="EtbExamId" runat="server" Text='<%# Eval("QustionSNo")%>' ></asp:Label>
              </EditItemTemplate>            
            </asp:TemplateField>
            <asp:TemplateField HeaderText="QuestionText">
                <ItemTemplate>
                     <%# Eval("QustionText")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="etbQuestionText" runat="server" Text='<%# Eval("QustionText")%>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="etbQuestionText"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Answer1">
                <ItemTemplate>
                    <%# Eval("Answer1")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="etbAnswer1" runat="server" TextMode="MultiLine" Text='<%# Eval("Answer1")%>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="etbAnswer1"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Answer2">
                <ItemTemplate>
                    <%# Eval("Answer2")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="etbAnswer2" runat="server" TextMode="MultiLine" Text='<%# Eval("Answer2")%>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="etbAnswer2"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Answer3">
                <ItemTemplate>
                    <%# Eval("Answer3")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="etbAnswer3" runat="server" TextMode="MultiLine" Text='<%# Eval("Answer3")%>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="etbAnswer3"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Answer4">
                <ItemTemplate>
                    <%# Eval("Answer4")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="etbAnswer4" runat="server" TextMode="MultiLine" Text='<%# Eval("Answer4")%>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="etbAnswer4"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CorrectAnswer">
                <ItemTemplate>
                    <%# Eval("CorrectAnswer")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="etbCorrectAnswer" runat="server" TextMode="MultiLine" Text='<%# Eval("CorrectAnswer")%>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="etbCorrectAnswer"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Marks">
                <ItemTemplate>
                    <%# Eval("Mark")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="etbMarksfortheQuestion" runat="server" TextMode="MultiLine" Text='<%# Eval("Mark")%>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv7" runat="server" ControlToValidate="etbMarksfortheQuestion"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
           
            <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" CausesValidation="false" />
        </Columns>
        <EmptyDataTemplate>
                No Data In The Table
            </EmptyDataTemplate>
    </asp:GridView></center>
</asp:Content>

