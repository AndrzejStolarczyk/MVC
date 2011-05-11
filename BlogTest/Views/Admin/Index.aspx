<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BlogTest.Models.AdminRepository>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
        </tr>

    <% foreach (var item in (List<BlogTest.Models.Post>)ViewData["ListaPostów"])
       { %>
    
        <tr>
            <td>
                <%=item.tytuł %>
                <%: Html.ActionLink("Edytuj", "Edytuj/" + item.id, new {/*  id=item.id */}) %> |
                <%: Html.ActionLink("Szczegóły", "../Home/Wpis/" + item.id, new { /* id=item.PrimaryKey */ })%> |
                <%: Html.ActionLink("Usuń", "Usuń/" + item.id, new { /* id=item.PrimaryKey */ })%>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

