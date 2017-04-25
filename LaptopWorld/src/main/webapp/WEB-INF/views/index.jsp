
<%@ include file="header.jsp"%>

<%@ include file="slider.jsp"%>

<br>
<br>
<br>
<br>

<div class="container" ng-app="myApp" ng-controller="myController" >
	<div class="row text-center" style="background-color: orange;">
		<div class="col-md-3"></div>
		<div class="col-md-6" style="font-size: 35px"> Best Deals!</div>
		<div class="col-md-3"></div>
	</div>
	<br>
	<div class="row">
		<div ng-repeat="p in myscope">
			<div class="col-md-4 text-center" style="border: 1px solid black;
				border-radius: 15px; height: 480px; width: 320px; padding-top: 20px;
				padding-bottom: 10px; margin-left: 50px; margin-bottom: 20px; ">	
				<a href="viewProduct-{{p.productId}}" style="text-decoration: none!important">
					<img src="resources/productImages/productImage-{{p.productId}}.jpg"
						alt="{{p.productName}}" height="150" width="200" >
				</a>
				<br>
				<pre>{{p.productName}}</pre>
				
				<div style="background-color: orange; font-size: 25px;">
					&#8377;{{p.productFinalPrice}}&nbsp;&nbsp;
					<small><del>&#8377;{{p.productActualPrice}}</del></small>
				</div>
				<hr>
				<div class="tooltipleft">
					<a href="addToCartFromHome-{{p.productId}}"
						style="text-decoration: none!important" >
						<span class="fa fa-cart-plus" style="font-size: 40px; margin-left: 20px;
							margin-right: 10px; color: orange; "></span>
					</a>
					<span class="tooltiptextleft">Add to<br>Cart</span>
				</div>
				<div class="tooltipright">
					<a href="addToWishListFromHome-{{p.productId}}"
						style="text-decoration: none!important" >
						<i class="fa fa-heart" style="font-size: 35px; margin-left: 10px;
							margin-right: 20px; color: orange;" ></i>
					</a>
					<span class="tooltiptextright">Add to<br>WishList</span>
				</div>
				<br><br>
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<a href="#" class="btn btn-warning btn-block">
							Buy Now
						</a>
					</div>
					<div class="col-md-1"></div>
				</div>
				
			</div>
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