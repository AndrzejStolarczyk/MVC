<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BlogTest.Models.Post>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edytuj
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<% BlogTest.Models.Post post = (BlogTest.Models.Post)ViewData["post"]; %>
    <h2>Edytuj</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.tytuł) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBox("tytuł", post.tytuł) %>
                <%: Html.ValidationMessageFor(model => model.tytuł) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.treść) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBox("treść", post.treść) %>
                <%: Html.ValidationMessageFor(model => model.treść) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.status) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBox("status", post.status) %>
                <%: Html.ValidationMessageFor(model => model.status) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.data_dodania) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBox("data_dodania", String.Format("{0:g}", post.data_dodania)) %>
                <%: Html.ValidationMessageFor(model => model.data_dodania) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.data_modyfikacji) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBox("data_modyfikacji", String.Format("{0:g}", post.data_modyfikacji)) %>
                <%: Html.ValidationMessageFor(model => model.data_modyfikacji) %>
            </div>
            <%: Html.Hidden("id", post.id) %>
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

