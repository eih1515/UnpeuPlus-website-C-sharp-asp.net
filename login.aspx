<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    #form1
    {
        text-align: center;
    }
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 169px;
        }
        .style3
        {
            width: 169px;
            height: 43px;
            text-align: left;
        }
        .style4
        {
            height: 43px;
            text-align: left;
        }
        .style5
        {
            width: 169px;
            height: 36px;
            text-align: left;
        }
        .style6
        {
            height: 36px;
            text-align: left;
        }
        .style7
        {
            text-align: left;
        }
        .style8
        {
            width: 169px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <br />
    <div style="margin-left: 720px">
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Cmd-login.aspx">Retour</asp:HyperLink>
    </div>
    <br />
<br />
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Nom d'utilisateur"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label2" runat="server" Text="Mot de passe"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="Label3" runat="server" ForeColor="#009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="text-align: left; margin-left: 0px" Text="Se connecter" Width="100px" />
            </td>
        </tr>
    </table>
<br />
<br />
<br />
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RecoveryPassword.aspx">Mot de passe oublié</asp:HyperLink>
<br />
<br />
<br />
</form>
</asp:Content>

