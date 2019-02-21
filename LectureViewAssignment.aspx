<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="LectureViewAssignment.aspx.cs" Inherits="OEMS.LectureViewAssignment" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

<table class="nav-justified">
        <tr>
            <td >&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
           <td style="text-align: left; font-weight: 700; font-size: large;" >These students submitted the assignment to you!</td>
        </tr>
        <tr>
            <td style=" font-weight: 700;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 244px" >
                <asp:Label ID="Label1" runat="server" Text="Assignment ID" Width="200px" ></asp:Label>
            </td>
            <td style="width: 437px">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px" Height="25px" CssClass="form-control"></asp:TextBox>
            </td>
           <td style="width: 173px" ><asp:Button ID="Button2" runat="server" Text="Search" Width="100px" Height="35px" CssClass="form-control" BackColor="#0094DA" ForeColor="White" /></td>
            
        </tr>
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td style="width: 437px">&nbsp;</td>
            <td style="width: 173px">&nbsp;</td>
        </tr>
       </table>
    <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Email" DataSourceID="SqlDataSource1" Width="925px">
                    <Columns>
                        
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                        <asp:BoundField DataField="SAssignmentID" HeaderText="SAssignmentID" SortExpression="SAssignmentID" />
                        <asp:BoundField DataField="SAssignmentName" HeaderText="SAssignmentName" SortExpression="SAssignmentName" />
                        <asp:BoundField DataField="SAssignmentFile" HeaderText="SAssignmentFile" SortExpression="SAssignmentFile" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
                        <asp:CommandField ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyConnection %>" DeleteCommand="DELETE FROM [TestAssignment] WHERE [Email] = @original_Email AND [Name] = @original_Name AND [SAssignmentID] = @original_SAssignmentID AND [SAssignmentName] = @original_SAssignmentName AND [SAssignmentFile] = @original_SAssignmentFile AND [Date] = @original_Date AND (([Mark] = @original_Mark) OR ([Mark] IS NULL AND @original_Mark IS NULL))" InsertCommand="INSERT INTO [TestAssignment] ([Name], [Email], [SAssignmentID], [SAssignmentName], [SAssignmentFile], [Date], [Mark]) VALUES (@Name, @Email, @SAssignmentID, @SAssignmentName, @SAssignmentFile, @Date, @Mark)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TestAssignment] WHERE ([SAssignmentID] = @SAssignmentID)" UpdateCommand="UPDATE [TestAssignment] SET [Name] = @Name, [SAssignmentID] = @SAssignmentID, [SAssignmentName] = @SAssignmentName, [SAssignmentFile] = @SAssignmentFile, [Date] = @Date, [Mark] = @Mark WHERE [Email] = @original_Email AND [Name] = @original_Name AND [SAssignmentID] = @original_SAssignmentID AND [SAssignmentName] = @original_SAssignmentName AND [SAssignmentFile] = @original_SAssignmentFile AND [Date] = @original_Date AND (([Mark] = @original_Mark) OR ([Mark] IS NULL AND @original_Mark IS NULL))">
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
                        <asp:ControlParameter ControlID="TextBox1" Name="SAssignmentID" PropertyName="Text" Type="String" />
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
           
    </div>
    
    <br />

    </asp:Content>
