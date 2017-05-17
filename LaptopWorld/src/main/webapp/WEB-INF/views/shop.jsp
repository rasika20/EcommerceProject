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
					<del><small>&#8377;{{ciList.productActualPrice}}</small></del>
				</div>
				
				<div class="col-md-2 text-center" style="font-size: 25px;">
					<strong>&#8377;{{ciList.productFinalPrice}}</strong>
				</div>
				
				
				<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
				<%-- <fmt:formatNumber pattern="#,##0" value="${value}" /> --%>
				
				
				<div class="col-md-1 text-right">
					<div class="tooltipright">
						<a href="addToCartFromHome-{{ciList.productId}}"
							style="text-decoration: none!important" >
							<i class="fa fa-cart-plus" style="font-size: 30px; color: orange;
								margin-right: 33px" ></i>
						</a>
						<span class="tooltiptextright">Add to<br>Cart</span>
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
		<br>
		
	</div>
</div>

<script>
	var a = angular.module('myApp', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${display}
	});
</script>

<%-- <%@ include file="footer.jsp"%> --%>