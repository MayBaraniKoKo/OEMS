<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="StudentLogin.aspx.cs" Inherits="OEMS.StudentLogin" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

                &nbsp;<br />
<br />
<br />
<br />
<br />
        <div class="row">
        <div class="col-md-4">
        <asp:Button ID="SubmitAssignment" runat="server" Text="Submit Assignment" BackColor="#0094da" CssClass="form-control" Height="50px" Width="200px"  OnClick="SubmitAssignment_Click" ForeColor="White" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       <asp:Button ID="TakeExam" runat="server" Text="Take Exam" BackColor="#0094da" CssClass="form-control" Height="50px" Width="200px"  OnClick="TakeExam_Click" ForeColor="White" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="StudentViewAssignment" runat="server" Text="View Assignment" BackColor="#0094da" CssClass="form-control" Height="50px" Width="200px"  OnClick="StudentViewAssignment_Click" ForeColor="White" />
    </div>
            
        <div class="col-md-8">
            <asp:Image runat="server" ImageUrl="~/Images/aa.jpg" Width="600px" Height="400px"/>
            </div>
            </div>
            </asp:Content>