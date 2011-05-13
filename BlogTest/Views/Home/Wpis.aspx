<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="post">
    <% BlogTest.Models.Post p = (BlogTest.Models.Post)ViewData["Post"]; %>
              <h1><%= p.tytuł  %> </h1>
              <p> Dodano: <%= p.data_dodania %> 
              <% if (p.data_modyfikacji != null)
                 {  %>
                   <br /> Zmodyfikowano: <%= p.data_modyfikacji %>
              <% } %>
              </p>

              <p> <%= p.treść %> </p> <br /> <br />

              <p>Komentarze:</p>
              <% if (((List<BlogTest.Models.Komentarze>)ViewData["Komentarze"]).Count == 0)
                 { %>
                 brak
              <%} %>

              <% foreach (BlogTest.Models.Komentarze k in (List<BlogTest.Models.Komentarze>)ViewData["Komentarze"])
                 { %>
              
                 <div class="komentarz">
                  <%= k.autor %> dnia <%= (k.data_dodania) %> napisał: <br />
                  <%= k.treść %>                  
                 </div>
                 <br />
                 <br />
                 <% } %>      
     </div>

</asp:Content>
