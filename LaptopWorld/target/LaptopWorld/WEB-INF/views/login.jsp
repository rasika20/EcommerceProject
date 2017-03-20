<%@ include file="header.jsp"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<form name="form-login" action="perform_login" method="post">
	Username <input type="text" name="username" />
	Password <input type="password" name="password" />
	
	<input type="submit" value="Log-In" />
	<input type="reset" value="Reset" />
</form>

<%@ include file="header.jsp"%>