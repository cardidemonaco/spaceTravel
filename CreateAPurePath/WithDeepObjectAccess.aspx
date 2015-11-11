<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="WithDeepObjectAccess.aspx.vb" Inherits="CreateAPurePath_WithDeepObjectAccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Create your Local Government!</p>
    <p>
        Change the Mayor:
        <asp:TextBox ID="txtMayor" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnMayor" runat="server" Text="Change them!" />
        <br />
        Current Mayor:
        <asp:Label ID="lblMayor" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Change the City Manager:
        <asp:TextBox ID="txtManager" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnManager" runat="server" Text="New one!" />
        <br />
        Current City Manager:
        <asp:Label ID="lblManager" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Add a Councilperson:
        <asp:TextBox ID="txtCouncilAdd" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnCouncilAdd" runat="server" Text="We have a new member!" />
        <br />
        Remove a Councilperson:
        <asp:TextBox ID="txtCouncilRemove" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnCouncilRemove" runat="server" Text="We lost a member..." />
        <br />
        Current Council:
        <asp:Label ID="lblCouncil" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnPrintCouncil" runat="server" Text="Print Council..." />
        <br />
        <asp:Label ID="lblPrintCouncil" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

