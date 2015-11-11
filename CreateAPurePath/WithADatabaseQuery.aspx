<%@ Page Title="" Language="VB" MasterPageFile="~/OfPuppets.master" AutoEventWireup="false" CodeFile="WithADatabaseQuery.aspx.vb" Inherits="CreateAPurePath_WithADatabaseQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    
        <p>Create a PurePath with a Database Query by clicking <asp:Button ID="btnPresidents" runat="server" Text="HERE" /> to show the US Presidents.</p>
    
        <p><asp:GridView ID="gvPresidents" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="president_number" HeaderText="President Number" />
                <asp:BoundField DataField="president_name_common" HeaderText="President Name" />
                <asp:BoundField DataField="president_term_start" HeaderText="Took Office" DataFormatString="{0:d}" />
                <asp:BoundField DataField="president_term_end" HeaderText="Left Office" DataFormatString="{0:d}" />
            </Columns>
        </asp:GridView></p>
        
        <p>Show only Presidents with <asp:TextBox ID="txtName" runat="server"></asp:TextBox> in their name. [Press ENTER]</p>
        
    
    </div>
   

</asp:Content>

