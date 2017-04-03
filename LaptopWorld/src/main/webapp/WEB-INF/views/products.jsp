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
			<u>Product Form</u>
		</h1>
	</div>
	<br>
	<div class="form">
		<form:form modelAttribute="product" action="addProduct">
			<form:input path="productId" type="hidden" />

			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productName">Enter Product Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productName"
						placeholder="Product Name" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productDescription">Enter Product Description</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productDescription"
						placeholder="Product Description" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productDescription" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productActualPrice">Enter Product Actual Price</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productActualPrice"
						placeholder="Product Actual Price" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productActualPrice" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productDiscount">Enter Product Discount</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productDiscount"
						placeholder="Product Discount" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productDiscount" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productMadeCountry">Enter Product Made Country</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productMadeCountry"
						placeholder="Product Made Country" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productMadeCountry" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productStock">Enter Product Stock</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productStock"
						placeholder="Product Stock" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productStock" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:label path="categoryId">Select Category of Product</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:select class="form-control" path="categoryId"
						items="${categoryList}" itemValue="categoryId"
						itemLabel="categoryName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:label path="subCategoryId">Select Sub-Category of Product</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:select class="form-control" path="subCategoryId"
						items="${subCategoryList}" itemValue="subCategoryId"
						itemLabel="subCategoryName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:label path="brandId">Select Brand of Product</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:select class="form-control" path="brandId"
						items="${brandList}" itemValue="brandId" itemLabel="brandName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:label path="supplierId">Select Supplier of Product</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:select class="form-control" path="supplierId"
						items="${supplierList}" itemValue="supplierId"
						itemLabel="supplierName" />
				</div>
			</div>
			<br>
			<%-- <form:label path="productImage">Image</form:label>
			<br>
			<form:input type="file" accept=".jpg,.jpeg,.png"
				class="btn btn-default special-textbox" path="productImage" />
			<br> --%>
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
			<th>Product Name</th>
			<th>Product Description</th>
			<th>Product Actual Price</th>
			<th>Product Discount</th>
			<th>Product Made Country</th>
			<th>Product Stock</th>
			<th>Category Name</th>
			<th>Sub-Category Name</th>
			<th>Brand Name</th>
			<th>Supplier Name</th>
			<th>Product Image</th>
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
				<td><img
					src="resources/productImages/productImage-${pList.productId}.jpg"
					height="80px" width="80px" alt="img not uploaded" /></td>
				<td><a href="editProduct-${pList.productId}"
					class="btn btn-primary" role="button">EDIT</a></td>
				<td><a href="deleteProduct-${pList.productId}"
					class="btn btn-warning" role="button">DELETE</a></td>
			</tr>
		</c:forEach>

	</table>
</div>


<a href="/LaptopWorld/" class="btn btn-primary" role="button">Return
	to home</a>
<br>

<%@ include file="footer.jsp"%>