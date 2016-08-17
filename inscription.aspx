<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="inscription.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    #form1
    {
        text-align: center;
    }
        .style1
        {
            width: 65%;
        }
        .style2
        {
            width: 174px;
        }
        .style3
        {
            width: 246px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div style="margin-left: 680px">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cmd-login.aspx">Retour</asp:HyperLink>
    </div>
<br />
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Nom:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Prénom:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Nom d'utilisateur:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Mot de passe:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="Confirmation:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Annuler" 
                    Width="86px" />
            </td>
            <td class="style3">
                <asp:Label ID="Label6" runat="server" ForeColor="#009933"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Envoyer" 
                    Width="82px" />
            </td>
        </tr>
    </table>
<br />
</form>
</asp:Content>

