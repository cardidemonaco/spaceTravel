<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TryMethods.aspx.vb" Inherits="Methods_TryMethods" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    In Code<br />
    <asp:TextBox ID="txtA" runat="server">1</asp:TextBox>
    +<asp:TextBox ID="txtB" runat="server">b</asp:TextBox>
    <asp:Button ID="btn1" runat="server" Text="=" />
    <asp:TextBox ID="txtC" runat="server">c</asp:TextBox>
    <br />
    <br />
    Using Class and Function/Method<br />
    <asp:TextBox ID="txtClassA" runat="server"></asp:TextBox>
    +<asp:TextBox ID="txtClassB" runat="server"></asp:TextBox>
    <asp:Button ID="btnClass" runat="server" Text="=" />
    <asp:TextBox ID="txtClassC" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
</body>
</html>
