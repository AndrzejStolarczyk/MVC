<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BlogTest.Models.Pomocnicza>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Dodaj
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script src="../../Scripts/MicrosoftAjax.js" type="text/javascript"></script>
<script src="../../Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
<script src="../../Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>
    <h2>Dodaj</h2>
    <% Html.EnableClientValidation(); %>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Dodawanie nowego wpisu</legend>
                        
            <div class="editor-label">
                <%: Html.Label("Tytuł posta") %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.tytuł) %>
                <%: Html.ValidationMessageFor(model => model.tytuł) %>
            </div>
            
            <div class="editor-label">
                <%: Html.Label("Treść posta") %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.treść) %>
                <%: Html.ValidationMessageFor(model => model.treść) %>
            </div>
            
            <div class="editor-label">
                <%: Html.Label("Status posta (0 niewidoczny, 1 widoczny)") %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.status) %>
                <%: Html.ValidationMessageFor(model => model.status) %>
            </div>
            
            <div class="editor-label">
                <%: Html.Label("Data dodania") %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.data_dodania) %>
                <%: Html.ValidationMessageFor(model => model.data_dodania) %>
            </div>          

            <div class="editor-label">
                <%: Html.Label("Opis")%>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.description) %>
                <%: Html.ValidationMessageFor(model => model.description) %>
            </div>

            <div class="editor-label">
                <%: Html.Label("Słowa kluczowe") %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.keywords) %>
                <%: Html.ValidationMessageFor(model => model.keywords) %>
            </div>
            <div class="editor-label">
            <%: ViewData["AkcjaDodania"]%>
            </div> 
            <p>
                <input type="submit" value="Dodaj wpis" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Powrót do listy wpisów", "Index") %>
    </div>

</asp:Content>

