<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudantManager.master" AutoEventWireup="true" CodeFile="StudentExaminationPaper.aspx.cs" Inherits="Student_StudentExaminationPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #exam
        {
            height: 100%;
            width: 676px;
          background-color:lightsalmon;
        }
       
        .auto-style1
        {
            width: 100%;
            height: 796px;
        }
        .auto-style2
        {
            width: 100%;
        }
        .auto-style4
        {
            height: 733px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
        <center>
            <div id ="exam">

                <table class="auto-style1">
                    <tr>
                        <td><span class="style5"><h3>Student Examination Paper</h3> </span></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns ="false"   CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="1" ShowFooter="True">
                            <PagerSettings NextPageText ="Submit" />
                                <FooterStyle BackColor ="#999966" ForeColor  ="#000000" />
                                 <RowStyle BackColor ="#ffa4ff" ForeColor  ="#000000" />
                                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor ="#c6f88f" ForeColor="#284775" />
                                      <Columns>
                                        <asp:TemplateField ControlStyle-Width="100%">
                                            <ItemTemplate>
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="4" width="100%">
                                                            <asp:Panel BackColor="#00ffcc" ID="panel" Width="100%" Height="20%" runat="server">
                                                                <asp:Label ID="Label1" CssClass="txt" runat="server" Text="Question :"></asp:Label>
                                                                <asp:TextBox ID="txtQuestion" ReadOnly="true" Width="92%" Text='<%#Eval("QustionText") %>'
                                                                    runat="server" TextMode="MultiLine"></asp:TextBox>
                                                            </asp:Panel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="panelRadio" Width="100%" Height="20%" runat="server">
                                                                <tr>
                                                                    <td width="40%">
                                                                        <asp:RadioButton ID="RadioButton1" Text='<%#Eval("Answer1")%>' GroupName="b1" runat="server" />
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:RadioButton ID="RadioButton2" Text='<%#Eval("Answer2")%>' GroupName="b1" runat="server" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="40%">
                                                                        <asp:RadioButton ID="RadioButton3" Text='<%#Eval("Answer3")%>' GroupName="b1" runat="server" />
                                                                    </td>
                                                                        <td width="40%">
                                                                        <asp:RadioButton ID="RadioButton4" Text='<%#Eval("Answer4") %>' GroupName="b1" runat="server" />
                                                                        <asp:Label ID="lblQuestionId" Visible="false" Text='<%#Eval("QustionSNo")%>' runat="server"></asp:Label>
                                                                        <asp:Label ID="lblcorrectAnswer" Visible="false" Text='<%#Eval("CorrectAnswer")%>' runat="server"></asp:Label>
                                                                        <asp:Label ID="lblNoofmarks" Visible="false" Text='<%#Eval("Mark")%>' runat="server"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </asp:Panel>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                            <ControlStyle Width="100%"></ControlStyle>
                                            <FooterTemplate>
                                                <center>
                                                    <asp:LinkButton ID="linkSubmit" Font-Size="X-Large" ForeColor="White" runat="server" Text="Submit" OnClick="Submit_Click"></asp:LinkButton></center>
                                         </FooterTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style2">
                                <tr>
                                    <td>
                                        <asp:Label ID="lblStartTime" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblEndTime" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFinalTime" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </div>
        </center>
     
</asp:Content>

