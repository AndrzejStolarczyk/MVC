<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BlogTest.Models.Pomocnicza>" %>

<asp:Content ID="Menu" ContentPlaceHolderID="Menu" runat="server">
	Dodaj
</asp:Content>


<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
<script src="../../Scripts/MicrosoftAjax.js" type="text/javascript"></script>
<script src="../../Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
<script src="../../Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>
<div class="content">
    <h2>Dodawanie nowego posta</h2>
    <% Html.EnableClientValidation(); %>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
   
                        
            <div class="editor-label">
                <%: Html.Label("Tytuł posta:") %>
            </div>
            <div class="editor-inne">
                <%: Html.TextBoxFor(model => model.tytuł) %>
                <%: Html.ValidationMessage("Musisz podać tytuł posta") %>
            </div>
            <br />
            <div class="editor-label">
                <%: Html.Label("Treść posta:") %>
            </div>
            <div class="editor-tresc">
                <%: Html.TextAreaFor(model => model.treść, 9, 72, null)%>
                <%: Html.ValidationMessage("Musisz podać treść postu.") %>
            </div>
            <br />
            <div class="editor-label">
                <%: Html.Label("Status posta: ") %>
                <%: Html.CheckBoxFor(model => model.status) %>
                <%: Html.Label("Widoczny") %>
                <%: Html.ValidationMessage("Musisz wybrać status!") %>
            </div>
            <br />
            <div class="editor-label">
                <%: Html.Label("Data dodania:") %>
            </div>
            <div class="editor-inne">
                <%: Html.TextBoxFor(model => model.data_dodania) %>               
            </div>          
            <br />
            <div class="editor-label">
                <%: Html.Label("Opis:")%>
            </div>
            <div class="editor-inne">
                <%: Html.TextBoxFor(model => model.description) %>
                <%: Html.ValidationMessage("Musisz podać opis postu")%>
            </div>
            <br />
            <div class="editor-label">
                <%: Html.Label("Słowa kluczowe:") %>
            </div>
            <div class="editor-inne">
                <%: Html.TextBoxFor(model => model.keywords) %>
                <%: Html.ValidationMessage("Musisz podać słowa kluczowe") %>
            </div>
            <br />
            <input type="submit" value="Dodaj wpis" />
             <div class="editor-label">
            <%: ViewData["AkcjaDodania"]%>
            </div>            

    <% } %>
    <br /><br />
    <div>
        <%: Html.ActionLink("Powrót do listy wpisów", "Index") %>
    </div>
</div>
</asp:Content>

