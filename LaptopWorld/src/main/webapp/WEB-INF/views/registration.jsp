<%@ include file="header.jsp"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>


<link href="resources/css/colorgraph.css" rel="stylesheet" />


<div class="container" style="border: 1px solid black; border-radius: 20px; padding-bottom: 30px;">

<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form:form class="form" modelAttribute="user" action="addUser">
			<fieldset>
				<h2 class="text-center">Register</h2>
				<hr class="colorgraph">
				
				<div class="form-group">
                    <form:input path="userId" class="form-control input-lg" placeholder="User ID" type="hidden" />
				</div>
				
				<div class="form-group">
                    <form:input path="username" class="form-control input-lg" placeholder="Email Address" type="email" autofocus="true" />
				</div>
				
				<div class="form-group">
                    <form:input path="password" class="form-control input-lg" placeholder="Password" type="password" />
				</div>
				
				<div class="form-group">
                    <form:input path="fname" class="form-control input-lg" placeholder="First Name" />
				</div>
				
				<div class="form-group">
                    <form:input path="lname" class="form-control input-lg" placeholder="Last Name" />
				</div>
				
				<div class="form-group">
                    <form:input path="dob" class="form-control input-lg" placeholder="Date of Birth" type="date" />
				</div>
				
				<div class="form-group">
                    <form:input path="contactNo" class="form-control input-lg" placeholder="Contact Number" type="number" />
				</div>
				
				<div class="form-group">
                    <form:input path="alternateContactNo" class="form-control input-lg" placeholder="Alternate Contact Number" type="number" />
				</div>
				<br>
				<div class="text-center" style="font-size: 15px;">
					<b>
						By clicking on "Register", you confirm that you have read our :<br>
						<a href="terms">Terms and Conditions</a> <br>
						<a href="privacypolicy">Privacy Policy</a>
					</b>
				</div>
				<br>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-3 col-sm-3 col-md-3"></div>
					<div class="col-xs-6 col-sm-6 col-md-6">
                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Register">
					</div>
					<div class="col-xs-3 col-sm-3 col-md-3"></div>
				</div>
			</fieldset>
		</form:form>
	</div>
</div>

</div>






<%@ include file="footer.jsp"%>