<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="nouveaute.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="AccessDataSourceNouveaute" ForeColor="#333333" 
    GridLines="None" Width="752px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="description" HeaderText="description" 
            SortExpression="description" />
        <asp:BoundField DataField="dateApparution" HeaderText="dateApparution" 
            SortExpression="dateApparution" />
        <asp:BoundField DataField="dateEcheance" HeaderText="dateEcheance" 
            SortExpression="dateEcheance" />
        <asp:BoundField DataField="NumLivre" HeaderText="NumLivre" 
            SortExpression="NumLivre" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:AccessDataSource ID="AccessDataSourceNouveaute" runat="server" 
    DataFile="~/librairie.mdb" 
    SelectCommand="SELECT [description], [dateApparution], [dateEcheance], [NumLivre] FROM [nouveautes] ORDER BY [NumLivre]">
</asp:AccessDataSource>
</form>
</asp:Content>

