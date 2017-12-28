<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script type="text/javascript">
	var _validFileExtensions = [ ".xls" ];
	function Validate(oForm) {
		var arrInputs = oForm.getElementsByTagName("input");
		for (var i = 0; i < arrInputs.length; i++) {
			var oInput = arrInputs[i];
			if (oInput.type == "file") {
				var sFileName = oInput.value;
				if (sFileName.length > 0) {
					var blnValid = false;
					for (var j = 0; j < _validFileExtensions.length; j++) {
						var sCurExtension = _validFileExtensions[j];
						if (sFileName.substr(
								sFileName.length - sCurExtension.length,
								sCurExtension.length).toLowerCase() == sCurExtension
								.toLowerCase()) {
							blnValid = true;
							break;
						}
					}

					if (!blnValid) {
						document.getElementById("csvData").innerHTML = "Only Xls files are allowed to be open!";
						/* alert("Sorry, " + sFileName
								+ " is invalid, allowed extensions are: "
								+ _validFileExtensions.join(", ")); */
						return false;
					}
				}
			}
		}

		return true;
	}
</script>

<script>
	$(document).on('click', '.inst', function() {

		$("#popInst").fadeIn(400);

	});

	$(document).on('click', '.closeImg', function() {

		$("#popInst").fadeOut(400);

	});
</script>
<style>
#popInst {
	width: 100%;
	top: 0;
	height: 700px;
	display: none;
	position: absolute;
	z-index: 1111;
	background-color: rgba(0, 0, 0, 0.17);
}

.popContent {
	width: 500px;
	height: 310px;
	background-color: #fff;
	margin: 92px auto;
	position: relative;
	padding: 13px 49px;
}

.closeImg {
	width: 24px;
	position: absolute;
	right: -15px;
	top: -11px;
	background-color: #fff;
	border-radius: 17px;
}

.form-control-custom {
	display: block;
	width: 100%;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
}
</style>
</head>

<style>
.bordered {
	width: 546px;
	height: auto;
	padding: 106px;
	border: 1px solid #3d3d3d;
	border-radius: 9px;
	margin-left: 301px;
	float: left;
	margin-bottom: 41px;
}
</style>
<body>
	<div id="popInst">

		<div class="popContent">
			<img class="closeImg" src="resources/img/close.jpg">




		</div>



	</div>
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Upload xls file</h1>
					<center class="fff-lead-custom"></center>
					<div class="bordered">
					<div style="color: red; margin-left: 20%;">${successMessage}</div>
						<div style="margin-top: -39px;">
							<form method="POST" action="saveUploadExcel"
								enctype="multipart/form-data" onsubmit="return Validate(this);">
								<span id="csvData" style="margin-left: 25%; color: red;"></span>
								<div class="col-md-5" style="margin-top: 1px; margin-left: 30%;">
									<input type="file" required="required" name="file" id="pdf"
										class="form-control-custom validate[required]">
								</div>
								<br>
								<button type="submit" class="btn btn-default"
									style="margin-top: 11px; margin-left: 41%;">Submit</button>
							</form>
						</div>
					</div>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /#page-wrapper -->
</body>
</html>