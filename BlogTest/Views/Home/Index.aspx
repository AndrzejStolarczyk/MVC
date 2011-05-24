<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace = "BlogTest.Models"%>

<asp:Content ID="Menu" ContentPlaceHolderID="Menu" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <h2><%: ViewData["Msg"] %></h2>
    <div class="content">
    <%foreach (Post item in (IEnumerable<Post>)ViewData["ListaPostów"])
      {%>
           <%: Html.ActionLink(item.tytuł + " (" + item.data_dodania.ToShortDateString() + ")", "../Home/Wpis/" + item.id) %> <br />
           <%=item.treść %> <br /><br />
            <%: Html.ActionLink("Komentarze (" + ViewData["Post" + item.id] + ")", "../Home/Wpis/" + item.id) %><br /><br /><hr />
           <br />
      <%} %>
     </div>
</asp:Content>
