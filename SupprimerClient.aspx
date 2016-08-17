<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SupprimerClient.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
        .style1
        {
            width: 55%;
            margin-left: 200px;
        }
        .style2
        {
            height: 38px;
        }
        .style3
        {
            width: 173px;
        }
        .style4
        {
            height: 38px;
            width: 173px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <h3>
        Suppression d&#39;un client</h3>
    <div style="margin-left: 680px">
        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/AdminCompte.aspx">Retour</asp:HyperLink>
    </div>
    <br />
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Login du client à supprimer"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style2">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <br />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Supprimer" Width="80px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    </form>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

