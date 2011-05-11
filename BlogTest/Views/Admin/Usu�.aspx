<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BlogTest.Models.AdminRepository>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Usuń
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Usuń</h2>

    <h3><%: ViewData["AkcjaUsuwania"] %></h3>
    |
    <%: Html.ActionLink("Powrót do listy", "Index") %>

    

</asp:Content>

