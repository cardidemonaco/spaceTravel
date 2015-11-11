<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Page02.aspx.vb" Inherits="Page02" %>

<%@ Register src="Menu.ascx" tagname="Menu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
        #2<br />
        <uc1:Menu ID="Menu1" runat="server" />
        <img src="../img/Cardi.png" />
    </div>
    </form>
</body>
</html>
