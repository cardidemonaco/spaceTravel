<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DynamicPause.aspx.vb" Inherits="DynamicPause" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="/dtagent42_db3_3003.js" data-dtconfig="rid=RID_4261487263"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtSeconds" runat="server" Text="Enter an amount of seconds" Width="500px"></asp:TextBox><br />
        <asp:Button ID="btnWait" runat="server" Text="Wait This^ Many Seconds" /><br />
        <asp:TextBox ID="txtMessage" runat="server" Text="Click This^ Button" Width="500px"></asp:TextBox>
    </div>
    </form>
</body>
</html>
