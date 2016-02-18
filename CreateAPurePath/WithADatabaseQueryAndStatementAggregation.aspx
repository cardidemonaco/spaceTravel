<%@ Page Language="VB" AutoEventWireup="false" CodeFile="WithADatabaseQueryAndStatementAggregation.aspx.vb" Inherits="CreateAPurePath_WithADatabaseQueryAndStatementAggregation" %>

<%@ Register src="../Menu.ascx" tagname="Menu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Button ID="btnSubmitRandom" runat="server" 
            Text="Submit TEN SQL Statements to THREE different Databases on TWO different Servers" />
        <br />
        <br />
        Last Submitted:
        <asp:Label ID="lblLastSubmitted" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnQueryViaMethod" runat="server" Text="Submit Query via Method instead of directly in Sub" />
        <br />
        <br />
        <uc1:Menu ID="Menu1" runat="server" />
        <br />
    
    </div>
    </form>
</body>
</html>
