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
<style type="text/css">
.panel-heading {
	padding: 5px 15px;
}

.panel-footer {
	padding: 1px 15px;
	color: #A0A0A0;
}

.profile-img {
	width: 96px;
	height: 96px;
	margin: 0 auto 10px;
	display: block;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 50%;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("#myform").validate({
			rules : {

				email : {
					required : true,
					email : "Nessary @ and numeric",
				},
				password : "required",
			},
			messages : {

				email : " Put with @gmail.com",
				password : "Password can't be blank",
			/* email :{
				required : "Email can't be blank",
				number : " @ and number are nessesary",
				maxlength : "Maximum 25 digit Allowed",
				minlength : "Minimum 25 digit Allowed"
			}, */

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
	<c:choose>
		<c:when test="${not empty errorMessage}">
			<div class="form-group">
				<div class="alert alert-success" id="forMsgDisplay"
					style="display: block; margin-bottom: 0px;">
					<span style="padding-left: 486px;"> ${errorMessage}</span>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</div>
		</c:when>
	</c:choose>
	<div class="container" style="margin-top: 40px">
		<div class="row">
			<div class="col-sm-9 col-md-4 col-md-offset-4">
				<div class="panel panel-default"
					style="width: 135%; margin-left: -27%;">
					<div class="panel-heading">
						<strong style="padding-left: 26%;"> Sign in to continue</strong>
					</div>
					<div class="panel-body">
						<form role="form" action="login" method="POST" id="myform"
							modelAttribute="registration">
							<fieldset>
								<div class="row">
									<div class="center-block">
										<img class="profile-img" src="resources/img/photo.jpg.png">
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 col-md-10  col-md-offset-1 ">
										<div class="form-group">

											<div class="input-group">
												<input class="form-control" placeholder="Username"
													name="email" type="text" style="width: 152%;"  autofocus>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<input class="form-control" placeholder="Password"
													name="password" type="password" style="width: 152%;"  value="">
											</div>
										</div>
										<div class="form-group">
											<input type="submit" class="btn btn-lg btn-primary btn-block"
												value="Sign in">
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
					<div class="panel-footer ">
						<a href="forgotPassword" style="margin-left: 108px;">Forgot
							Password</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>