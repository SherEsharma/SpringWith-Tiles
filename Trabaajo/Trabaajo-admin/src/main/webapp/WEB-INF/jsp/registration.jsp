
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="resources\assets\js\jqueryValidation.js"></script>
<script src="resources\assets\css\validationEngine.jquery.css"></script>
<!-- <script src="resources/jsp-js/beacon-embed.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js">
	
</script>
<script type="text/javascript" src="resources/jqueryValidation.js"></script>
 -->
<script type="text/javascript">
	function getEmailId(email) {
		

		       $
				.ajax({
					url : "getEmail",
					data : "email=" + email,
					type : "GET",
					success : function(msg) {
						if (msg === "true") {
							document.getElementById("exist").innerHTML = "Already exist in database";
							document.getElementById("email").value = "";
							document.getElementById("span").innerHTML = "please insert another email id";
							document.getElementById("spanMobileNumber").style.color = "red"
						} else {

						}

					}

				});
	}
</script>
<script>
	$(function() {
		$("#datepicker").datepicker();

	});
</script>

<script>
	$(document).ready(function() {
		$("#myform").validate({
			rules : {
				firstName : "required",
				lastName : "required",
				password : "required",
				contact : "required",
				CardNo : "required",
				gender : "required",
				dateOfbirth : "required",
				email : "required",
				check : "required",
				email : "required",
				email : {
					email :   "Nessary @ and numeric",
				},

				contact : {
					required : true,
					number : true,
					maxlength : 10,
					minlength : 10

				},
				/* email :{
					required : true,
					number : true,
					maxlength : 25,
					minlength : 25
					
				}, */

				CardNo : {
					required : true,
					number : true,
					maxlength : 4,

				},
			},
			messages : {
				firstName : "First Name can't be blank",
				lastName : "Last Name can't be blank",
				password : "Password can't be blank",
				CardNo : "CardNo can't be blank",
				dateOfbirth : "Date Of Birth can't be blank",
				email : " Fill the correct email",
				gender : "Select Gender",

				contact : {
					required : "Contact Number can't be blank",
					number : "Only Numbers Allowed",
					maxlength : "Maximum 10 digit Allowed",
					minlength : "Minimum 10 digit Allowed"

				},
				CardNo : {
					required : "Card No can't be blank",
					number : "Only Numbers Allowed",
					maxlength : "Maximum 4 digit Allowed",

				},
			}
		});
	});
</script>
</head>

<style>
form {
	border: 0px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	height: 34px;
}

button {
	background-color: #c36464;
	color: white;
	padding: 4px 20px;
	margin: 13px 0;
	border: none;
	cursor: pointer;
	margin-left: 9%;
	width: 22%;
	padding: 4px 20px;
	margin: 13px 0;
	border: none;
	cursor: pointer;
	margin-left: 9%;
	margin: 13px 0;
	border: none;
	cursor: pointer;
	margin-left: 9%;
	border: none;
	cursor: pointer;
	margin-left: 9%;
	cursor: pointer;
	margin-left: 37%;
	margin-top: 6%;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 3px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 200px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}

a.show_data {
	margin-left: 44%;
}
</style>
 <style type="text/css">
.error {
	
    color: red;
    font-style: italic;
    padding-bottom: 2%;
    margin-right: 9px;

}
</style> 
<style>
.bordered {
	width: 546px;
	height: inherit;
	padding: 33px;
	border: 1px solid #3d3d3d;
	border-radius: 8px;
	margin-left: 330px;
	float: left;
}
</style>

<body>
	<h2>USER REGISTRATION FORM</h2>

	<form:form method="POST" action="saveRegistration" id="myform"
		name="myform" modelAttribute="registration">
		<div class="imgcontainer"></div>
		<div class="bordered">

			<div class="" style="width: 97%;">

				<label><b>First Name:</b></label>

				<form:input path="firstName"
					placeholder="Enter Your First Name" required="onfocuse"
					maxlength="30" />

				<label><b>Last Name:</b></label>
				<form:input path="lastName"
					placeholder="Enter Your Last Name" required="onfocuse"
					maxlength="30" />
				<span id="exist" style="color: red; margin-left: 2%;"></span> <label><b>Email:</b></label>

				<form:input path="email" placeholder="Enter Your Email"
					id="email" onblur="getEmailId(this.value)" maxlength="45"
					required="onfocuse" />


				<%-- pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" /> --%>
				<%-- 
					 <form:input path ="email" name="emailId" id="email"
					placeholder="Valid Email Address" onblur="getEmail(this.value)" />
                                                                                       --%>
				<label><b>Password:</b></label>

				<form:password path="password"
					placeholder="Enter Your Password" required="onfocuse"
					maxlength="12"></form:password>

				<label><b>Contact:</b></label>
				<form:input path="contact" placeholder="Enter Your Contact Number"
					maxlength="10" pattern="[789]{1}[0-9]{9}" />



				<label><b>Card No:</b></label>
				<form:input path="CardNo" placeholder="Enter Your Card No"
					required="onfocuse" maxlength="4"></form:input>

				<label><b>Date Of Birth:</b></label>

				<form:input path="dateOfbirth" placeholder="Enter Date Of birth"
					required="onfocuse" id="datepicker" readonly="true"></form:input>

				<label id="gender"><b>Gender:</b></label> <span id="male"> <form:radiobutton
						path="gender" value="male" /> Male:
				</span> <span id="female"> <form:radiobutton path="gender"
						value="female" /> Female: <span id="msg" style="color: red;">
				</span>
				</span>

				<button type="submit" class="btn btn-lg btn-primary btn-block"   id="submit">SIGN UP</button>
			</div>
		</div>

	</form:form>
</body>
</html>