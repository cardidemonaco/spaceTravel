<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="LastingApproximately15Seconds.aspx.vb" Inherits="CreateAPurePath_LastingApproximately15Seconds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="refresh" content="15" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
    <p>You just waited 15 seconds.  This page will refresh 15 seconds after the page loads.</p>
    <p>In the PurePaths Dashlet you will see a new PurePath named "/CreateAPurePath/LastingApproximately15Seconds.aspx".</p>  
    <p>This PurePath will have a Method instrumented: CreateAPurePath_LastingApproximately15Seconds.Page_Load(System.Object, System.EventArgs)</p>
    <p>This Method cannot be instrumented (but have tried in my System Profile) because it is a "System" Method: System.Threading.Thread.SleepInternal(int)</p>
    </div>
</asp:Content>

