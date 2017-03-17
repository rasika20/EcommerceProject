<%@ include file="header.jsp"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<form:form class="form" modelAttribute="user" action="addUser">
	<form:input path="userId" placeholder="user id" type="hidden" />
	<form:input path="username" placeholder="email id" autofocus="true" />
	<form:input path="password" placeholder="password" type="password" />
	<form:input path="fname" placeholder="first name" />
	<form:input path="lname" placeholder="last name" />
	<form:input path="dob" placeholder="date of birth" />
	<form:input path="contactNo" placeholder="contact number" />
	<form:input path="alternateContactNo" placeholder="alternate contact number" />
	<input type="submit" value="signup" />
	<input type="reset" value="Reset" />
</form:form>