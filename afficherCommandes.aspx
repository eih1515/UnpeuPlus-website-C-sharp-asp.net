<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="afficherCommandes.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <br />
    <div style="margin-left: 720px">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    <div style="margin-left: 720px">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/compte.aspx">Retour</asp:HyperLink>
    </div>
    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="column1" 
        DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
        Height="117px" Width="595px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="column1" HeaderText="Numero Commande" 
                InsertVisible="False" ReadOnly="True" SortExpression="column1" />
            <asp:BoundField DataField="NumLivre" HeaderText="NumLivre" 
                SortExpression="NumLivre" />
            <asp:BoundField DataField="NumClient" HeaderText="NumClient" 
                SortExpression="NumClient" />
            <asp:BoundField DataField="dateCommande" HeaderText="dateCommande" 
                SortExpression="dateCommande" />
            <asp:BoundField DataField="dateLivraison" HeaderText="dateLivraison" 
                SortExpression="dateLivraison" />
            <asp:BoundField DataField="quantites" HeaderText="quantites" 
                SortExpression="quantites" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/librairie.mdb" 
        SelectCommand="SELECT [N°] AS column1, [NumLivre], [NumClient], [dateCommande], [dateLivraison], [quantites] FROM [commandes] WHERE ([NumClient] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label2" Name="NumClient" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    <br />
    <br />
    <asp:AccessDataSource ID="AccessDataSourceCMD" runat="server" 
        DataFile="~/librairie.mdb" 
        SelectCommand="SELECT [NumLivre], [dateCommande], [dateLivraison], [quantites], [N°] AS column1 FROM [commandes] WHERE ([NumClient] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label2" Name="NumClient" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    </form>
</asp:Content>

