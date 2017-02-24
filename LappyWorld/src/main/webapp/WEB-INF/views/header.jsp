<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="resources/css/bootstrap.min.css" rel="stylesheet" />

<!-- 
<style type="text/css">
	.navbar-inverse {
    background-color: #9b59b6;
    border-color: #8e44ad;
    .navbar-brand {
        color: #9b59b6;
        &:hover, &:focus {
            color: #d1ffed; }}
    .navbar-nav {
        > li {
            > a {
                color: #ecf0f1;
                &:hover, &:focus {
                    color: #d1ffed;   }}}
        .active {
            > a, > a:hover, > a:focus {
                color: #d1ffed;
                background-color: #8e44ad; }}
        .open {
            > a, > a:hover, > a:focus {
                color: #d1ffed;
                background-color: #8e44ad;
                .caret {
                    border-top-color: #d1ffed;
                    border-bottom-color: #d1ffed; }}}
        > .dropdown {
            > a {
                .caret {
                    border-top-color: #ecf0f1;
                    border-bottom-color: #ecf0f1; }
                &:hover, &:focus {
                    .caret {
                        border-top-color: #d1ffed;
                        border-bottom-color: #d1ffed; }}}}}
    .navbar-toggle {
        border-color: #8e44ad;
        &:hover, &:focus {
            background-color: #27ae60; }
        .icon-bar {
            background-color: #ecf0f1; }}}
@media (max-width: 767px) {
    .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
        color: #ecf0f1;
        &:hover, &:focus {
            color: #d1ffed;
            background-color: #27ae60; }}
}
	
</style>
 -->

<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-inverse bg-primary navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Lappy World</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">About us</a></li>
				<li><a href="#">Contact us</a></li>
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
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<script src="resources/js/jquery-3.1.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>