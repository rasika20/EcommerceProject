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
<link href="resources/css/font-awesome.min.css" rel="stylesheet" />
<link href="resources/css/backtotop.css" rel="stylesheet" />
<link href="resources/css/brandlogo.css" rel="stylesheet" />

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

	<!-- Navbar -->
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

			<!-- Conditional Buttons -->
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name==null}">

					<li><a href="#loginModal" data-toggle="modal"><span
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
								<li><a href="#">Recent Orders</a></li>
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



	<!-- Login Modal -->
	<div id="loginModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Login to
						LaptopWorld.com</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-xs-6">
							<div class="well">
								<form name="form-login" method="POST" action="perform_login">
									<div class="form-group">
										<label for="username" class="control-label">Email ID</label> <input
											type="text" class="form-control" id="username"
											name="username" value="" required=""
											title="Please enter you username"
											placeholder="example@gmail.com" autofocus="true"> <span
											class="help-block"></span>
									</div>
									<div class="form-group">
										<label for="password" class="control-label">Password</label> <input
											type="password" class="form-control" id="password"
											name="password" value="" required=""
											title="Please enter your password"> <span
											class="help-block"></span>
									</div>
									<div id="loginErrorMsg" class="alert alert-error hide">Wrong
										username og password</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="remember"
											id="remember"> Remember login
										</label>
										<p class="help-block">(if this is a private computer)</p>
									</div>
									<button type="submit" class="btn btn-success btn-block">Login</button>
									<a href="/forgot/" class="btn btn-default btn-block">Forgot
										Password?</a>
								</form>
							</div>
						</div>
						<div class="col-xs-6">
							<p class="lead">New User?</p>
							<p class="lead">
								Register now for <span class="text-success">FREE!</span>
							</p>
							<ul class="list-unstyled" style="line-height: 2">
								<li><span class="fa fa-check text-success"></span> See all
									your orders!</li>
								<li><span class="fa fa-check text-success"></span>
									Personalized Cart!</li>
								<li><span class="fa fa-check text-success"></span> Save
									your favorites to Wish List!</li>
								<li><span class="fa fa-check text-success"></span> Fast
									Checkout!</li>
								<li><a href="faq"><u>Read more</u></a></li>
							</ul>
							<br>
							<p>
								<a href="registrationPage" class="btn btn-info btn-block">Register
									Now!</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>