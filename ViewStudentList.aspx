<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ViewStudentList.aspx.cs" Inherits="OEMS.ViewStudentList" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    <table class="nav-justified">
        <tr>
            <td><h3>Here is the student's list who registered on your website!</h3></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>


    </table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Email" DataSourceID="SqlDataSource1" Width="352px">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT [Username], [Email], [Role] FROM [Register] WHERE ([Role] = @Role)">
        <SelectParameters>
            <asp:Parameter DefaultValue="false" Name="Role" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
