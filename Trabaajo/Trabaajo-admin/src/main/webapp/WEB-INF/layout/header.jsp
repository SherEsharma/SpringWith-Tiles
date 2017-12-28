<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<link href="resources/assets/css/bootstrap.css" rel="stylesheet" />
<link href="resources/assets/css/font-awesome.css" rel="stylesheet" />
<link href="resources/assets/css/style.css" rel="stylesheet" />
<!-- HTML5 Shiv and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<!-- <script
	src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
 -->
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script
	src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.3.min.js">
	
</script>

<title>this is header</title>
</head>
<body>
	<header>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<strong>Email: </strong>www.aartek.co.in &nbsp;&nbsp; <strong>Contact
						Us: </strong>+ 0731-4070712
				</div>

			</div>
		</div>
	</header>
	<div class="navbar navbar-inverse set-radius-zero">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"> <img
					src="resources/img/logo.png"
					style="width: 232px; margin-left: -156px; margin-top: 23px;">
				</a>

			</div>

			<div class="left-div">
				<div class="user-settings-wrapper">
					<ul class="nav">

						<li>
							<div class="dropdown-menu dropdown-settings">
								<div class="media">

									<div class="media-body">
										<h4 class="media-heading">Jhon Deo Alex</h4>
										<h5>Developer &amp; Designer</h5>
									</div>
								</div>
								<hr>
								<h5>
									<strong>Personal Bio : </strong>
								</h5>
								Anim pariatur cliche reprehen derit.
								<hr>
								<a href="#" class="btn btn-info btn-sm">Full Profile</a>&nbsp; <a
									href="login.html" class="btn btn-danger btn-sm">Logout</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- LOGO HEADER END-->
	<!-- <section class="menu-section"> -->
	<section class="menu-section" style="height: height: 30px;">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="navbar-collapse collapse ">
						<ul id="menu-top" class="nav navbar-nav navbar-right">
							<c:choose>
								<c:when test="${not empty sessionScope.userSession.email}">
									<li><a href="userHome">Home</a></li>
									<li><a href="viewTimeSheet">View Time Sheet</a></li>
									<li><a href="changePassword">ChangePassword</a></li>
									<li><a href="logout">Logout</a></li>
									<c:choose>
										<c:when test="${userSession.isAdministrate=='Y'}">
											<li><a href="uploadExcel">Upload File</a></li>
											
											
										</c:when>
									</c:choose>
									
								</c:when>
								<c:otherwise>
									<li><a href="home">Home</a></li>
									<li><a href="showLoginForm">Login Page</a></li>
									<li><a href="registration">Registration</a></li>
									
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</section>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="navbar-collapse collapse ">
					<div style="margin-top: -11%; margin-left: 20%; font-size: 22px;">Welcome
						To Aartek Software Solutions Pvt. Ltd.</div>

				</div>
			</div>

		</div>
	</div>
	</section>
</head>
</body>
</html>