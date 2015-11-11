<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="ThreadingSleep.aspx.vb" Inherits="CreateAPurePath_ThreadingSleep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <p>In the PurePaths Dashlet you will see a new PurePath named "/CreateAPurePath/ThreadingSleep.aspx".</p>  
    <p>This PurePath will have a Method instrumented: CreateAPurePath_ThreadingSleep.btnSleepLength_Click(System.Object, System.EventArgs)</p>
    <p>This Method cannot be instrumented (but have tried in my System Profile) because it is a "System" Method: System.Threading.Thread.SleepInternal(int)</p>

        <p>
            Create a PurePath <asp:TextBox ID="txtSleepLength" runat="server"></asp:TextBox> milliseconds long right <asp:Button ID="btnSleepLength" runat="server" Text="NOW" /></p>

    </div>
</asp:Content>

