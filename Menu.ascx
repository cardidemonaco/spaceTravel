<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Menu.ascx.vb" Inherits="Menu" %>
<asp:Menu ID="MainMenu" runat="server" ForeColor="WhiteSmoke" Orientation="Horizontal">
    <DynamicMenuStyle BackColor="Black" />
    <Items>
        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="spaceTravel HOME" 
            Value="spaceTravel HOME"></asp:MenuItem>
        <asp:MenuItem Text="Create a PurePath..." Value="Create a PurePath...">
            <asp:MenuItem Text="Of a Certain Length..." Value="Of a Certain Length">
                <asp:MenuItem NavigateUrl="~/CreateAPurePath/ThreadingSleep.aspx" Text="With a Variable Sleep Time" Value="With a Variable Sleep Time"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/CreateAPurePath/LastingApproximately05Seconds.aspx" Text="Lasting Approximately 5 Seconds" Value="Lasting Approximately 5 Seconds"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/CreateAPurePath/LastingApproximately10Seconds.aspx" Text="Lasting Approximately 10 Seconds" Value="Lasting Approximately 10 Seconds"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/CreateAPurePath/LastingApproximately15Seconds.aspx" Text="Lasting Approximately 15 Seconds" Value="Lasting Approximately 15 Seconds"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem 
                Text="With a Database Query" 
                Value="With a Database Query">
                <asp:MenuItem NavigateUrl="~/CreateAPurePath/WithADatabaseQuery.aspx" Text="And WHERE Clause" Value="With a Database Query"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/CreateAPurePath/WithADBQuery.aspx" Text="Taking Advantage of Statement Aggregation" Value="With a Database Query that takes advantage of Statement Aggregation"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Database/RunStoredProcedure.aspx" Text="As a Stored Procedure (with Parameters?)" Value="That Has a Stored Procedure (with Parameters?)"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem 
                Text="Capturing Values" Value="Capturing Values">
                <asp:MenuItem NavigateUrl="~/Math/Algebra.aspx" Text="From Parameters" Value="That Uses Custom Measures"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Pages/ReturnValue.aspx" Text="From the Return Value" Value="That Has a Method with a Return Value"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/CreateAPurePath/WithDeepObjectAccess.aspx" Text="Using Deep Object Access" Value="With Deep Object Access"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/CreateAPurePath/WithAWebService.aspx" Text="With a Web Service" Value="With a Web Service"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/CreateAPurePath/Conversion.aspx" 
                Text="With a Conversion" 
                Value="With a Conversion"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/CreateAPurePath/WithAVisualBasicClass.aspx" Text="With a Visual Basic Class" Value="With a Visual Basic Class"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/img/moon.jpg" Text="That Contains an Image" Value="That Contains an Image"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="UEM: Create a Visit..." Value="UEM: Create a Visit...">
            <asp:MenuItem NavigateUrl="~/Pages/Page01.aspx" 
                Text="With Many Different Web Requests / Page Actions" 
                Value="With Many Different Web Requests / Page Actions"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/UEM-CreateAVisit/WithXHR.aspx" Text="With XHR (?)" Value="With XHR (?)"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/UEM-CreateAVisit/WithManuallyDefinedLocation.aspx" Text="With a Manually Defined Location" Value="With a Manually Defined Location"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/UEM-CreateAVisit/WithAnIframe.aspx" Text="With an IFRAME" Value="With an IFRAME"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/UEM-CreateAVisit/Cookies.aspx" Text="With a Cookie" Value="With a Cookie"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="UEM: Health Check..." Value="UEM: Health Check">
            <asp:MenuItem NavigateUrl="https://community.compuwareapm.com/community/display/DOCDT55/UEM+Health+Check" 
                Text="DOCUMENTATION: UEM Health Check" Value="DOCUMENTATION: UEM Health Check">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Pages/InjectionCheck-TestPageContainsInvalidHtml.aspx" 
                Text="Invalid HTML" Value="Invalid HTML"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="JavaScript ADK..." Value="JavaScript ADK">
            <asp:MenuItem NavigateUrl="~/UEM-CreateAVisit/FifteenPuzzle.aspx" Text="Fifteen Puzzle" Value="Fifteen Puzzle"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/samples/index.html" Text="Samples" Value="Samples"></asp:MenuItem>
            <asp:MenuItem Text="JavaScript Example" Value="JavaScript Example" NavigateUrl="~/JavaScriptADK/JavaScriptADK_Examples.aspx"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/SilverlightApplicationTestPage.aspx" Text="Silverlight Example" Value="Silverlight Example"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/JavaScriptADK/SUPDT-5037.aspx" Text="SUPDT-5037" Value="SUPDT-5037"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/CreateAPurePath/WithATaggedWebRequest.aspx" Text="Run Load Test" Value="Run Load Test"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/CreateAPurePath/WithPerformanceWarehouseData.aspx" Text="dynaTrace Stats" Value="dynaTrace Stats"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/RTBTF/Default.aspx" Text="RTBTF" Value="RTBTF">
            <asp:MenuItem NavigateUrl="~/RTBTF/Default.aspx" Text="Adds Blank Row" Value="RTBTF"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/RTBTF/Default2.aspx" Text="View Only" Value="RTBTF View Only"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/UEM/DNT/DoNotTrack.aspx" Text="Do Not Track" Value="Do Not Track"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/dynaTraceMonitor/x.aspx" Text="dtM" Value="dtM"></asp:MenuItem>
    </Items>
    <StaticMenuItemStyle HorizontalPadding="8px" />
</asp:Menu>

