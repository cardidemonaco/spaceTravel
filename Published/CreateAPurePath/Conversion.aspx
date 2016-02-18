<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Conversion.aspx.vb" Inherits="CreateAPurePath_Conversion" %>

<%@ Register src="../Menu.ascx" tagname="Menu" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Create a Conversion by submitting revenue.&nbsp;
        <asp:TextBox ID="txtAmount" runat="server">$</asp:TextBox>
&nbsp;<asp:Button ID="btnAmount" runat="server" Text="Submit Revenue Here!" />
        <br />
        <asp:Label ID="lblAmount" runat="server" ForeColor="Green"></asp:Label>
        <br />
        <br />
        !@#$%^&amp;*()<br />
    
    </div>
        <uc1:Menu ID="Menu1" runat="server" />
    </form>
</body>
</html>
