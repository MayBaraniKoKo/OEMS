<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AdminCreateExamID.aspx.cs" Inherits="OEMS.AdminCreateExamID" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

<h2><%: Title %></h2>
    <br /><br /><br />
    <h3><strong>Welcome to Online Exam and Marking System of Gusto-Higher Education Institute</strong></h3>
    <p>&nbsp;</p>
    
    <div class="row">
    <div class="col-md-12" style="margin-left: 240px;">
            <asp:Image runat="server" ImageUrl="~/Images/onlineexam.jpg" />
    </div>


        </div>
    
            <br />
            <br />
    <div>
    <h3>You can create the Exam Name at here!</h3>
    <table style="margin-left: 350px">
    
    <tr><td>
    <asp:Label ID="Label2" runat="server" Text="Exam Name" Width="200px"></asp:Label>
    </td><td><asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox></td></tr>
    <tr>
        <td>
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label></td><td></td>
    </tr>
        <tr><td><td></td></td></tr>
        <tr><td><td></td></td></tr>
    </table>
        </div>
            <asp:Button ID="Button1" style="margin-left: 500px;" runat="server" Text="Create Exam" CssClass="form-control" BackColor="#0094DA" Width="100px" Height="50px" ForeColor="White" OnClick="Button1_Click" />
            <br />


</asp:Content>
