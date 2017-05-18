<%@ include file="header.jsp"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<link href="resources/css/colorgraph.css" rel="stylesheet" />


<div class="container" style="border: 1px solid black; border-radius: 20px; padding-bottom: 30px;">

<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form name="form-login" action="perform_login" method="post">
			<fieldset>
				<h2 class="text-center">Sign In</h2>
				<hr class="colorgraph">
				<div class="form-group">
                    <input type="email" name="username" class="form-control input-lg" placeholder="Email Address" autofocus="autofocus">
				</div>
				<div class="form-group">
                    <input type="password" name="password" class="form-control input-lg" placeholder="Password">
				</div>
				<br>
				<div class="text-center" style="font-size: 15px;">
					<b>Thank you for visiting!</b>
				</div>
				<br>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
                        <input type="submit" class="btn btn-lg btn-warning btn-block" value="Sign In">
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
						<a href="registrationPage" class="btn btn-lg btn-primary btn-block">Register</a>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>

</div>



<%@ include file="footer.jsp"%>