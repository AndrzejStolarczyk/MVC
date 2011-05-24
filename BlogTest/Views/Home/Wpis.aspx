<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>


<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
<script src="../../Scripts/MicrosoftAjax.js" type="text/javascript"></script>
<script src="../../Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
<script src="../../Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>
    <div class="content">
        <% Html.EnableClientValidation(); %>
    <% using (Html.BeginForm())
       {%>
        <%: Html.ValidationSummary(true)%>
   
        <% BlogTest.Models.Post p = (BlogTest.Models.Post)ViewData["Post"]; %>
        <% using (Html.BeginForm())
           {%>
        <h1>
            <%= p.tytuł%>
        </h1>
        <div class="wyroznienie">
            Dodano:
            <%= p.data_dodania%>
            <% if (p.data_modyfikacji != null)
               {  %>
            <br />
            Zmodyfikowano:
            <%= p.data_modyfikacji%>
            <% } %>
        </div>
        <p>
            <%= p.treść%>
        </p>
        <hr />
            Autor:
            <br />
            <%: Html.TextBox("Autor")%>
            <br />
            Treść komentarza:
            <br />
            <%: Html.TextArea("Komentarz", null, 9, 72, null)%>
            <br />            
            <%= ViewData["AkcjaDodaniaKomentarza"]%>
            <br />
            <input type="submit" value="Dodaj komentarz" style="width:auto" />
            <br />
            <hr />
        <h1>
            Komentarze:</h1>
        <% if (((List<BlogTest.Models.Komentarze>)ViewData["Komentarze"]).Count == 0)
           { %>
        brak
        <%} %>
        <% foreach (BlogTest.Models.Komentarze k in (List<BlogTest.Models.Komentarze>)ViewData["Komentarze"])
           { %>
        <div class="wyroznienie">
            <%= k.autor%>
            dnia
            <%= (k.data_dodania)%>
            napisał:
            </div>
            <div class="content">
            <%= k.treść%>
            <br />
            <br />
        </div>
        <br />
        <br />
        <% } %>
        <%: Html.Hidden("ID", p.id)%>
        <% } %>
    </div>
    <div class="content">
        <br /><%: Html.ActionLink("Powrót do listy wpisów", "Index")%>
    </div>
    <%} %>
</asp:Content>
