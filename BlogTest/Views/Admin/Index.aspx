<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BlogTest.Models.AdminRepository>>" %>

<asp:Content ID="Menu" ContentPlaceHolderID="Menu" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">

    <div class="content">
    <% foreach (var item in (List<BlogTest.Models.Post>)ViewData["ListaPostów"])
       { %>
    
        <tr>
            <td>                        
                <%=item.tytuł %><br />
                <%: Html.ActionLink("Edytuj", "Edytuj/" + item.id, new {/*  id=item.id */}) %> |
                <%: Html.ActionLink("Szczegóły", "../Home/Wpis/" + item.id, new { /* id=item.PrimaryKey */ })%> |
                <%: Html.ActionLink("Usuń", "Usuń/" + item.id, new { /* id=item.PrimaryKey */ })%>
                <hr /><br />
            </td>
        </tr>
    
    <% } %>

    <p>
        <%: Html.ActionLink("Dodaj nowy post", "../Admin/Dodaj") %>
    </p>
    </div>

</asp:Content>

