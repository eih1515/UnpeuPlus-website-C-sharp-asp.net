<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="aProposDeNous.aspx.cs" Inherits="aProposDeNous" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .imgLeft
        {
            width: 307px;
            height: 291px;
            margin-top: 1px;
        }
        .imgRight
        {
            margin-top: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>
        BIENVENU SUR LA PAGE WEB DE LA LIBRAIRIE UNPEUPLUS!
    </h1>
    &nbsp;<p class = "petit">
        La librairie UnPeuPlus vous offre un acces failes à differents sortes de livres
        à savoir les livres sur la technologie, les affaires et l'informatique pour vos
        besoins scolaires et personnelles.
    <img src="images/livre2.jpg" class="imgRight" /><img src="images/livre1.jpg" class="imgLeft" /></p>
    &nbsp;<p class = "petit">
        Vous voulez apprendre l'informatique, la technologie ou les affaires? La librairie
        UnPeuPlus vous offre l'accès sur des livres qui peuvent vous aider dans votre apprentissage;
        que ca soit l'apprentissage à la maison, au collège ou à l'université!
    </p>
   <%-- <img src="images/livre3.jpeg" class="imgLeft" />--%>
    <p class = "petit">
        Il suffit seulement de vous inscrire et faire vos commandes, et ils sont à votre
        porte dans le plus bref délai!</p>
    <p class = "petit">
        &nbsp;</p>
    <p class = "petit">
        &nbsp;</p>
    <p class = "petit">
        &nbsp;</p>
    <p class = "petit">
        &nbsp;</p>
    <%--<img src="images/livre2.jpg" class="imgRight" />--%>
</asp:Content>
