<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BlogTest.Models.AdminRepository>" %>

<asp:Content ID="Menu" ContentPlaceHolderID="Menu" runat="server">
	Usuń
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">

    <div class="content">

    <h3><%: ViewData["AkcjaUsuwania"] %></h3>
    |
    <%: Html.ActionLink("Powrót do listy", "Index") %>

    </div>

</asp:Content>

