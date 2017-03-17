<%@ include file="header.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>


<form:form modelAttribute="supplier" action="addSupplier">
	<form:input path="supplierId" type="hidden" />
	<form:input path="supplierName" />
	<form:errors path="supplierName" /><br>
	<form:input path="supplierDescription" />
	<form:errors path="supplierDescription" /><br>
	<form:input path="supplierLandmark" />
	<form:errors path="supplierLandmark" /><br>
	<form:input path="supplierStreet" />
	<form:errors path="supplierStreet" /><br>
	<form:input path="supplierCity" />
	<form:errors path="supplierCity" /><br>
	<form:input path="supplierState" />
	<form:errors path="supplierState" /><br>
	<form:input path="supplierCountry" />
	<form:errors path="supplierCountry" /><br>
	<form:input path="supplierEmail" />
	<form:errors path="supplierEmail" /><br>
	<form:input path="supplierContactNo" />
	<form:errors path="supplierContactNo" /><br>
	
	<input type="submit" value="Add Supplier" />
</form:form>

<table class="table">
	<tr>
		<th>Supplier Name</th>
		<th>Supplier Description</th>
		<th>Supplier Landmark</th>
		<th>Supplier Street</th>
		<th>Supplier City</th>
		<th>Supplier State</th>
		<th>Supplier Country</th>
		<th>Supplier Email</th>
		<th>Supplier Contact Number</th>
		<th>Supplier Edit</th>
		<th>Supplier Delete</th>
	</tr>
	<c:forEach items="${supplierList}" var="sList">
		<tr>
			<td>${sList.supplierName}</td>
			<td>${sList.supplierDescription}</td>
			<td>${sList.supplierLandmark}</td>
			<td>${sList.supplierStreet}</td>
			<td>${sList.supplierCity}</td>
			<td>${sList.supplierState}</td>
			<td>${sList.supplierCountry}</td>
			<td>${sList.supplierEmail}</td>
			<td>${sList.supplierContactNo}</td>
			<td><a href="editSupplier-${sList.supplierId}">EDIT</a></td>
			<td><a href="deleteSupplier-${sList.supplierId}">DELETE</a></td>
		</tr>
	</c:forEach>

</table>

<a href="/LaptopWorld/" class="btn btn-primary" role="button">Return to home</a>
<br>
