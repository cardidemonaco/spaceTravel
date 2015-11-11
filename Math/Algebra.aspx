<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Algebra.aspx.vb" Inherits="Math_Algebra" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>Delay</strong> for each Postback:
        <asp:TextBox ID="txtDelay" runat="server">1000</asp:TextBox>
&nbsp;milliseconds<br />
        <br />
        <strong>Addition</strong><br />
        <asp:TextBox ID="txtAdd1" runat="server"></asp:TextBox>
&nbsp;+
        <asp:TextBox ID="txtAdd2" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnAdd" runat="server" Text="=" />
&nbsp;<asp:Label ID="lblSum" runat="server"></asp:Label>
        <br />
        <br />
        <strong>Decimal Floor</strong><br />
        Desc: I am using Decimal.Floor so that I can monitor the Integer parameter in a 
        Measure for Argument Value<br />
        INCIDENTS: Entering a value greater than 100 will trigger an Incident for &quot;CARDI 
        - Decimal.Floor Parameter Average Over 100&quot; (checks every 10 seconds for avg)<br />
&nbsp; Also, the value in the Violations part of the Incident is rounded to two decimal 
        places.<br />
        <asp:TextBox ID="txtFloor" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnFloor" runat="server" Text="Hit the Floor!" />
    
    </div>
    </form>
</body>
</html>
