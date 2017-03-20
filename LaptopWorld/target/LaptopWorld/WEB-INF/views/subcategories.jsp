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
			<u>Sub-Category Form</u>
		</h1>
	</div>
	<br>
	<div class="form">
		<form:form modelAttribute="subCategory" action="addSubCategory">
			<form:input path="subCategoryId" type="hidden" />

			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="subCategoryName">Enter Sub-Category Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="subCategoryName"
						placeholder="Sub-Category Name" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="subCategoryName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="subCategoryDescription">Enter Sub-Category Description</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="subCategoryDescription"
						placeholder="Sub-Category Description" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="subCategoryDescription" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:label path="categoryId">Select Category of SubCategory</form:label>
				</div>	 
				<div class="col-xs-12 col-sm-4  col-md-4">					
					<form:select class="form-control" path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName"/>
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
			<th>Sub-Category Name</th>
			<th>Sub-Category Description</th>
			<th>Category Name</th>
			<th>Sub-Category Edit</th>
			<th>Sub-Category Delete</th>
		</tr>
		<c:forEach items="${subCategoryList}" var="scList">
			<tr>
				<td>${scList.subCategoryName}</td>
				<td>${scList.subCategoryDescription}</td>
				<td>${scList.category.categoryName}</td>
				<td><a href="editSubCategory-${scList.subCategoryId}" class="btn btn-primary" role="button">EDIT</a></td>
				<td><a href="deleteSubCategory-${scList.subCategoryId}" class="btn btn-warning" role="button">DELETE</a></td>
			</tr>
		</c:forEach>

	</table>
</div>


<a href="/LaptopWorld/" class="btn btn-primary" role="button">Return to home</a>
<br>
