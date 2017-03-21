<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/brandlogo.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/css/slider.css" />

<title>Laptop World</title>

<style type="text/css">
body {
	background-image: url("resources/backgroundImages/background.jpg");
	background-repeat: repeat;
	padding-top: 140px;
}
</style>

</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> <img alt="logo"
				src="resources/logo/logo3.jpg">
			</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="/LaptopWorld/">Home</a></li>
				<li><a href="aboutus">About us</a></li>
				<li><a href="contactus">Contact us</a></li>
				<li><a href="#">FAQ</a></li>
			</ul>

			<form class="navbar-form navbar-left">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>

			<ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<!-- <li><a href="#myModal" data-toggle="modal" > -->
					<li><a href="loginPage"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="registrationPage"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				</c:if>

				<c:if test="${pageContext.request.userPrincipal.name!=null}">

					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> Admin Panel <span
								class="glyphicon glyphicon-user"></span> <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
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
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">
								${pageContext.request.userPrincipal.name} <span
								class="glyphicon glyphicon-user"></span> <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Profile</a></li>
								<li><a href="#">Cart</a></li>
								<li><a href="#">Wish List</a></li>
								<li><a href="#">Order History</a></li>
								<li class="divider"></li>
								<li><a href="logout">Logout <span
										class="glyphicon glyphicon-log-out"></span></a></li>
							</ul></li>
					</sec:authorize>

				</c:if>
			</ul>
		</div>
	</div>
	</nav>





	<script src="resources/js/jquery-3.2.0.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/angular.min.js"></script>


</body>
</html>