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
			<u>Category Form</u>
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
</div>
<br>

<div class="table-responsive">
	<table class="table">
		<tr>
			<th>Category Name</th>
			<th>Category Description</th>
			<th>Category Edit</th>
			<th>Category Delete</th>
		</tr>
		<c:forEach items="${categoryList}" var="cList">
			<tr>
				<td>${cList.categoryName}</td>
				<td>${cList.categoryDescription}</td>
				<td><a href="editCategory-${cList.categoryId}" class="btn btn-primary" role="button">EDIT</a></td>
				<td><a href="deleteCategory-${cList.categoryId}" class="btn btn-warning" role="button">DELETE</a></td>
			</tr>
		</c:forEach>

	</table>
</div>

<a href="/LaptopWorld/" class="btn btn-primary" role="button">Return
	to home</a>
<br>