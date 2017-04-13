<%@ include file="header.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<script>
	$(document).ready(function() {
		$("tbody").hide();
		$("button").click(function() {
			$("tbody").toggle(500);
		});
	});
	$(document).ready(function() {
		$('.search1').hide();
		$('button').click(function() {
			$('.search1').toggle(500);
		});
	});
</script>

<div class="container">

	<div class="text-center">
		<h1>
			<strong>Category Form</strong>
		</h1>
	</div>
	<br>
	<div class="form">
		<form:form modelAttribute="category" action="addCategory">
			<form:input path="categoryId" type="hidden" />

			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="categoryName">Enter Category Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="categoryName"
						placeholder="Category Name" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="categoryName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="categoryDescription">Enter Category Description</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="categoryDescription"
						placeholder="Category Description" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="categoryDescription" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-12 col-md-12">
					<div class="text-center">
						<button class="btn btn-success" type="submit">${btnLabel}
							<span class="glyphicon glyphicon-plus"></span>
						</button>
						<button class="btn btn-danger" type="reset">
							Reset <span class="glyphicon glyphicon-repeat"></span>
						</button>
					</div>
				</div>
			</div>
		</form:form>
	</div>

	<br>
	<hr
		style="height: 2px; border-width: 0; color: gray; background-color: gray">
	<br>


	<div ng-app="myApp">
		<div class="text-center">
			<h1>Category List</h1>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-4 col-md-4 col-sm-4"></div>
			<div class="col-xs-4 col-md-4 col-sm-4">
				<button type="button" class="btn btn-primary btn-block">Show/Hide
					Table</button>
			</div>
			<div class="col-xs-4 col-md-4 col-sm-4"></div>
		</div>
		<br>
		<div class="search1 row">
			<div class="col-xs-3 col-md-3 col-sm-3"></div>
			<div class="col-xs-6 col-md-6 col-sm-6">
				<input class="form-control" type="text" ng-model="search"
					placeholder="Search for keywords.." />
			</div>
			<div class="col-xs-3 col-md-3 col-sm-3"></div>
		</div>
		<br>
		<div class="table-responsive">
			<table class="table table-bordered table-striped table-hover"
				ng-controller="myController">
				<thead>
					<tr>
						<th class="text-center">Category Name</th>
						<th class="text-center">Category Description</th>
						<th class="text-center">Category Edit/Delete</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="cList in myscope | filter:search">
						<td>{{cList.categoryName}}</td>
						<td>{{cList.categoryDescription}}</td>
						<td><a href="editCategory-{{cList.categoryId}}"
							class="btn btn-primary" role="button">EDIT</a>&nbsp&nbsp||&nbsp <a
							href="deleteCategory-{{cList.categoryId}}"
							class="btn btn-warning" role="button">DELETE</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<br> <br>

	<div class="row">
		<div class="col-xs-4 col-md-4 col-sm-4"></div>
		<div class="col-xs-4 col-md-4 col-sm-4">
			<a href="home" class="btn btn-primary btn-block"
				role="button">Return to home</a>
		</div>
		<div class="col-xs-4 col-md-4 col-sm-4"></div>
	</div>
</div>
<br>

<script>
	var a = angular.module('myApp', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${categoryListByJson}
	});
</script>

<%@ include file="footer.jsp"%>