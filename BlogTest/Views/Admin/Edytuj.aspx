<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BlogTest.Models.Post>" %>

<asp:Content ID="Menu" ContentPlaceHolderID="Menu" runat="server">
	Edytuj
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
<div class="content">
<% BlogTest.Models.Pomocnicza post = (BlogTest.Models.Post)ViewData["post"]; %>
    

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
            <h2>Edycja posta o ID <%=post.id %></h2>
            
            <div class="editor-label">
                <%: Html.Label("Tytuł posta:") %>
            </div>
            <div class="editor-inne">
                <%: Html.TextBox("Tytuł:", post.tytuł) %>
                <%: Html.ValidationMessageFor(model => model.tytuł) %>
            </div>
            <br />
            <div class="editor-label">
                <%: Html.Label("Treść posta:") %>
            </div>
            <div class="editor-tresc">
                <%: Html.TextArea("Treść:", post.treść, 9, 72, null) %>
                <%: Html.ValidationMessageFor(model => model.treść) %>
            </div>
            <br />
            <div class="editor-label">
               <%: Html.Label("Status posta") %>
                <%: Html.CheckBox("Status: ", post.status) %>
                <%: Html.Label("Widoczny") %>
            </div>
            <br />
            <div class="editor-label">
                <%: Html.Label("Data dodania:") %>
            </div>
            <div class="editor-inne">
                <%: Html.TextBox("data_dodania", String.Format("{0:g}", post.data_dodania)) %>
                <%: Html.ValidationMessageFor(model => model.data_dodania) %>
            </div>
            <br />
            <div class="editor-label">
                <%: Html.Label("Data modyfikacji:")%>
            </div>
            <div class="editor-inne">
                <%: Html.TextBox("data_modyfikacji", String.Format("{0:g}", post.data_modyfikacji)) %>
                <%: Html.ValidationMessageFor(model => model.data_modyfikacji) %>
            </div>
            <%: Html.Hidden("id", post.id) %>
            
            <p>
                <input type="submit" value="Zapisz zmiany" />
            </p>

            <div class="editor-label">
            <%: ViewData["AkcjaEdycji"] %>
            </div>

    <% } %>

    <div>
        <%: Html.ActionLink("Powrót do listy wpisów", "../Admin/Index") %>
    </div>
</div>
</asp:Content>

