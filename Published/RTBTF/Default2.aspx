<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="RealTimeBusinessTransactionsFeed_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="gvRTBTF" runat="server">
        </asp:GridView>
    
        <br />
        <asp:HyperLink ID="linkRTBTF" runat="server">linkRTBTF</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="linkBDBTB" runat="server">linkBDBTB</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
