<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="Angular.aspx.vb" Inherits="Angular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript" src="../Script/angular.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">

        function StoreController() {
            alert('Welcome, Cardi!');
        }

    </script>

    <asp:TextBox ID="txtTest" runat="server"></asp:TextBox>

</asp:Content>

