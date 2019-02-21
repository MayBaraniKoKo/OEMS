<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ReleaseAssignment.aspx.cs" Inherits="OEMS.ReleaseAssignment" %>

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
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" CssClass="form-control" Width="250px"></asp:TextBox>
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
                    <asp:Button ID="Upload" runat="server" Text="Upload" Width="105px" OnClick="Upload_Click" Height="25px" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td style="width: 244px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>

            <div>
                    <asp:Label ID="UploadStatus" runat="server" Text=""></asp:Label>
            </div> </div>

        <div class="col-md-6">
            <br />
            <br /><br /><br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyConnection %>" DeleteCommand="DELETE FROM [ReAssignment] WHERE [AssignmentID] = @original_AssignmentID AND [AssignmentName] = @original_AssignmentName AND [AssignmentFile] = @original_AssignmentFile" InsertCommand="INSERT INTO [ReAssignment] ([AssignmentID], [AssignmentName], [AssignmentFile]) VALUES (@AssignmentID, @AssignmentName, @AssignmentFile)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ReAssignment]" UpdateCommand="UPDATE [ReAssignment] SET [AssignmentName] = @AssignmentName, [AssignmentFile] = @AssignmentFile WHERE [AssignmentID] = @original_AssignmentID AND [AssignmentName] = @original_AssignmentName AND [AssignmentFile] = @original_AssignmentFile">
                        <DeleteParameters>
                            <asp:Parameter Name="original_AssignmentID" Type="String" />
                            <asp:Parameter Name="original_AssignmentName" Type="String" />
                            <asp:Parameter Name="original_AssignmentFile" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="AssignmentID" Type="String" />
                            <asp:Parameter Name="AssignmentName" Type="String" />
                            <asp:Parameter Name="AssignmentFile" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="AssignmentName" Type="String" />
                            <asp:Parameter Name="AssignmentFile" Type="String" />
                            <asp:Parameter Name="original_AssignmentID" Type="String" />
                            <asp:Parameter Name="original_AssignmentName" Type="String" />
                            <asp:Parameter Name="original_AssignmentFile" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                
            
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="AssignmentID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="571px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="AssignmentID" HeaderText="AssignmentID" ReadOnly="True" SortExpression="AssignmentID" />
                            <asp:BoundField DataField="AssignmentName" HeaderText="AssignmentName" SortExpression="AssignmentName" />
                            <asp:TemplateField HeaderText="Assignment File">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" Text='<%# Eval("AssignmentFile")%>' runat="server" CommandName="Download" OnClick="LinkButton1_Click"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
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

                </div>
          </div>


        
    
</asp:Content>


