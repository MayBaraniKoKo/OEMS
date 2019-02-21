<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TakeExam.aspx.cs" Inherits="OEMS.TakeExam" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <br />
    <br />
    <br />
    <h3><strong>Welcome to Online Exam and Marking System of Gusto-Higher Education Institute</strong></h3>
    <p>&nbsp;</p>
    <p>Note: Please choose Exam Name which you want to take. &nbsp;</p>

    <div>
        <asp:Label ID="Label1" runat="server" Text="Exam Name" Width="200px"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="ExamName" DataValueField="ExamName" Width="250px" AutoPostBack="true"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT [ExamName] FROM [Exam]"></asp:SqlDataSource>
    </div>
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" Width="100%" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" DataKeyField="QuestionID">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
            Question:
            <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
            <br />

            <asp:RadioButton ID="RadioButton1" runat="server" Text='<%# Eval("Option1") %>' GroupName="radioGroup" />
            <br />
            <asp:RadioButton ID="RadioButton2" runat="server" Text='<%# Eval("Option2") %>' GroupName="radioGroup" />
            <br />

            <asp:RadioButton ID="RadioButton3" runat="server" Text='<%# Eval("Option3") %>' GroupName="radioGroup" />
            <br />
            <asp:RadioButton ID="RadioButton4" runat="server" Text='<%# Eval("Option4") %>' GroupName="radioGroup" />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Confirm" OnClick="Button2_Click" />
            <asp:Label ID="LabelAnswer" runat="server" Text='<%# Eval("Answer") %>' Visible="false" />
            <asp:Label ID="LabelQuestionId" runat="server" Text='<%# Eval("QuestionID") %>' Visible="false" />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT * FROM [CreatExam] WHERE (([ExamID] = @ExamID) AND ([Status] = @Status))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ExamID" PropertyName="SelectedValue" Type="String" />
            <asp:Parameter DefaultValue="0" Name="Status" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#0094DA" ForeColor="White" Width="100px" OnClick="Button1_Click" />

    <div>
        <asp:Label ID="lbFeedback" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3" Width="465px" Visible="false">
            <Columns>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="OptionSelected" HeaderText="OptionSelected" SortExpression="OptionSelected" />
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT [Email], [Question], [OptionSelected], [Answer], [Mark] FROM [AnswerTable] WHERE ([Email] = @Email)">
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
