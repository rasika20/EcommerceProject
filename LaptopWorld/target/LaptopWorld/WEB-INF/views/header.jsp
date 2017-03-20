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
<link href="resources/css/header.css" rel="stylesheet" />

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

	<%-- <nav class="navbar navbar-default">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-collapse-2">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Brand</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-collapse-2">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Works</a></li>
				<li><a href="#">News</a></li>
				<li><a href="#">Contact</a></li>
				<li><a class="btn btn-default btn-outline btn-circle"
					data-toggle="collapse" href="#nav-collapse2" aria-expanded="false"
					aria-controls="nav-collapse2">Sign in</a></li>
			</ul>
			<div class="collapse nav navbar-nav nav-collapse" id="nav-collapse2">
				<form class="navbar-form navbar-right form-inline" role="form">
					<div class="form-group">
						<label class="sr-only" for="Email">Email</label> <input
							type="email" class="form-control" id="Email" placeholder="Email"
							autofocus required />
					</div>
					<div class="form-group">
						<label class="sr-only" for="Password">Password</label> <input
							type="password" class="form-control" id="Password"
							placeholder="Password" required />
					</div>
					<button type="submit" class="btn btn-success">Sign in</button>
				</form>
			</div>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav> --%>



	<nav class="navbar navbar-inverse bg-primary navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">
				<img alt="logo" src="resources/logo/logo3.jpg">
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
			
				<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>
					    Cart</a></li>
				<li><a href="registrationPage"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="loginPage"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
				<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>
						Logout</a></li>
			</ul>
		</div>
	</div>
	</nav>



	<!-- <div class="container">
		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="http://disputebills.com"><img
					src="resources/logo/logo3.jpg"
					alt="Dispute Bills"> </a>
			</div>
			<div id="navbar1" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Nav header</li>
							<li><a href="#">Separated link</a></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
			</div>
			/.nav-collapse
		</div>
		/.container-fluid </nav>
	</div> -->
	



	<sec:authorize access="isAuthenticated()">
		<strong><sec:authentication property="principal.username" /></strong>
	</sec:authorize>











	<script src="resources/js/jquery-3.1.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/angular.min.js"></script>
</body>
</html>