<%@ include file="header.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>


<form:form modelAttribute="brand" action="addBrand">
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

</table>

<a href="/LaptopWorld/" class="btn btn-primary" role="button">Return to home</a>
<br>
