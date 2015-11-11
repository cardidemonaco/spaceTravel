<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="WithADBQuery.aspx.vb" Inherits="CreateAPurePath_WithADBQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <br />
        <asp:Button ID="btnSubmitRandom" runat="server" 
            Text="Submit TEN SQL Statements to THREE different Databases on TWO different Servers" />
        <br />
        <br />
        <asp:Label ID="lblSQL01" runat="server" Text="lblSQL01"></asp:Label>
        <br />
        <asp:Label ID="lblSQL02" runat="server" Text="lblSQL02"></asp:Label>
        <br />
        <asp:Label ID="lblSQL03" runat="server" Text="lblSQL03"></asp:Label>
        <br />
        <asp:Label ID="lblSQL04" runat="server" Text="lblSQL04"></asp:Label>
        <br />
        <asp:Label ID="lblSQL05" runat="server" Text="lblSQL05"></asp:Label>
        <br />
        <br />
        Last Submitted:
        <asp:Label ID="lblLastSubmitted" runat="server" Text="Label" ForeColor="Green"></asp:Label>
        <br />
 
    </div>
</asp:Content>

