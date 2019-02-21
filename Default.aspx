<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OEMS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Online Exam and Marking System</h2>
        <p class="lead">Online Exam and Marking System is the free place to take exam and create exam.</p>
        <p><a href="Default.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                You need to register to our website to use our system.
            </p>
            <p>
                <a class="btn btn-default" href="Account/Register.aspx">Register &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Create Exam</h2>
            <p>
                If you want to create exam, you need to register as lecture.
            </p>
            <p>
                <a class="btn btn-default" href="Default.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Take Exam</h2>
            <p>
                If you want to take exam, you need to register as student.
            </p>
            <p>
                <a class="btn btn-default" href="Default.aspx">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
