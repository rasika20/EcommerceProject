<%@ include file="header.jsp"%>

<style type="text/css">
body {
	padding-top: 140px;
}
.pre1 {
	background-color: white;
	border-color: white;
	font-family: serif;
	font-size: 20px;
}
</style>

<div class="container">
	<div ng-app="myApp" ng-controller="myController">
		<div ng-repeat="ciList in myscope">
			<div class="row">
				<div class="col-md-3">
					<img src="resources/productImages/productImage-{{ciList.productId}}.jpg" 
						height="150" width="200" />
				</div>
				<div class="col-md-4">
					<pre class="pre1"><strong>{{ciList.productName}}</strong></pre>
				</div>
				<div class="col-md-1" style="font-size: 20px;">
					<strong>&#8377;{{ciList.newAmount}}</strong>
					<br><br><br>
					<del><small>&#8377;{{ciList.oldAmount}}</small></del>
				</div>
				<div class="col-md-1">
					<input type="number" value="{{ciList.cartItemQuantity}}" min="1" max="10" />
				</div>
				<div class="col-md-2">
				
				</div>
				<div class="col-md-1 text-right">
					<div class="tooltipright">
						<a href="deleteFromCart-{{ciList.cartItemId}}" class="btn close" 
							style="margin-right: 20px;">&times;
						</a>
						<span class="tooltiptextright">Remove<br>From Cart</span>
					</div>
					<br>
					<br>
					<br>
					<div class="tooltipright">
						<a href="addToWishListFromCart-{{ciList.productId}}"
							style="text-decoration: none!important" >
							<i class="fa fa-heart" style="font-size: 20px; color: orange;
								margin-right: 33px" ></i>
						</a>
						<span class="tooltiptextright">Add to<br>WishList</span>
					</div>
				</div>
			</div>
			<hr>
		</div>
		<br>
		<div ng-if="myscope.length != 0">
			<a href="#" class="btn btn-warning pull-right"
				style="height: 40px; width: 200px; padding-top: 10px;"> CheckOut </a>
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