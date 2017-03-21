<%@ include file="header.jsp"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<form name="form-login" action="perform_login" method="post">
	Email ID <input type="text" name="username" />
	Password <input type="password" name="password" />
	
	<input type="submit" value="Log-In" />
	<input type="reset" value="Reset" />
</form>



<!-- <div class="bs-example">
	Button HTML (to Trigger Modal)
	<a href="#myModal" class="btn btn-lg btn-primary" data-toggle="modal">Launch
		Demo Modal</a>
	Modal HTML
	<div id="myModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Login to
						LaptopWorld.com</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-xs-6">
							<div class="well">
								<form id="loginForm" method="POST" action="/login/"
									novalidate="novalidate">
									<div class="form-group">
										<label for="username" class="control-label">Username</label> <input
											type="text" class="form-control" id="username"
											name="username" value="" required=""
											title="Please enter you username"
											placeholder="example@gmail.com"> <span
											class="help-block"></span>
									</div>
									<div class="form-group">
										<label for="password" class="control-label">Password</label> <input
											type="password" class="form-control" id="password"
											name="password" value="" required=""
											title="Please enter your password"> <span
											class="help-block"></span>
									</div>
									<div id="loginErrorMsg" class="alert alert-error hide">Wrong
										username og password</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="remember"
											id="remember"> Remember login
										</label>
										<p class="help-block">(if this is a private computer)</p>
									</div>
									<button type="submit" class="btn btn-success btn-block">Login</button>
									<a href="/forgot/" class="btn btn-default btn-block">Help
										to login</a>
								</form>
							</div>
						</div>
						<div class="col-xs-6">
							<p class="lead">
								Register now for <span class="text-success">FREE</span>
							</p>
							<ul class="list-unstyled" style="line-height: 2">
								<li><span class="fa fa-check text-success"></span> See all
									your orders</li>
								<li><span class="fa fa-check text-success"></span> Fast
									re-order</li>
								<li><span class="fa fa-check text-success"></span> Save
									your favorites</li>
								<li><span class="fa fa-check text-success"></span> Fast
									checkout</li>
								<li><span class="fa fa-check text-success"></span> Get a
									gift <small>(only new customers)</small></li>
								<li><a href="/read-more/"><u>Read more</u></a></li>
							</ul>
							<p>
								<a href="/new-customer/" class="btn btn-info btn-block">Yes
									please, register now!</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> -->