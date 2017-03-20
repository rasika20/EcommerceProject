<%@include file="header.jsp" %>

<style type="text/css">
	body { padding-top: 140px; }
</style>

<div class="container-fluid pushfooter">
<div class="row">
<div class="col-xs-12" >
<h2 style="background-color:#263238; color:white; text-align:center">CONTACT ADDRESS</h2>
<hr>

</div>
</div>


	<div class="row text-center">
		<div class="col-sm-3 col-xs-12 first-box">
        <h1><span class="glyphicon glyphicon-earphone"></span></h1>
        <h3>Phone</h3>
        <p>+123-456-789-10</p><br>
    </div>
    <div class="col-sm-3 col-xs-12 second-box">
        <h1><span class="glyphicon glyphicon-home"></span></h1>
        <h3>Location</h3>
        <p>India - Maharastra - Mumbai</p><br>
    </div>
    <div class="col-sm-3 col-xs-12 third-box">
        <h1><span class="glyphicon glyphicon-send"></span></h1>
        <h3>E-mail</h3>
        <p>laptopworldonline@gmail.com</p><br>
    </div>
    <div class="col-sm-3 col-xs-12 fourth-box">
    	<h1><span class="glyphicon glyphicon-leaf"></span></h1>
        <h3>Web</h3>
        <p>www.laptopworld.com</p><br>
    </div>
	</div>

</div>

<script>
$(document).ready(function() {
	$(".col-xs-12").click(function () {
	   
		$("#map").toggleClass("maplock");
	  });
});
$("#wrapper").toggleClass("toggled");
</script>
<%@include file="footer.jsp" %>