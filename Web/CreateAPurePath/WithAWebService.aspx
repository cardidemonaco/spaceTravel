<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="WithAWebService.aspx.vb" Inherits="CreateAPurePath_WithAWebService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <p>
            <strong>Calculate Sales Tax 123</strong></p>
        <p>
            <a target="_blank" href="http://cd-dotnet4-2.clients.nasa.cpwr.corp:200/WebServices/SalesTaxCalculator.asmx">Access the Web Service directly</a><br />
           </p>
        <p>
            <asp:TextBox ID="txtAmount" runat="server">Amount</asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnCalcSalesTax" runat="server" Text="Calculate Sales Tax!" />
        </p>
        <p>
            Sales Tax:
            6%<asp:TextBox ID="txtSalesTax" runat="server"></asp:TextBox>
        &nbsp;7%<asp:TextBox ID="txtSalesTax7" runat="server"></asp:TextBox>
        </p>
        <p>
            Total:
            6%<asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
        &nbsp;7%<asp:TextBox ID="txtTotal7" runat="server"></asp:TextBox>
        </p>
         <p>
             Double original amount (just to throw in another web service...)
             <asp:TextBox ID="txtDouble" runat="server"></asp:TextBox>
        </p>
</asp:Content>

