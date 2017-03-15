<%@ include file="header.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>


<form:form modelAttribute="subCategory" action="addSubCategory">
	<form:input path="subCategoryId" type="hidden" />
	<form:input path="subCategoryName" />
	<form:input path="subCategoryDescription" />
	<form:select path="categoryId" items="${categoryList}" itemLabel="categoryName"
		itemValue="categoryId"></form:select>
	<%-- <form:radiobuttons name="catId" path="categoryId" items="${categoryList}" itemLabel="categoryName"
		itemValue="categoryId" /> --%>
	<input type="submit" value="Add Sub-Category" />
</form:form>

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
			<td><a href="editSubCategory-${scList.subCategoryId}">EDIT</a></td>
			<td><a href="deleteSubCategory-${scList.subCategoryId}">DELETE</a></td>
		</tr>
	</c:forEach>

</table>

<a href="/LaptopWorld/" class="btn btn-primary" role="button">Return to home</a>
<br>
