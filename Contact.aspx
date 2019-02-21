<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OEMS.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div class="row">
    <div class="col-md-4">
            <asp:Image Width="380px" runat="server" ImageUrl="~/Images/bb.jpg" />
            
    </div>
    
    
        <div class="col-md-8" style="text-align: center">
    <address>
        <h3><strong>Gusto-Higher Education Institute</strong></h3>
            <div class="text-center">
        #332(D), Pyay Road,(Near Maharmyaing), Sanchaung Township, Yangon, Myanmar.<br/>
        <b>Ph: +95-1-503715, +95 9 8628806.</b>

            </div>

        <h3><strong>Gusto-IT Professional Institute</strong></h3>
        #26, 14th Street, (Lower Block), Lanmadaw Township, Yangon, Myanmar.<br/>
        <b>Ph: +95-1-503715, +95 9 8628806.</b>
    </address>

    <address>
        <strong>Web:</strong>  <a href="mailto:Support@example.com">www.gustohei.com</a><br />
        <strong>Mail:</strong> <a href="mailto:Marketing@example.com">info@gustohei.com</a><br />
        <strong>Facebook:</strong> <a href="mailto:Marketing@example.com">www.facebook.com/gustoinstitute</a>
    </address>
    </div>
        </div>
</asp:Content>
