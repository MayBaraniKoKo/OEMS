<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LectureLogin.aspx.cs" Inherits="OEMS.LectureLogin" MasterPageFile="~/Site.Master" %>


    <asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

        &nbsp;<br />
<br />
<br />
<br />
<br />
        <div class="row">
        <div class="col-md-4">

        <asp:Button ID="Button1" runat="server" Text="Release Assignment" BackColor="#0094da" CssClass="form-control" Height="50px" Width="200px" OnClick="ReleaseAssignment_Click" ForeColor="White" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <asp:Button ID="Button2" runat="server" Text="Create Exam" Height="50px" Width="200px" OnClick="CreateExam_Click" BackColor="#0094da" CssClass="form-control" ForeColor="White" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      
        <asp:Button ID="Button3" runat="server" Text="Create Exam ID" Height="50px" Width="200px" OnClick="ViewAssignment_Click" BackColor="#0094da" CssClass="form-control" ForeColor="White"/>
            </div>
            
        <div class="col-md-8">
            <asp:Image runat="server" ImageUrl="~/Images/aa.jpg" Width="600px" Height="400px"/>
            </div>
            </div>
    </asp:Content>

