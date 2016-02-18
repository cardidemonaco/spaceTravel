<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ReturnValue.aspx.vb" Inherits="Pages_ReturnValue" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btnGiveReturn" runat="server" Text="Give me a Return Value!" />
&nbsp;<br />
        <br />
        Return:<br />
        <asp:RadioButtonList ID="rblReturn" runat="server">
            <asp:ListItem>Hello, world!</asp:ListItem>
            <asp:ListItem>this</asp:ListItem>
            <asp:ListItem>Cardi DeMonaco Jr</asp:ListItem>
            <asp:ListItem>statedescr=failure</asp:ListItem>
            <asp:ListItem>com.gazoo.services.travel.businesslogic.booking.BLItineraryPurchaseResponseImpl@12c5d58[state=2,statedescr=failure]</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        Give me this one instead:
        <asp:TextBox ID="txtInstead" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="btnInstead" runat="server" Text="INSTEAD" />
        <br />
        <br />
        Returned: 
        <asp:TextBox ID="txtReturn" runat="server"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
