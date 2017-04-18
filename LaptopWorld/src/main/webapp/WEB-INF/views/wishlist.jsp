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
					<td>Decide</td>
					<td>abcd</td>
				</tr>
				<tr ng-repeat="wliList in myscope">
					<td>{{wliList.productId}}</td>
					<td><img src="resources/productImages/productImage-{{wliList.productId}}.jpg" 
						height="210" width="280" /></td>
					<td><a href="addToCartFromWishList-{{wliList.productId}}" class="btn btn-warning">Add To Cart</a>
						<a href="#" class="btn btn-danger">Buy Now</a></td>
					<td><a href="deleteFromWishList-{{wliList.wishListItemId}}" class="btn close" 
						style="margin-right: 20px;">&times;</a></td>
				</tr>
			</table>
		</div>
	</div>
</div>

<script>
	var a = angular.module('myApp', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${wlitems}
	});
</script>

<%@ include file="footer.jsp"%>