<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="WithAWebService2.aspx.vb" Inherits="CreateAPurePath_WithAWebService2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <p>
        Enter a date to see the City Council during that period:
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnRoster" runat="server" Text="Get Roster!" />
    </p>
    <p>
        <asp:Label ID="lblRoster" runat="server" Text="lblRoster"></asp:Label>
    </p>


</asp:Content>

