﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BlogTest.Models.AdminRepository>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Menu" runat="server">
	Usuń
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <h2>Usuwanie posta</h2>

    <h3><%: ViewData["AkcjaUsuwania"] %></h3>
    |
    <%: Html.ActionLink("Powrót do listy", "Index") %>

    

</asp:Content>

