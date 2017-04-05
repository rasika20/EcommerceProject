<%@ include file="header.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

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
	<hr style="height:2px;border-width:0;color:gray;background-color:gray">
	<br>
	
	<div ng-app="myApp1">
		<div class="text-center">
			<h1>Category List</h1>
		</div>
		<div class="row">
			<div class="input-group col-xs-12 col-md-4 col-sm-4">
				<input class="form-control" type="text" ng-model="search"
					placeholder="Search.." />
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</div>
			</div>
		</div>
		<br>
		<div class="table-responsive">
			<table class="table" ng-controller="myController">
				<tr>
					<th>Category Name</th>
					<th>Category Description</th>
					<th>Category Edit</th>
					<th>Category Delete</th>
				</tr>

				<tr ng-repeat="cList in myscope | filter:search">
					<td>{{cList.categoryName}}</td>
					<td>{{cList.categoryDescription}}</td>
					<td><a href="editCategory-{{cList.categoryId}}"
						class="btn btn-primary" role="button">EDIT</a></td>
					<td><a href="deleteCategory-{{cList.categoryId}}"
						class="btn btn-warning" role="button">DELETE</a></td>
				</tr>
			</table>
		</div>
	</div>
</div>

<a href="/LaptopWorld/" class="btn btn-primary" role="button">Return
	to home</a>
<br>

<script>
	var a = angular.module('myApp1', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${categoryListByJson}
	});
</script>

<%@ include file="footer.jsp"%>