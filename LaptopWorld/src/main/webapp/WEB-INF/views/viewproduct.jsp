<%@ include file="header.jsp"%>

<div ng-app="myApp" ng-controller="myController">

View product page
<br><br><br>
{{myscope.productId}}
<br>
{{myscope.productName}}
<br>
<br>
<a href="#" class="btn btn-primary" >Add to Cart</a>

</div>

<script>
var a = angular.module('myApp', []);
a.controller('myController', function($scope) {
	$scope.myscope = ${product}
});
</script>


<%@ include file="footer.jsp"%>