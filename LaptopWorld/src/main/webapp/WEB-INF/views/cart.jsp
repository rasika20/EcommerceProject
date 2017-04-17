<%@ include file="header.jsp"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<div class="container">
	<div ng-app="myApp">
		<div class="table-responsive">
			<table class="table" ng-controller="myController">
				<tr>
					<td>Product ID</td>
					<td>Product Image</td>
				</tr>
				<tr ng-repeat="ciList in myscope">
					<td>{{ciList.productId}}</td>
					<td><img src="resources/productImages/productImage-{{ciList.productId}}.jpg" /></td>
				</tr>
			</table>
		</div>
	</div>
</div>

<script>
	var a = angular.module('myApp', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${citems}
	});
</script>

<%@ include file="footer.jsp"%>