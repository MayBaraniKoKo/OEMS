<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SAssignment.aspx.cs" Inherits="OEMS.SubmitAssignment" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    
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
                <td>You can upload the assignmnet here!</td>
                
            </tr>
            </table>
            <table class="nav-justified">
            <tr>
                <td style="width: 244px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 244px">
                    <asp:Label ID="Name" runat="server" style="font-weight: 700" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Height="25px" CssClass="form-control" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 244px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 244px">
                    <asp:Label ID="Email" runat="server" style="font-weight: 700" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Height="25px" CssClass="form-control" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 244px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 244px">
                    <asp:Label ID="AssignmentID" runat="server" style="font-weight: 700" Text="Assignment ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAssignmentID" runat="server" Height="25px" CssClass="form-control" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 244px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                <tr>
                <td style="width: 244px">
                    <asp:Label ID="AssignmentName" runat="server" style="font-weight: 700" Text="Assignment Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAssignmentName" runat="server" Height="25px" CssClass="form-control" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 244px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 244px">
                    <asp:Label ID="FileUpload" runat="server" style="font-weight: 700" Text="Choose File"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" Height="25px" />
                </td>
            </tr>
            <tr>
                <td style="width: 244px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 244px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 244px">&nbsp;</td>
                <td>
                    <asp:Button ID="Upload" runat="server" Text="Upload" Width="105px" OnClick="Upload_Click" Height="45px" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td style="width: 244px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>

            <div>
                    <asp:Label ID="UploadStatus" runat="server" Text=""></asp:Label>
            </div> 

        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" AllowPaging="True" Width="717px">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="SAssignmentID" HeaderText="Assignment ID" SortExpression="SAssignmentID" />
                    <asp:BoundField DataField="SAssignmentName" HeaderText="Assignment Name" SortExpression="SAssignmentName" />
                    <asp:TemplateField HeaderText="Assignment File">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" Text='<%# Eval("SAssignmentFile")%>' runat="server" CommandName="Download" OnClick="LinkButton1_Click"></asp:LinkButton>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
                        
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#ffffff" />
                        <HeaderStyle BackColor="#0094da" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000000" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT * FROM [TestAssignment] WHERE ([Email] = @Email)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br /><br /><br />


             


        
    
</asp:Content>