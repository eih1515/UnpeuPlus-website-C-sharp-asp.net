<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="compte.aspx.cs" Inherits="Default2" %>

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
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<div class="style1">

         <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="804" height="100">
<param name="movie" value="compte.swf">
<param name="quality" value="high">
<embed src="images/compte.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="780" height="100"></embed>
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
               <%-- <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Small" 
                    NavigateUrl="~/ModifierPwd.aspx">Modifier Mot de Passe</asp:HyperLink>--%>
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Small" 
                    NavigateUrl="~/FaireUneCommande.aspx">Faire une commande</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Small" 
                    NavigateUrl="~/afficherCommandes.aspx">Mes Commandes</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Small" 
                    NavigateUrl="~/AnnulerCommandeClient.aspx">Annuler une commande</asp:HyperLink>
            </td>
        </tr>
    </table>

</form>
</asp:Content>

