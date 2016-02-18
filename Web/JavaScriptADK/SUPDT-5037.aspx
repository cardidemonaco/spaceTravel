<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="SUPDT-5037.aspx.vb" Inherits="JavaScriptADK_SUPDT5037" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
    <script src="../Script_6-1/dtagentApi.js"></script>
    <!-- <script src="../Script/dtagentXhrApi.js"></script> -->
    <script type="text/javascript">
        function a() {
            //My example
            var action = dynaTrace.enterAction("CustomCardi:SUPDT-5037", "click");
            alert("#1");
            dynaTrace.leaveAction(action);

            //Example from case
            var laName = dynaTrace.enterAction('CustomCardi:eName', '', new Date(), '');
            alert(new Date());
            dynaTrace.leaveAction(laName);

            //Example from case UPDATED
            var laName2 = dynaTrace.enterAction('CustomCardi:eName2', 'click', new Date().getTime(), '');
            alert(new Date().getTime());
            dynaTrace.leaveAction(laName2);
        }
      
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <p><input id="btnAction" type="button" value="Create an Action" onclick="a();" /></p>
</asp:Content>

