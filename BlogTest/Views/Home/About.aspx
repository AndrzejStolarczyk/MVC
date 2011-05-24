<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Menu" ContentPlaceHolderID="Menu" runat="server">
    About Us
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
 <script src="../../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script src="../../Scripts/ui/jquery.ui.core.js" type="text/javascript"></script>
    <script src="../../Scripts/ui/jquery.ui.position.js" type="text/javascript"></script>
    <script src="../../Scripts/ui/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="../../Scripts/ui/jquery.ui.dialog.js" type="text/javascript"></script>
<script>
    $(function () {
        $("#dialog").dialog();
    });
	</script>



<div class="demo">

<div id="dialog" title="Basic dialog">
	<p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
</div>

<!-- Sample page content to illustrate the layering of the dialog -->
<div class="hiddenInViewSource" style="padding:20px;">
<p>Sed vel diam id libero <a href="http://example.com">rutrum convallis</a>. Donec aliquet leo vel magna. Phasellus rhoncus faucibus ante. Etiam bibendum, enim faucibus aliquet rhoncus, arcu felis ultricies neque, sit amet auctor elit eros a lectus.</p>
<form>
	<input value="text input"><br>
	<input type="checkbox">checkbox<br>
	<input type="radio">radio<br>
	<select>
		<option>select</option>
	</select><br><br>
	<textarea>textarea</textarea><br>
</form>
</div><!-- End sample page content -->

</div><!-- End demo -->

</asp:Content>
