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
			<u>Brand Form</u>
		</h1>
	</div>
	<br>
	<div class="form">
		<form:form modelAttribute="brand" action="addBrand">
			<form:input path="brandId" type="hidden" />

			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="brandName">Enter Brand Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="brandName"
						placeholder="Brand Name" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="brandName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="brandDescription">Enter Brand Description</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="brandDescription"
						placeholder="Brand Description" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="brandDescription" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:label path="subCategoryId">Select SubCategory of Brand</form:label>
				</div>	 
				<div class="col-xs-12 col-sm-4  col-md-4">					
					<form:select class="form-control" path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
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
			<th>Brand Name</th>
			<th>Brand Description</th>
			<th>Sub-Category Name</th>
			<th>Brand Edit</th>
			<th>Brand Delete</th>
		</tr>
		<c:forEach items="${brandList}" var="bList">
			<tr>
				<td>${bList.brandName}</td>
				<td>${bList.brandDescription}</td>
				<td>${bList.subCategory.subCategoryName}</td>
				<td><a href="editBrand-${bList.brandId}" class="btn btn-primary" role="button">EDIT</a></td>
				<td><a href="deleteBrand-${bList.brandId}" class="btn btn-warning" role="button">DELETE</a></td>
			</tr>
		</c:forEach>

	</table>
</div>















<%-- <form:form modelAttribute="brand" action="addBrand">
	<form:input path="brandId" type="hidden" />
	<form:input path="brandName" />
	<form:errors path="brandName" /><br>
	<form:input path="brandDescription" />
	<form:errors path="brandDescription" /><br>
	<form:select path="subCategoryId" items="${subCategoryList}" itemLabel="subCategoryName"
		itemValue="subCategoryId"></form:select>
	<input type="submit" value="Add Brand" />
</form:form>

<table class="table">
	<tr>
		<th>Brand Name</th>
		<th>Brand Description</th>
		<th>Sub-Category Name</th>
		<th>Brand Edit</th>
		<th>Brand Delete</th>
	</tr>
	<c:forEach items="${brandList}" var="bList">
		<tr>
			<td>${bList.brandName}</td>
			<td>${bList.brandDescription}</td>
			<td>${bList.subCategory.subCategoryName}</td>
			<td><a href="editBrand-${bList.brandId}">EDIT</a></td>
			<td><a href="deleteBrand-${bList.brandId}">DELETE</a></td>
		</tr>
	</c:forEach>

</table> --%>

<a href="/LaptopWorld/" class="btn btn-primary" role="button">Return to home</a>
<br>

<%@ include file="footer.jsp"%>