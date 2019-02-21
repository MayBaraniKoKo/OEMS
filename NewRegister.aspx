<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="NewRegister.aspx.cs" Inherits="OEMS.NewRegister" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">




    <table class="nav-justified">
        <tr>
            <td style="font-weight: 700; font-size: x-large; width: 308px">
                <asp:Label ID="Label2" runat="server" style="font-size: large" Text="You can create your account here!"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700; width: 308px">
                <asp:Label runat="server" AssociatedControlID="UserName" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="UserName" Width="200px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
            </td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 308px; font-weight: 700">
                <asp:Label runat="server" AssociatedControlID="Email" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="Email" Width="200px" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 308px; font-weight: 700">Password</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 308px; font-weight: 700">
                <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register" />
            </td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 308px">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 308px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>




</asp:Content>
