<%@ include file="header.jsp"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<div class="container">
	<div ng-app="myApp" ng-controller="myController">
		<div class="table-responsive">
			<table class="table">
				<tr>
					<td>Product ID</td>
					<td>Product Image</td>
					<td>Product Quantity</td>
					<td>Decide</td>
					<td>abcd</td>
				</tr>
				<tr ng-repeat="ciList in myscope">
					<td>{{ciList.productId}}</td>
					<td><img src="resources/productImages/productImage-{{ciList.productId}}.jpg" 
						height="210" width="280" /></td>
					<td><input type="number" value="1" min="1" max="10"></td>
					<td><a href="addToWishListFromCart-{{ciList.productId}}" class="btn btn-warning">Add To WishList</a>
						<a href="#" class="btn btn-danger">Buy Now</a></td>
					<td><a href="deleteFromCart-{{ciList.cartItemId}}" class="btn close" 
						style="margin-right: 20px;">&times;</a></td>
				</tr>
			</table>
			<br>
			<div ng-if="myscope.length != 0">
				<a href="#" class="btn btn-warning btn-block"> CheckOut </a>
			</div>
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