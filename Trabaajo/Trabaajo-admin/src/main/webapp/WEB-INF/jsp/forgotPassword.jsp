<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script src="resources\assets\js\jqueryValidation.js"></script>
<script src="resources\assets\css\validationEngine.jquery.css"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#myform").validate({
			rules : {

				email : {
					required : true,
					
				},
				password : "required",
			},
			messages : {

				email : " Email can't be blank",
				password : "Password can't be blank",
			

			}
		});
	});
</script>
<style type="text/css">
.error {
	color: red;
	font-style: italic;
	padding-bottom: 2%;
}
</style>
</head>
<body>
	
	<hr>

	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="panel panel-default">
						<span style="padding-left: 73px;
    color: red;"> ${successMessage}</span>
						<div class="panel-body">
							<div class="text-center">
								<h3>
									<i class="fa fa-lock fa-4x"
										style="font-size: 6em; margin-right: 42%;"></i>
								</h3>
								<h2 class="text-center">Forgot Password?</h2>
								<p>You can reset your password here.</p>
								<div class="panel-body">
									<form:form class="form-horizontal" method="POST" id="myform"
										modelAttribute="AdminUser" action="userForgotPassword">
										<form class="form">
											<fieldset>
												<div class="form-group">
													<div class="input-group">
												<input class="form-control" placeholder="Enter your email"
												maxlength="50" name="adminEmailId" type="text" style="width: 151%;"  autofocus>
											</div>
												</div>
												<div class="form-group">
													<input class="btn btn-lg btn-primary btn-block"
														value="Send My Password" type="submit">
												</div>
											</fieldset>
										</form>

									</form:form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>