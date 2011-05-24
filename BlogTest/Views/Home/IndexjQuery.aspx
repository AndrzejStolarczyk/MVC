<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BlogTest.Models.HomeRepository>" %>



<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">

    <script src="../../Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>

    <script src="../../Scripts/ui/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="../../Scripts/ui/jquery.ui.core.js" type="text/javascript"></script>
    <script src="../../Scripts/jquery.ui.accordion.js" type="text/javascript"></script>
    <script>
        $(function () {
            $("#accordion").accordion();
        });
	</script>
    <h2><%: ViewData["Msg"] %></h2>
    
    <div id="accordion"class="content">
      
    <%foreach (BlogTest.Models.Post item in (IEnumerable<BlogTest.Models.Post>)ViewData["ListaPostów"])
      {%>
          <h3><a href="#"><%: Html.Label(item.tytuł + " (" + item.data_dodania.ToShortDateString() + ")" ) %> </a><br /></h3> 
          <div>
          <p>
          <%=item.treść %> <br /><br />
            <%: Html.ActionLink("Komentarze (" + ViewData["Post" + item.id] + ")", "../Home/Wpis/" + item.id) %><br /><br />
           <br />
           </p>
           </div>
      <%} %>
      </div>
    
</asp:Content>
