<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="Cookies.aspx.vb" Inherits="Cookies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Button ID="btnSetCookies" runat="server" Text="Print Cookie!" />
    <br />
    <br />
    <asp:Label ID="lblCardi" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblDtCookieRequest" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="lblDtCookieResponse" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    Create a Cookie<br />
    Name:
    <asp:TextBox ID="txtCookieName" runat="server"></asp:TextBox>
    <br />
    Value:
    <asp:TextBox ID="txtCookieValue" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="txtCreateNewCookie" runat="server" Text="Create new Cookie" />
    <br />

</asp:Content>

