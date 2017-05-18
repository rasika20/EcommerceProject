<%@include file="header.jsp" %>

<style type="text/css">
	body { padding-top: 140px; }
</style>


<iframe
  width="100%"
  height="450"
  style="border:2px solid #263238;"
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyD-wlcP30SbHGQi7nIJ2MxDS8T9Q3m6igQ
    &q=evvening+glory,raheja+vihar" allowfullscreen>
</iframe>

<br><br>
<div class="container-fluid pushfooter">
<div class="row">
<div class="col-xs-12" >
<h2 style="background-color:orange; color:black; text-align:center">CONTACT ADDRESS</h2>
<hr>

</div>
</div>


	<div class="row text-center">
		<div class="col-sm-3 col-xs-12">
        <h1><span class="glyphicon glyphicon-earphone"></span></h1>
        <h3>Phone</h3>
        <p>+123-456-789-10</p><br>
    </div>
    <div class="col-sm-3 col-xs-12">
        <h1><span class="glyphicon glyphicon-home"></span></h1>
        <h3>Location</h3>
        <p>India - Maharastra - Mumbai</p><br>
    </div>
    <div class="col-sm-3 col-xs-12">
        <h1><span class="glyphicon glyphicon-send"></span></h1>
        <h3>E-mail</h3>
        <p>laptopworld@gmail.com</p><br>
    </div>
    <div class="col-sm-3 col-xs-12">
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