<%@ include file="header.jsp"%>

<div ng-app="myApp" ng-controller="myController">

View product page
<br><br><br>
<img src="resources/productImages/productImage-{{myscope.productId}}.jpg"
			height="300px" width="400px" alt="img not uploaded" />
<br>
{{myscope.productName}}
<br>
{{myscope.productDescription}}
<br>
<br>
<a href="/addToCart-{productId}" class="btn btn-primary" >Add to Cart</a>

</div>

<script>
var a = angular.module('myApp', []);
a.controller('myController', function($scope) {
	$scope.myscope = ${product}
});
</script>


<%@ include file="footer.jsp"%>