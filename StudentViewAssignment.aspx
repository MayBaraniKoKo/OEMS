<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="StudentViewAssignment.aspx.cs" Inherits="OEMS.StudentViewAssignment" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

<div class="row">
        <div class="col-md-6">
        <table class="nav-justified">
             <tr>
                <td style="width: 488px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 488px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 488px">&nbsp;</td>
            </tr>
            
             <tr>
                <td>Here is the assignment for you!</td>
                
            </tr>
            </table>
            <table class="nav-justified">
            <tr>
                <td style="width: 243px">&nbsp;</td>
                <td>&nbsp;</td>
        <tr>
            <td style="width: 243px; font-weight: 700;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td style="width: 244px; font-weight: 700;">
                <asp:Label ID="Label1" runat="server" Text="Assignment ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" CssClass="form-control" Width="250px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search" Width="78px" Height="35px" CssClass="form-control" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px">
                
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
</table></div>

        <div class="col-md-6">
        <br />
            <br /><br /><br />
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="AssignmentID" Width="380px">
                    <Columns>
                        <asp:BoundField DataField="AssignmentID" HeaderText="Assignment ID" ReadOnly="True" SortExpression="AssignmentID" />
                        <asp:BoundField DataField="AssignmentName" HeaderText="Assignment Name" SortExpression="AssignmentName" />
                        <asp:TemplateField HeaderText="Assignment File">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" Text='<%# Eval("AssignmentFile")%>' runat="server" CommandName="Download" OnClick="LinkButton1_Click"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#0094da" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000000" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT * FROM [ReAssignment] WHERE ([AssignmentID] = @AssignmentID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="AssignmentID" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
    </div>


</asp:Content>
