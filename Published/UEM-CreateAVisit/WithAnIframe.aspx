<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="WithAnIframe.aspx.vb" Inherits="UEMCreateAVisit_WithAnIframe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <iframe src="http://www.votecardi.com" width="600"></iframe>
    <br /><br />

    <a target="spacetravel" href="FifteenPuzzle.aspx">Change spaceTravel IFRAME</a><br />
    <iframe name="spacetravel" src="../Default.aspx" width="600"></iframe>



    <iframe name="spacetravel" src="OpenLinkInParent.aspx" width="800"></iframe>

</asp:Content>

