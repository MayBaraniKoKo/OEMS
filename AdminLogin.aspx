<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AdminLogin.aspx.cs" Inherits="OEMS.AdminLogin" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    &nbsp;<br />
<br />
<br />
<br />
<br />
        <div class="row">
        <div class="col-md-4">

        <asp:Button ID="Button1" runat="server" Text="View Lecture List" BackColor="#0094da" CssClass="form-control" Height="50px" Width="200px" OnClick="Button1_Click" ForeColor="White" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <asp:Button ID="Button2" runat="server" Text="View Student List" Height="50px" Width="200px" OnClick="Button2_Click" BackColor="#0094da" CssClass="form-control" ForeColor="White" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      
        <asp:Button ID="Button3" runat="server" Text="Create Exam ID" Height="50px" Width="200px" OnClick="Button3_Click" BackColor="#0094da" CssClass="form-control" ForeColor="White"/>
            </div>
            
        <div class="col-md-8">
            <asp:Image runat="server" ImageUrl="~/Images/aa.jpg" Width="600px" Height="400px"/>
            </div>
            </div>
    </asp:Content>


