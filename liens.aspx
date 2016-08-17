<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="liens.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="NumLiens" DataSourceID="AccessDataSource1" ForeColor="#333333" 
        GridLines="None" style="text-align: center" Width="707px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NumLiens" HeaderText="NumLiens" ReadOnly="True" 
                SortExpression="NumLiens" />
            <asp:BoundField DataField="nomSite" HeaderText="nomSite" 
                SortExpression="nomSite" />
            <asp:BoundField DataField="lienSite" HeaderText="lienSite" 
                SortExpression="lienSite" />
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
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/librairie.mdb" SelectCommand="SELECT * FROM [liens]">
    </asp:AccessDataSource>
    </form>
</asp:Content>

