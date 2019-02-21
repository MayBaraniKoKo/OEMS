<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Test.aspx.cs" Inherits="OEMS.Test" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">



    <table>
        <tr>
            <td style="width: 286px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700; width: 286px">You can upload your assignment here!</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 286px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700; width: 286px; text-align: left;">
                <asp:Label runat="server" AssociatedControlID="UserName" >Name</asp:Label>
                
            </td>
            <td>
                <asp:TextBox runat="server" ID="UserName"  Width="209px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
            </td>
        </tr>
        <tr>
            <td style="width: 286px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700; width: 286px">
                <asp:Label runat="server" AssociatedControlID="Email">Email</asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="Email" TextMode="Email" Width="209px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
                
            </td>
        </tr>
        <tr>
            <td style="width: 286px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700; width: 286px">
                <asp:Label ID="Label1" runat="server" Text="Assignment ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="209px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 286px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 286px; font-weight: 700">
                <asp:Label ID="Label2" runat="server" Text="Assignment Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 286px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 286px; font-weight: 700">
                <asp:Label ID="Label3" runat="server" Text="Upload File"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 286px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 286px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" Width="80px" />
            </td>
        </tr>
        <tr>
            <td style="width: 286px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 286px">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
       
        <tr>
            <td style="width: 286px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Label ID="Label6" runat="server" Text="Note: If you want to upload your assignment again, you need to delete your previous one first!" style="font-weight: 700"></asp:Label>
        
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="772px" DataKeyNames="Email" AllowPaging="True">
                    <Columns>

                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ReadOnly="True" />
                        <asp:BoundField DataField="SAssignmentID" HeaderText="Assignment ID" SortExpression="SAssignmentID" />
                        <asp:BoundField DataField="SAssignmentName" HeaderText="Assignment Name" SortExpression="SAssignmentName" />
                        <asp:TemplateField HeaderText="Assignment File">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" Text='<%# Eval("SAssignmentFile")%>' runat="server" CommandName="Download" OnClick="LinkButton1_Click"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
                        <asp:CommandField ShowDeleteButton="True" />

                        
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT * FROM [TestAssignment] WHERE ([Email] = @Email)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [TestAssignment] WHERE [Email] = @original_Email AND [Name] = @original_Name AND [SAssignmentID] = @original_SAssignmentID AND [SAssignmentName] = @original_SAssignmentName AND [SAssignmentFile] = @original_SAssignmentFile AND [Date] = @original_Date AND (([Mark] = @original_Mark) OR ([Mark] IS NULL AND @original_Mark IS NULL))" InsertCommand="INSERT INTO [TestAssignment] ([Name], [Email], [SAssignmentID], [SAssignmentName], [SAssignmentFile], [Date], [Mark]) VALUES (@Name, @Email, @SAssignmentID, @SAssignmentName, @SAssignmentFile, @Date, @Mark)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [TestAssignment] SET [Name] = @Name, [SAssignmentID] = @SAssignmentID, [SAssignmentName] = @SAssignmentName, [SAssignmentFile] = @SAssignmentFile, [Date] = @Date, [Mark] = @Mark WHERE [Email] = @original_Email AND [Name] = @original_Name AND [SAssignmentID] = @original_SAssignmentID AND [SAssignmentName] = @original_SAssignmentName AND [SAssignmentFile] = @original_SAssignmentFile AND [Date] = @original_Date AND (([Mark] = @original_Mark) OR ([Mark] IS NULL AND @original_Mark IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_SAssignmentID" Type="String" />
                        <asp:Parameter Name="original_SAssignmentName" Type="String" />
                        <asp:Parameter Name="original_SAssignmentFile" Type="String" />
                        <asp:Parameter Name="original_Date" Type="DateTime" />
                        <asp:Parameter Name="original_Mark" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="SAssignmentID" Type="String" />
                        <asp:Parameter Name="SAssignmentName" Type="String" />
                        <asp:Parameter Name="SAssignmentFile" Type="String" />
                        <asp:Parameter Name="Date" Type="DateTime" />
                        <asp:Parameter Name="Mark" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Email" Name="Email" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="SAssignmentID" Type="String" />
                        <asp:Parameter Name="SAssignmentName" Type="String" />
                        <asp:Parameter Name="SAssignmentFile" Type="String" />
                        <asp:Parameter Name="Date" Type="DateTime" />
                        <asp:Parameter Name="Mark" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_SAssignmentID" Type="String" />
                        <asp:Parameter Name="original_SAssignmentName" Type="String" />
                        <asp:Parameter Name="original_SAssignmentFile" Type="String" />
                        <asp:Parameter Name="original_Date" Type="DateTime" />
                        <asp:Parameter Name="original_Mark" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            



</asp:Content>
