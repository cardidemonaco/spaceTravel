<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RunStoredProcedure.aspx.vb" Inherits="Database_RunStoredProcedure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            This page runs two Stored Procedures after clicking the button:<br />
        </p>
        <ol>
            <li>EXEC [dbo].[Sp_Cardi] 22,&#39;Goodbye me&#39;</li>
            <li>Sp_Cardi with two Parameters: &quot;3&quot; and &quot;asdf&quot;</li>
        </ol>
        <p>
            <br />
            <asp:Button ID="btnSp" runat="server" Text="Run Stored Procedure" />
        </p>
    </div>
    </form>
</body>
</html>
