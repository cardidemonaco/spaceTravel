<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="JavaScriptADK_Examples_6-1.aspx.vb" Inherits="JavaScriptADK_Examples_61" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script src="../Script_6-1/dtagentApi.js"></script>
    
    <script type="text/javascript">
        function a() {
            var action = dynaTrace.enterAction("Click on Cardi's Action", "click");

            dynaTrace.reportEvent('Message during custom action!1');
            alert("Hi!");
            dynaTrace.reportWarning('Message during custom action!2');
            dynaTrace.reportError('Message during custom action!3');


            var subaction = dynaTrace.enterAction("Cardi's Subaction", "click");
            alert("Hi!2");
            dynaTrace.leaveAction(subaction);

            dynaTrace.leaveAction(action);
        }
        function b() {
            var action = dynaTrace.enterAction("Should Result in TWO leaveActions", "click");

            alert("This is the line of code after the enterAction");

            dynaTrace.reportEvent('Message during custom action!1');
            dynaTrace.reportWarning('Message during custom action!2');
            dynaTrace.reportError('Message during custom action!3');
            
            dynaTrace.leaveAction(action); //First leaveAction
            dynaTrace.leaveAction(action); //Second leaveAction for the same enterAction
        }
        function c() {
            var action = dynaTrace.enterAction("Measure-AdkString", "click");

            alert("This is the line of code after the enterAction");

            dynaTrace.reportEvent('AdkString1');

            dynaTrace.reportEvent('AdkString2');
            dynaTrace.reportWarning('AdkString2');

            dynaTrace.reportEvent('AdkString3');
            dynaTrace.reportWarning('AdkString3');
            dynaTrace.reportError('AdkString3');

            dynaTrace.leaveAction(action); 
        }


        
        function d() {
    

            var action = dynaTrace.enterAction("This should always be the last Action in the Visit", "click");

            alert("This is going to be a Visit as long as you keep this window open.");

       

            dynaTrace.leaveAction(action); 
            dynaTrace.endVisit();
        }


        function e() {

            asdf;
            var action = dynaTrace.enterAction("Short Visit", "click");

            alert("This is going to be a Visit as long as you keep this window open.");



            dynaTrace.leaveAction(action);
            dynaTrace.endVisit();

        }


    </script>

    <script type="text/javascript" src="../Script/CompuwareUEM.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Documentation: <a href="https://community.compuwareapm.com/community/display/DOCDT60/JavaScript+ADK+and+JavaScript+Ajax+ADK">https://community.compuwareapm.com/community/display/DOCDT60/JavaScript+ADK+and+JavaScript+Ajax+ADK</a> </p>
    <p>
        <input id="btnAction" type="button" value="create a Subaction" onclick="a();" /></p>
    <p>
        <input id="btnActionB" type="button" value="Run function b() with two leaveActions" onclick="b();" /></p>
     <p>
        <input id="btnActionC" type="button" value="BT Splitting for AdkString" onclick="c();" /></p>
    <p>
         <input id="btnPipeIssue1" type="button" value="the JavaScript|ADK" onclick="c();" /></p>
    <p>
        <asp:LinkButton ID="btnPipeIssue2" runat="server" PostBackUrl="~/Default.aspx">NOT the JavaScript|ADK</asp:LinkButton>
    </p>

     <p>
         <input id="btnEndVisit" type="button" value="End Visit Quickly" onclick="d();" /></p>
       <p>
         <input id="btnJavaScriptError" type="button" value="JavaScript Error" onclick="e();" /></p>
</asp:Content>

