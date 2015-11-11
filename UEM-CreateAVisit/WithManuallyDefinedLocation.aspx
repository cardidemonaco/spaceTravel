<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="WithManuallyDefinedLocation.aspx.vb" Inherits="WithManuallyDefinedLocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script>
        function httpGet(theUrl)
        {
            var xmlHttp = null;

            xmlHttp = new XMLHttpRequest();
            xmlHttp.open("GET", theUrl, false);
            xmlHttp.setRequestHeader("rproxy_remote_address", "12.107.188.42")
            xmlHttp.send(null);
            return xmlHttp.responseText;
            //return 'success';
        }


    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Using <a href="http://www.ipligence.com/geolocation">http://www.ipligence.com/geolocation</a>, I am finding Locations by IP.</p>
    <p>
        Also, I am using 22.*.*.* as &quot;fake&quot; addresses...</p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </p>
    <p>
        <input id="Button2" type="button" value="JavaScript Button" onclick="httpGet('./WithManuallyDefinedLocation.aspx')" /><input id="Button3" type="button" value="JavaScript Button - new page" onclick="httpGet('../CreateAPurePath/WithAWebService.aspx')" /></p>

    <script>
        httpGet('../CreateAPurePath/WithAWebService.aspx');

    </script>
    

</asp:Content>

