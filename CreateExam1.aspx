<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CreateExam1.aspx.cs" Inherits="OEMS.CreateExam1" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <br /><br /><br />
    <h3><strong>Welcome to Online Exam and Marking System of Gusto-Higher Education Institute</strong></h3>

    <div id="d1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Exam ID
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ExamName" DataValueField="ExamName" Width="250px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT * FROM [Exam]"></asp:SqlDataSource>
    
    <br />
    <br />
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Question:<asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" 
        TextMode="MultiLine" Width="250px"></asp:TextBox><br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option1:<asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox" Width="250px"></asp:TextBox>
    <br />
    <br />
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option2:<asp:TextBox ID="TextBox3" runat="server" CssClass="txtbox" Width="250px"></asp:TextBox>
    <br /><br />
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option3:<asp:TextBox ID="TextBox4" runat="server" CssClass="txtbox" Width="250px"></asp:TextBox>
    <br /><br />
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option4:<asp:TextBox ID="TextBox5" runat="server" CssClass="txtbox" Width="250px"></asp:TextBox>
    <br /><br />
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Answer:<asp:TextBox ID="TextBox6" runat="server" CssClass="txtbox" Width="250px"></asp:TextBox>
    <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="AddQues" runat="server" Text="Add Question" onclick="AddQues_Click" BackColor="#0094DA" ForeColor="White"  />
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="ViewQues" runat="server" Text="View Question" onclick="ViewQues_Click" BackColor="#0094DA" ForeColor="White"  />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Visible="false" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" Width="584px">
            <Columns>
                <asp:BoundField DataField="ExamID" HeaderText="ExamID" SortExpression="ExamID" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="Option1" HeaderText="Option1" SortExpression="Option1" />
                <asp:BoundField DataField="Option2" HeaderText="Option2" SortExpression="Option2" />
                <asp:BoundField DataField="Option3" HeaderText="Option3" SortExpression="Option3" />
                <asp:BoundField DataField="Option4" HeaderText="Option4" SortExpression="Option4" />
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT [ExamID], [Question], [Option1], [Option2], [Option3], [Option4], [Answer] FROM [CreatExam] WHERE ([ExamID] = @ExamID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="ExamID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

