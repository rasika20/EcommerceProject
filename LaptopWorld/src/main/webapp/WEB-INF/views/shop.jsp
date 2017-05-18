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

<script>
$(document).ready(function() {
		$('.searchbar').hide();
		$('button').click(function() {
			$('.searchbar').toggle(500);
		});
	});

</script>

<div class="container">
	<div ng-app="myApp" ng-controller="myController">
		
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<button type="button" class="btn btn-primary btn-warning btn-block">
					Search for products
				</button>
			</div>
			<div class="col-md-4"></div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<input type="text" class="searchbar form-control" ng-model="searchtext"
					placeholder="Search for keywords..">
			</div>
			<div class="col-md-3"></div>
		</div>
		<br><br><br>
		<div class="row"></div>
		
		<div ng-repeat="ciList in myscope | filter:searchtext">
			<div class="row">
				<div class="col-md-3">
					<a href="viewProduct-{{p.productId}}" style="text-decoration: none!important">
						<img src="resources/productImages/productImage-{{ciList.productId}}.jpg" 
							height="150" width="200" />
					</a>
				</div>
				<div class="col-md-4">
					<a href="viewProduct-{{p.productId}}" style="text-decoration: none!important">
						<pre class="pre1"><strong>{{ciList.productName}}</strong></pre>
					</a>
				</div>
				<div class="col-md-2" style="font-size: 25px;">
					<strong>&#8377;{{ciList.productFinalPrice}}</strong>
					<br><br><br>
					<del><small>&#8377;{{ciList.productActualPrice}}</small></del>
				</div>
				
				<div class="col-md-1 text-center" style="font-size: 15px;
					border: 1px solid black; border-radius: 50px;">
					<strong>&#8377;{{ciList.productDiscount}}<br>&nbsp;OFF!</strong>
				</div>
				
				
				<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
				<%-- <fmt:formatNumber pattern="#,##0" value="${value}" /> --%>
				
				<div class="col-md-1"></div>
				<div class="col-md-1 text-right">
					<div class="tooltipright">
						<a href="addToCartFromShop-{{ciList.productId}}"
							style="text-decoration: none!important" >
							<i class="fa fa-cart-plus" style="font-size: 30px; color: orange;
								margin-right: 30px" ></i>
						</a>
						<span class="tooltiptextright">Add to<br>Cart</span>
					</div>
					<br>
					<br>
					<br>
					<br>
					<div class="tooltipright">
						<a href="addToWishListFromShop-{{ciList.productId}}"
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
		<br>
		
	</div>
</div>

<script>
	var a = angular.module('myApp', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${display}
	});
</script>

<%@ include file="footer.jsp"%>