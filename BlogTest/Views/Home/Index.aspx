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
           <%=item.tytuł%> (<%=item.data_dodania.ToShortDateString() %>)
           <div class="treść_posta">
           <%=item.treść %> 
           </div>
           <div class="komentarze_box">
           Komentarze (<%= ViewData["Post" + item.id] %>)
           </div>
           <br />
      <%} %>
     </div>
</asp:Content>
