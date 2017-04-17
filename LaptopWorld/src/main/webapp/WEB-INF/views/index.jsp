
<%@ include file="header.jsp"%>

<%@ include file="slider.jsp"%>

<style>
.preclass {
    background-color: white;
    border-color: white;
    font-family: serif;
    font-size: 16px;
} 
</style>

<br>
<br>
<div ng-app="myApp" ng-controller="myController" >

<div class="row" ng-repeat="p in myscope" style="margin-bottom: 20px; 
		margin-left: 20px; margin-right: 20px; margin-top: 20px; ">
	<div class="col-md-3" style="padding-top: 10px; padding-bottom: 10px" >
		<img src="resources/productImages/productImage-{{p.productId}}.jpg"
			height="200px" width="260px" alt="img not uploaded" />
	</div>	
		<div class="col-md-9" style="padding-bottom: 10px;">
			<pre class="preclass">{{p.productName}}</pre>
			<br>
			<a href="addToCart-{{p.productId}}" class="btn btn-success ">Add To Cart</a>
			<a href="#" class="btn btn-warning">Add To WishList</a>
			<a href="#" class="btn btn-danger">Buy Now</a>
		</div>
	</div>
</div>
<script>
	var a = angular.module('myApp', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${products}
	});
</script>

<%@ include file="footer.jsp"%>