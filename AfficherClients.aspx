<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AfficherClients.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <h3 style="text-align: center">
        La liste des clients</h3>
    <div style="margin-left: 720px">
        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/AdminCompte.aspx">Retour</asp:HyperLink>
    </div>
    <div style="margin-left: 200px">
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            CellPadding="4" DataSourceID="AccessDataSource1" ForeColor="#333333" 
            GridLines="None" Height="96px" Width="451px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
    </div>
    <br />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/librairie.mdb" 
        SelectCommand="SELECT [NumClient], [nom], [prenom], [dateInscription], [login], [password] FROM [clients]">
    </asp:AccessDataSource>
    </form>
</asp:Content>

