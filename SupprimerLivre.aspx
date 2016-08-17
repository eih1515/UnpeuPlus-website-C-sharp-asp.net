<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SupprimerLivre.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 50%;
            margin-left: 200px;
        }
        #form1
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
   
    <h3> Suppression d'un livre</h3>
    <div style="margin-left: 680px">
        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/AdminCompte.aspx">Retour</asp:HyperLink>
    </div>
    <br />
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Le numéro de livre a supprimer"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
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

