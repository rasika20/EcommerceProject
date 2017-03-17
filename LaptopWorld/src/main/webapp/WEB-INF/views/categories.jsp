<%@ include file="header.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>


<form:form modelAttribute="category" action="addCategory">
	<form:input path="categoryId" type="hidden" />
	<form:input path="categoryName" />
	<form:errors path="categoryName" /><br>
	<form:input path="categoryDescription" />
	<form:errors path="categoryDescription" /><br>
	<input type="submit" value="Add Category" />
</form:form>

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
			<td><a href="editCategory-${cList.categoryId}">EDIT</a></td>
			<td><a href="deleteCategory-${cList.categoryId}">DELETE</a></td>
		</tr>
	</c:forEach>

</table>

<a href="/LaptopWorld/" class="btn btn-primary" role="button">Return to home</a>
<br>
