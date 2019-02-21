<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ViewLectureList.aspx.cs" Inherits="OEMS.ViewLectureList" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    <table class="nav-justified">
        <tr>
            <td><h3>Here is the lecture's list who registered on your website!</h3></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Email" Width="380px">
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="User Name" SortExpression="Username" />
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                        <asp:CheckBoxField DataField="Role" HeaderText="Role" SortExpression="Role" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Username], [Email], [Role] FROM [Register] WHERE ([Role] = @Role2)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="true" Name="Role2" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>



   </table>
</asp:Content>