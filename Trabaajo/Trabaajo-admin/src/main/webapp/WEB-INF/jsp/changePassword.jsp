<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="resources\assets\js\jqueryValidation.js"></script>
<script src="resources\assets\css\validationEngine.jquery.css"></script>
<!-- <script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript"
	src="resources/buildingmarket/js/jqueryValidation.js"></script> -->
<script type="text/javascript">
	$().ready(function() {
		$("#myform").validate({
			rules : {

				oldPassword : "required",
				password : "required",
				confirmPassword : {
					equalTo : "#password"
				},

			},

			messages : {
				oldPassword : "Old Password can't be blank",
				password : "New Password can't be blank",
				confirmPassword : {
					required : "Confirm Password can't be blank",
					equalTo : "Password Mis-match"
				},

			},
		});
	});
</script>
<script type="text/javascript">
	function getPassword(oldPassword) {

		if (oldPassword != "") {
			$
					.ajax({
						url : "getPassword",
						data : "oldPassword=" + oldPassword,
						type : "GET",
						success : function(msg) {
							if (msg == false) {
								document.getElementById("oldPassword").innerHTML = "Old password is not correct";
								document.getElementById("oldPassword").style.color = "red";
								$("#oldPassword1").val("");
								document.getElementById("oldPassword1").focus();

								return false;
							}

						}
					});
		}
	}
</script>
<script>
	/* $('#confirmPassword').on('keyup', function () {
	 if ($(this).val() == $('#password').val()) {
	 $('#message').html('matching').css('color', 'green');
	 } else $('#message').html('not matching').css('color', 'red');
	 }); */
</script>
<style>
label.error {
	color: red;
	font-style: italic;
}

.myform {
	margin-top: 5%;
}

.mylabel {
	margin-left: 4%;
	margin-top: 1%;
	float: left;
}
</style>
<style>
.bordered {
	width: 454px;
	height: inherit;
	padding: 13px;
	border: 1px solid #3d3d3d;
	border-radius: 8px;
	margin-left: 330px;
	float: left;
	padding: 13px;
	border: 1px solid #3d3d3d;
	border-radius: 8px;
	margin-left: 350px;
	margin-bottom: 40px;
}
</style>
</head>
<body>

	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
				<div style="color: red; margin-top: 1%; margin-left: 38%;">${successMessage}</div>
				<div class="col-lg-12">

					<h1 class="page-header">Change Password</h1>
				</div>

				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->


			<div class="bordered">
				<div class="col-lg-6" style="margin-left: 29%;">

					<form:form method="POST" action="confirmPassword" id="myform"
						name="myform" modelAttribute="registration">

						<%-- <form:form role="form" action="changePassword" method="GET"
										modelAttribute="registration" id="myform"> --%>
						<span id="oldPassword"></span>
						<div class="form-group myform">
							<label class="mylabel">Old Password</label>
							<form:password path="oldPassword" class="form-control"
								placeholder="Enter Old Password" id="oldPassword1"
								onblur="getPassword(this.value)" maxlength="20" />
							<span id="spanPassword"></span>
							<form:hidden path="email" value="${userSession.email}"
								class="form-control" placeholder="Enter Title" />

						</div>
						<div class="form-group myform">
							<label class="mylabel">New Password</label>
							<form:password path="password" class="form-control"
								maxlength="12" placeholder="Enter New Password" id="password" />
						</div>

						<div class="form-group myform">
							<label class="mylabel">Confirm Password</label>
							<form:password path="confirmPassword" class="form-control"
								placeholder="Enter New Password" id="confirmPassword"
								maxlength="12" />
						</div>

						<button type="submit" class="btn btn-default"
							style="color: red; margin-left: 22%;">Submit</button>

					</form:form>
				</div>
			</div>

			<!-- /.row (nested) -->



			<!-- /.panel -->

			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->


	<!-- /#wrapper -->

</body>
</html>