<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="WithAVisualBasicClass.aspx.vb" Inherits="WithAVisualBasicClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
&nbsp;
    <asp:DropDownList ID="ddlOperation" runat="server">
        <asp:ListItem Value="Add">+</asp:ListItem>
        <asp:ListItem Value="Subtract">-</asp:ListItem>
        <asp:ListItem Value="Multiply">*</asp:ListItem>
        <asp:ListItem Value="Divide">/</asp:ListItem>
    </asp:DropDownList>
&nbsp;<asp:TextBox ID="txtB" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnEquals" runat="server" Text="=" />
&nbsp;<asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
&nbsp;
</asp:Content>

