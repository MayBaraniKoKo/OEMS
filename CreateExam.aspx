<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CreateExam.aspx.cs" Inherits="OEMS.CreateExam" %>

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
            <asp:Button ID="Button1" style="margin-left: 400px;" runat="server" Text="Create Exam" CssClass="form-control" BackColor="#0094DA" Width="150px" Height="50px" ForeColor="White" OnClick="Button1_Click" />
            <br />


</asp:Content>