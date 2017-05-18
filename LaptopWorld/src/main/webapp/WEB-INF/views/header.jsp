<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/font-awesome.min.css" rel="stylesheet" />
<link href="resources/css/backtotop.css" rel="stylesheet" />
<link href="resources/css/brandlogo.css" rel="stylesheet" />
<link href="resources/css/slider.css" rel="stylesheet" />
<link href="resources/css/navbar.css" rel="stylesheet" />
<link href="resources/css/body.css" rel="stylesheet" />
<link href="resources/css/footer.css" rel="stylesheet" />

<script src="resources/js/jquery-3.2.0.min.js"></script>
<script src="resources/js/angular.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/backtotop.js"></script>

<title>Laptop World</title>

<style type="text/css">
body {
	/* background-image: url("resources/backgroundImages/background.jpg");
	background-repeat: repeat; */
	padding-top: 140px;
}
</style>

</head>
<body>

<!-- Navbar -->

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#" style="padding-top: 15px; padding-left: 25px;
				padding-right: 30px;">
				LaptopWorld
			</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="/LaptopWorld/">Home</a></li>
				<li><a href="aboutus">About us</a></li>
				<li><a href="contactus">Contact us</a></li>
				<li><a href="faq">FAQ</a></li>
				
				<li style="margin-left: 40px;">
					<a href="shop">
						Search
						<span class="glyphicon glyphicon-search"></span>
					</a>
				</li>
			</ul>


			<!-- Conditional Buttons -->
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name==null}">

					<li><a href="loginPage"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="registrationPage"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				</c:if>

				<c:if test="${pageContext.request.userPrincipal.name!=null}">

					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">
								${pageContext.request.userPrincipal.name} <span
								class="glyphicon glyphicon-user"></span> <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<!-- <li><a href="adminPanelPage">Admin Panel</a></li> -->
								<li><a href="categoryPage">Category Management</a></li>
								<li><a href="subCategoryPage">Sub-Category Management</a></li>
								<li><a href="brandPage">Brand Management</a></li>
								<li><a href="supplierPage">Supplier Management</a></li>
								<li><a href="productPage">Product Management</a></li>
								<li><a href="#">User Management</a></li>
								<li class="divider"></li>
								<li><a href="logout">Logout <span
										class="glyphicon glyphicon-log-out"></span></a></li>
							</ul></li>
					</sec:authorize>

					<sec:authorize access="hasRole('ROLE_USER')">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								${pageContext.request.userPrincipal.name}
								<span class="glyphicon glyphicon-user"></span>
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								
								<li><a href="displayCart">Cart</a></li>
								<li><a href="displayWishList">Wish List</a></li>
								<li><a href="#">My Orders</a></li>
								<li class="divider"></li>
								<li>
									<a href="logout">
										Logout <span class="glyphicon glyphicon-log-out"></span>
									</a>
								</li>
							</ul>
							
						</li>
					</sec:authorize>

				</c:if>
			</ul>
			
		</div>
		<div class="row pull-left" style="margin-left: 50px;">
                <div class="col-md-12">
                    <ul class="nav navbar-nav pull-right">
                        <c:forEach items="${globalCategory}" var="category">
                        	<li class="dropdown">
                        		<a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        			${category.categoryName}
                        			<span class="caret"></span>
                        		</a>
                        		<ul class="dropdown-menu" role="menu">
                        			<li><a href="shopCat-${category.categoryId}">ALL</a></li>
                        			<li class="divider"></li>
                        			<c:forEach items="${globalSubCategory}" var="subCategory">
                        				<c:if test="${subCategory.categoryId eq category.categoryId}">
                        					<li><a href="shopSubCat-${subCategory.subCategoryId}">
                        						${subCategory.subCategoryName}</a>
                        					</li>
                        				</c:if>
                        				
                        			</c:forEach>
                        		</ul>
                        	</li>
                        </c:forEach>
                    </ul>
                </div>
        </div>
	</div>
</nav>

