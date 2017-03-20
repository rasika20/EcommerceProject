<%@ include file="header.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>


<form:form modelAttribute="product" action="addProduct">
	<form:input path="productId" type="hidden" />
	<form:input path="productName" />
	<form:errors path="productName" /><br>
	<form:input path="productDescription" />
	<form:errors path="productDescription" /><br>
	<form:input path="productActualPrice" /><br>
	<form:input path="productDiscount" /><br>
	<form:input path="productMadeCountry" />
	<form:errors path="productMadeCountry" /><br>
	<form:input path="productStock" /><br>
	<form:select path="categoryId" items="${categoryList}" itemLabel="categoryName"
		itemValue="categoryId"></form:select>
	<form:select path="subCategoryId" items="${subCategoryList}" itemLabel="subCategoryName"
		itemValue="subCategoryId"></form:select>
	<form:select path="brandId" items="${brandList}" itemLabel="brandName"
		itemValue="brandId"></form:select>
	<form:select path="supplierId" items="${supplierList}" itemLabel="supplierName"
		itemValue="supplierId"></form:select>
	<input type="submit" value="Add Product" />
</form:form>

<table class="table">
	<tr>
		<th>Product Name</th>
		<th>Product Description</th>
		<th>Product Actual Price</th>
		<th>Product Discount</th>
		<th>Product Actual Made In Country</th>
		<th>Product Actual Stock</th>
		<th>Category Name</th>
		<th>Sub-Category Name</th>
		<th>Brand Name</th>
		<th>Supplier Name</th>
		<th>Product Edit</th>
		<th>Product Delete</th>
	</tr>
	<c:forEach items="${productList}" var="pList">
		<tr>
			<td>${pList.productName}</td>
			<td>${pList.productDescription}</td>
			<td>${pList.productActualPrice}</td>
			<td>${pList.productDiscount}</td>
			<td>${pList.productMadeCountry}</td>
			<td>${pList.productStock}</td>
			<td>${pList.category.categoryName}</td>
			<td>${pList.subCategory.subCategoryName}</td>
			<td>${pList.brand.brandName}</td>
			<td>${pList.supplier.supplierName}</td>
			<td><a href="editProduct-${pList.productId}">EDIT</a></td>
			<td><a href="deleteProduct-${pList.productId}">DELETE</a></td>
		</tr>
	</c:forEach>

</table>

<a href="/LaptopWorld/" class="btn btn-primary" role="button">Return to home</a>
<br>
