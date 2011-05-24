<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BlogTest.Models.HomeRepository>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <script src="../../Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="../../Scripts/ui/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="../../Scripts/ui/jquery.ui.core.js" type="text/javascript"></script>
    <script src="../../Scripts/ui/jquery.ui.tabs.js" type="text/javascript"></script>
    <script>
        $(function () {
            $("#tabs").tabs();
        });
    </script>
    <h2>
        <%: ViewData["Msg"] %></h2>
    <div id="tabs" class="content">
        <ul>
            <% int i = 1; %>
            <%foreach (BlogTest.Models.Post item in (IEnumerable<BlogTest.Models.Post>)ViewData["ListaPostów"])
              {%>
            <li><a href="#zakładka-<%: i %>">
                <%: Html.Label(item.tytuł + " (" + item.data_dodania.ToShortDateString() + ")" ) %>
            </a></li>
            <% i++;
      } %>
        </ul>
        <% int j = 1; %>
        <%foreach (BlogTest.Models.Post item in (IEnumerable<BlogTest.Models.Post>)ViewData["ListaPostów"])
          {%>
        <div id="zakładka-<%: j %>">
            <p>
                <%=item.treść %>
               
            </p>
        </div>
        <% j++;
      } %>
    </div>
</asp:Content>
