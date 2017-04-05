<%@ include file="header.jsp"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<form name="form-login" action="perform_login" method="post">
	Email ID <input type="text" name="username" /> Password <input
		type="password" name="password" />
	<button type="submit" class="btn btn-warning" value="Submit">
		<i class="glyphicon glyphicon-arrow-right">	</i> Log-in
	</button>
	<input type="reset" value="Reset" />
</form>

<br>

<%@ include file="footer.jsp"%>