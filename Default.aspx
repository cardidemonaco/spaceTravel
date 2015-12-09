<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="DefaultHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>spaceTravel</title>
    <style type="text/css">
        body{ color: whitesmoke; }
        a{ color: White; }
        a:hover { text-decoration: underline; }
        .style1 { width: 184px; height: 120px; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <p>This Application is used to help understand dynaTrace. Connect to my 
            dynaTrace Server in your Client using the following credentials:</p>
        <p>Host: cd-dt-0506-p.clients.nasa.cpwr.corp<br />
            Port: 2021<br />
            User Name: admin<br />
            Password: admin<br />
            System Profile: spaceTravel</p>
        <p>
            <a target="_blank" href="http://cd-dt-0506-p.clients.nasa.cpwr.corp:8020/">Services</a> <br />
            <a target="_blank" href="https://cd-dt-0506-p.clients.nasa.cpwr.corp:9911/index.jsp">Web Dashboards</a> <br />
            <a target="_blank" href="http://cd-dt-0506-p.clients.nasa.cpwr.corp:8020/webstart/Client/client.jnlp">Webstart Client</a>
        </p>
        <p>
            <strong>New Link</strong><br />
            <asp:TextBox ID="txtLinkName" runat="server">Link Name</asp:TextBox>
            <br />
            <asp:TextBox ID="txtLinkUrl" runat="server">Link URL</asp:TextBox>
            <br />
            <asp:Button ID="btnLinkNew" runat="server" CausesValidation="False" Text="Add Link to Database" />
        </p>
        <p>
            <asp:GridView ID="gvLinks" runat="server" CellPadding="4">
            </asp:GridView>
        </p>
        
        <br /><br />
  

        <asp:CheckBox ID="cbTest" runat="server" AutoPostBack="True" />

        &nbsp;<asp:TextBox ID="txtTest" runat="server">0</asp:TextBox>
        <br />
        <br />
        <input id="btnMouseUp" type="button" value="Click here for MouseUp" onmouseup="alert('Hi!!!');" /><br />
    </div>

    <p>
        <img alt="Microsoft .NET Framework" class="style1" 
            src="img/microsoft-net-framework-3_jpg.png" /></p>

    <div id="fb-root"></div>
                    <script type="text/javascript">
                        (function (d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0];
                            if (d.getElementById(id)) { return; }
                            js = d.createElement(s); js.id = id;
                            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                            fjs.parentNode.insertBefore(js, fjs);
                        }(document, 'script', 'facebook-jssdk'));
                    </script>

                    <div class="fb-like" data-href="http://facebook.com/bricktownglass" data-send="false" data-width="450" data-show-faces="false" data-colorscheme="dark"></div>

</asp:Content>

