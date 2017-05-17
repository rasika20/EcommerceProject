<%@ include file="header.jsp"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<div>
	<h1 class="text-center blink_me">Error 403. You Are Not Authorized To View This Page.</h1>
</div>


<script>
$("#wrapper").toggleClass("toggled");
(function blink() { 
	  $('.blink_me').fadeOut(500).fadeIn(500, blink); 
	})();
</script>

<%@ include file="footer.jsp"%>