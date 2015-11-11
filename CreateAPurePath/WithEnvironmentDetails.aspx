<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="WithEnvironmentDetails.aspx.vb" Inherits="CreateAPurePath_WithEnvironmentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    Host Name
    <asp:TextBox ID="txtHost" runat="server"></asp:TextBox>
    <br />
    Available Space on C:\
    <asp:TextBox ID="txtSpaceOnC" runat="server"></asp:TextBox>
    <br />
    Free Memory
    <asp:TextBox ID="txtFreeMemory" runat="server"></asp:TextBox>
    <br />
    Operating System
    <asp:TextBox ID="txtOperatingSystem" runat="server" Width="308px"></asp:TextBox>
    <br />
    OS Version
    <asp:TextBox ID="txtOSVersion" runat="server" Width="533px"></asp:TextBox>
    <br />
    Environment Variables
    <asp:ListBox ID="lbEnvVar" runat="server" Height="381px"></asp:ListBox>
    <br />
    <br />
</asp:Content>

