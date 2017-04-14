<%@ include file="header.jsp"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<!-- <form name="form-login" action="perform_login" method="post">
	Email ID <input type="text" name="username" /> Password <input
		type="password" name="password" />
	<button type="submit" class="btn btn-warning" value="Submit">
		<i class="glyphicon glyphicon-arrow-right">	</i> Log-in
	</button>
	<input type="reset" value="Reset" />
</form>
<br>
 -->


<link href="resources/css/demo.css" rel="stylesheet" />
<link href="resources/css/normalize.css" rel="stylesheet" />
<link href="resources/css/set1.css" rel="stylesheet" />
<link href="resources/css/login.css" rel="stylesheet" />
<script src="resources/js/login.js"></script>
<script src="resources/js/bootstrap-checkbox-.min.js"></script>




<!--
<div class="container loginbody" >
	<section class="content">
		<form name="form-login" action="perform_login" method="post">

			<span class="input input--hoshi"> <input
				class="input__field input__field--hoshi" type="text" name="username"
				id="input-4" /> <label
				class="input__label input__label--hoshi input__label--hoshi-color-1"
				for="input-4"> <span
					class="input__label-content input__label-content--hoshi">
						Email ID</span>
			</label>
			</span>
			
			<span class="input input--hoshi"> <input
				class="input__field input__field--hoshi" type="password" name="password"
				id="input-4" /> <label
				class="input__label input__label--hoshi input__label--hoshi-color-1"
				for="input-4"> <span
					class="input__label-content input__label-content--hoshi">
						Password</span>
			</label>
			</span>
			<br>
			<button type="submit" class="btn btn-warning" value="Submit">
				<i class="glyphicon glyphicon-arrow-right">	</i> Log-in
			</button>
			
		</form>
	</section>
</div>

-->





<div class="container loginbody">

	<div class="row" style="margin-top: 20px">
		<div
			class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			<section class="content">
				<form name="form-login" action="perform_login" method="post">

					<h2>Please Sign In</h2>
					<hr class="colorgraph">
					<span class="input input--hoshi"> <input
						class="input__field input__field--hoshi" type="text"
						name="username" id="input-4" autofocus="autofocus" /> <label
						class="input__label input__label--hoshi input__label--hoshi-color-1"
						for="input-4"> <span
							class="input__label-content input__label-content--hoshi">
								Email ID</span>
					</label>
					</span> <span class="input input--hoshi"> <input
						class="input__field input__field--hoshi" type="password"
						name="password" id="input-4" /> <label
						class="input__label input__label--hoshi input__label--hoshi-color-1"
						for="input-4"> <span
							class="input__label-content input__label-content--hoshi">
								Password</span>
					</label>
					</span> <span class="checkbox checkbox-info checkbox-circle"> <input
						type="checkbox" name="remember-me" checked> <label>Remember
							Me</label><br>
					</span> <a href="" class="btn btn-danger">Forgot Password?</a>
					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-6 col-sm-6 col-md-6">
							<input type="submit" class="btn btn-lg btn-success btn-block"
								value="Sign In">
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6">
							<a href="" class="btn btn-lg btn-primary btn-block">Register</a>
						</div>
					</div>

				</form>
				</section>
		</div>
	</div>

</div>








<script src="resources/js/classie.js"></script>

<script>
			(function() {
				// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
				if (!String.prototype.trim) {
					(function() {
						// Make sure we trim BOM and NBSP
						var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
						String.prototype.trim = function() {
							return this.replace(rtrim, '');
						};
					})();
				}

				[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
					// in case the input is already filled..
					if( inputEl.value.trim() !== '' ) {
						classie.add( inputEl.parentNode, 'input--filled' );
					}

					// events:
					inputEl.addEventListener( 'focus', onInputFocus );
					inputEl.addEventListener( 'blur', onInputBlur );
				} );

				function onInputFocus( ev ) {
					classie.add( ev.target.parentNode, 'input--filled' );
				}

				function onInputBlur( ev ) {
					if( ev.target.value.trim() === '' ) {
						classie.remove( ev.target.parentNode, 'input--filled' );
					}
				}
			})();
		</script>
<script>
$('input').blur(function(){
	if($(this).val()!=null&&$(this).val()!=''){
	$(this).parent().addClass(' '+'input–filled')
	}else{
	$(this).parent().removeClass('input–filled'	)
	}
	});
</script>

<%@ include file="footer.jsp"%>