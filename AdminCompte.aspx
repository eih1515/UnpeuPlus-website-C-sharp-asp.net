<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminCompte.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #form1
    {
        text-align: left;
    }
    .style1
    {
        text-align: right;
    }
    .style2
    {
        width: 32%;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="form1" runat="server">
<div class="style1">

         <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="804" height="100">
<param name="movie" value="compteAdmin.swf">
<param name="quality" value="high">
<embed src="images/compteAdmin.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="780" height="100"></embed>
</object>


</div>

&nbsp;&nbsp;<br />
    &nbsp;

    <asp:Label ID="Label1" runat="server"></asp:Label>

    &nbsp;<div style="margin-left: 680px">
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/login.aspx">Déconnexion</asp:HyperLink>
    </div>

    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="style2">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Small" 
                    NavigateUrl="~/AjouterLivre.aspx">Ajouter un livre</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink7" runat="server" Font-Size="Small" 
                    NavigateUrl="~/SupprimerLivre.aspx">Supprimer un livre</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink6" runat="server" Font-Size="Small" 
                    NavigateUrl="~/AjouterLien.aspx">Ajouter un lien</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
               <%-- <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Small" 
                    NavigateUrl="~/ModifierPwd.aspx">Modifier Mot de Passe</asp:HyperLink>--%>
                <asp:HyperLink ID="HyperLink8" runat="server" Font-Size="Small" 
                    NavigateUrl="~/SupprimerLien.aspx">Supprimer lien</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink9" runat="server" Font-Size="Small" 
                    NavigateUrl="~/AfficherClients.aspx">Afficher tous les clients</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink10" runat="server" Font-Size="Small" 
                    NavigateUrl="~/SupprimerClient.aspx">Supprimer Client</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink11" runat="server" Font-Size="Small" 
                    NavigateUrl="~/AnnulerCommande.aspx">Annuler une commande</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Small" 
                    NavigateUrl="~/FaireUneCommandeAdmin.aspx">Faire une commande</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Small" 
                    NavigateUrl="~/afficherCommandesAdmin.aspx">Mes Commandes</asp:HyperLink>
            </td>
        </tr>
    </table>

</form>

</asp:Content>

