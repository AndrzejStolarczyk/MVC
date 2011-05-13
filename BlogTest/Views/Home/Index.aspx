<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace = "BlogTest.Models"%>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Msg"] %></h2>
    <div class="lista_postów">
    <%foreach (Post item in (IEnumerable<Post>)ViewData["ListaPostów"])
      {%>
           <%: Html.ActionLink(item.tytuł + " (" + item.data_dodania.ToShortDateString() + ")", "../Home/Wpis/" + item.id) %>
           <div class="treść_posta">
           <%=item.treść %> 
           </div>
           <div class="komentarze_box">
            <%: Html.ActionLink("Komentarze (" + ViewData["Post" + item.id] + ")", "../Home/Wpis/" + item.id) %>
           </div>
           <div class="opis">
           </div>
           <br />
      <%} %>
     </div>
</asp:Content>
