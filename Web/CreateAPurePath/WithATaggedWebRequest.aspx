<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="WithATaggedWebRequest.aspx.vb" Inherits="AddingHttpTag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Use this page to create Tagged Web Requests. For more information about this, please visit:<br />
    <asp:HyperLink ID="linkLoadTesting" runat="server">Documentation</asp:HyperLink>
 

<br />
<br />
Before running the test below, the &quot;spaceTravel&quot; System Profile must have the &quot;Load Testing&quot; Sensor Configuration active.<br />
<br />
    Host
    <asp:TextBox ID="txtHost" runat="server">spaceTravel</asp:TextBox>
    <br />
NA
    <asp:TextBox ID="txtNA" runat="server">Timer NAme of request</asp:TextBox>
<br />
PC
<asp:TextBox ID="txtPC" runat="server">Page Context</asp:TextBox>
<br />
<asp:TextBox ID="TextBox3" runat="server">Nothing Yet...</asp:TextBox>
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="Run Load Test" />
</asp:Content>

