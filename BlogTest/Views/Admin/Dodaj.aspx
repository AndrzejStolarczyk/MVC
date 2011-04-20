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
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.id) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id) %>
                <%: Html.ValidationMessageFor(model => model.id) %>
            </div>
            
            <div class="editor-label">
                <%: Html.Label("Tytuł posta") %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.tytuł) %>
                <%: Html.ValidationMessageFor(model => model.tytuł) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.treść) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.treść) %>
                <%: Html.ValidationMessageFor(model => model.treść) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.status) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.status) %>
                <%: Html.ValidationMessageFor(model => model.status) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.data_dodania) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.data_dodania) %>
                <%: Html.ValidationMessageFor(model => model.data_dodania) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.data_modyfikacji) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.data_modyfikacji) %>
                <%: Html.ValidationMessageFor(model => model.data_modyfikacji) %>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.description) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.description) %>
                <%: Html.ValidationMessageFor(model => model.description) %>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.keywords) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.keywords) %>
                <%: Html.ValidationMessageFor(model => model.keywords) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

