<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModifierPwd.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 56%;
        }
        .style2
        {
            width: 187px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p style="margin-left: 720px">
        <asp:Label ID="Label5" runat="server"></asp:Label>
    </p>
    <p style="margin-left: 680px">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/compte.aspx">Retour</asp:HyperLink>
    </p>
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="Nom:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="NVnom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="Prénom:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="NVprenom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Mot de passe actuel:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Nouveau Mot de passe:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Confirmation:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button2" runat="server" Text="Annuler" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Changer le mot de passe" Width="171px" />
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

