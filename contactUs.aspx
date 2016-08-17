<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 75%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" 
            Text="Pour nous contacter, merci de remplir ce formulaire"></asp:Label>
    </p>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Nom:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Adresse mail:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="YourEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Sujet:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="YourSubject" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Message:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="Comments" runat="server" Height="85px" Width="331px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Envoyer" 
                    Width="75px" />
&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="DisplayMessage" runat="server" ForeColor="#009933"></asp:Label>
            </td>
        </tr>
    </table>
    </form>

</asp:Content>

