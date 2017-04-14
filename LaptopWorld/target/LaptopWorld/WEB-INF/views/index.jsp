
<%@ include file="header.jsp"%>

<%@ include file="slider.jsp"%>

<br>
<br>
<div ng-app="myApp" ng-controller="myController">

<div class="row" ng-repeat="p in myscope" >
	<div class="col-md-3" >
		<img src="resources/productImages/productImage-{{p.productId}}.jpg"
			height="210px" width="270px" alt="img not uploaded" />
	</div>	
		<div class="col-md-9" >
			{{p.productName}}
		</div>
	</div>
	<br>
	<br>
</div>
<script>
	var a = angular.module('myApp', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${products}
	});
</script>

<%@ include file="footer.jsp"%>