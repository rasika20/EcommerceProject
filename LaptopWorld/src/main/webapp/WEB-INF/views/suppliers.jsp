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
			<u>Supplier Form</u>
		</h1>
	</div>
	<br>
	<div class="form">
		<form:form modelAttribute="supplier" action="addSupplier">
			<form:input path="supplierId" type="hidden" />

			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="supplierName">Enter Supplier Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="supplierName"
						placeholder="Supplier Name" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="supplierName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="supplierName">Enter Supplier Description</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="supplierDescription"
						placeholder="Supplier Description" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="supplierDescription" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="supplierName">Enter Supplier Landmark</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="supplierLandmark"
						placeholder="Supplier Landmark" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="supplierLandmark" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="supplierName">Enter Supplier Street</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="supplierStreet"
						placeholder="Supplier Street" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="supplierStreet" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="supplierName">Enter Supplier City</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="supplierCity"
						placeholder="Supplier City" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="supplierCity" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="supplierName">Enter Supplier State</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="supplierState"
						placeholder="Supplier State" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="supplierState" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="supplierName">Enter Supplier Country</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="supplierCountry"
						placeholder="Supplier Country" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="supplierCountry" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="supplierName">Enter Supplier Email</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="supplierEmail"
						placeholder="Supplier Email" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="supplierEmail" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="supplierName">Enter Supplier Contact Number</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="supplierContactNo"
						placeholder="Supplier Contact Number" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="supplierContactNo" />
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
				<td><a href="editSupplier-${sList.supplierId}" class="btn btn-primary" role="button">EDIT</a></td>
				<td><a href="deleteSupplier-${sList.supplierId}" class="btn btn-warning" role="button">DELETE</a></td>
			</tr>
		</c:forEach>

	</table>
</div>


<a href="/LaptopWorld/" class="btn btn-primary" role="button">Return to home</a>
<br>
