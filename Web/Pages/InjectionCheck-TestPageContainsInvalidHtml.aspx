<%@ Page Language="VB" AutoEventWireup="false" CodeFile="InjectionCheck-TestPageContainsInvalidHtml.aspx.vb" Inherits="Page01IncorrectSyntax" %>

<%@ Register src="Menu.ascx" tagname="Menu" tagprefix="uc1" %>

TEXT SHOULD NOT BE HERE

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Here is the normal part of the page that has valid HTML.
    
    </div>
    </form>
</body>
</html>
