<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="livres.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
    DataKeyNames="Numlivre" DataSourceID="AccessDataSourceLivres" 
    ForeColor="#333333" GridLines="None" Width="756px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Numlivre" HeaderText="Numlivre" ReadOnly="True" 
            SortExpression="Numlivre" />
        <asp:BoundField DataField="titre" HeaderText="titre" SortExpression="titre" />
        <asp:BoundField DataField="auteur" HeaderText="auteur" 
            SortExpression="auteur" />
        <asp:BoundField DataField="edition" HeaderText="edition" 
            SortExpression="edition" />
        <asp:BoundField DataField="anneEdition" HeaderText="anneEdition" 
            SortExpression="anneEdition" />
        <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
        <asp:BoundField DataField="categorie" HeaderText="categorie" 
            SortExpression="categorie" />
        <asp:BoundField DataField="prix" HeaderText="prix" SortExpression="prix" />
        <asp:BoundField DataField="quantite" HeaderText="quantite" 
            SortExpression="quantite" />
        <asp:BoundField DataField="description" HeaderText="description" 
            SortExpression="description" />
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
<asp:AccessDataSource ID="AccessDataSourceLivres" runat="server" 
    DataFile="~/librairie.mdb" 
    SelectCommand="SELECT [Numlivre], [titre], [auteur], [edition], [anneEdition], [type], [categorie], [prix], [quantite], [description] FROM [livres] ORDER BY [Numlivre]">
</asp:AccessDataSource>
</form>
</asp:Content>

