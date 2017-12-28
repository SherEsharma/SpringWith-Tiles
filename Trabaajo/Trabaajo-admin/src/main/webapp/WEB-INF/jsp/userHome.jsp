<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">

<script>
	$(document).ready(function() {
		$('#timeSheet').DataTable();
	});
</script>
<style>
table.dataTable {
	width: 89% !important;
}

.dataTables_wrapper .dataTables_length {
	margin-left: 6%;
}

.dataTables_wrapper .dataTables_filter {
	margin-right: 6%;
}

.dataTables_wrapper .dataTables_info {
	margin-left: 5%;
}

.dataTables_wrapper .dataTables_paginate {
	margin-right: 5%;
}
</style>
<head>
<body>
	<div>
		<h4>
			<b><a href="#" style="margin-left: 495px;">View Time Sheet</a></b>
		</h4>
	</div>
	<table id="timeSheet" border="6" style="border-color: #861414">
		<thead>
			<tr>
				<!-- <th>serialNo</th> -->
				<!-- <th>empCode</th> -->
				<th>cardNo</th>
				<th>empName</th>
				<!-- <th>shiftStart</th>
				<th>shiftEnd</th> -->
				<th>inTime</th>
				<th>outTime</th>
				<th>shiftHrs</th>
				<th>workHrs</th>
				<!-- <th>otHrs</th> -->
				<th>earlyArr</th>
				<th>lateArr</th>
				<th>lateDep</th>
				<th>earlyDep</th>
				<th>status</th>
				<th>date</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<%-- <td>${list.serialNo}</td>
					<td>${list.empCode}</td> --%>
					<td>${list.cardNo}</td>
					<td>${list.empName}</td>
					<%-- <td>${list.shiftStart}</td>
					<td>${list.shiftEnd}</td> --%>
					<td>${list.inTime}</td>
					<td>${list.outTime}</td>
					<td>${list.shiftHrs}</td>
					<td>${list.workHrs}</td>
					<%-- <td>${list.otHrs}</td> --%>
					<td>${list.earlyArr}</td>
					<td>${list.lateArr}</td>
					<td>${list.lateDep}</td>
					<td>${list.earlyDep}</td>
					<td>${list.status}</td>
					<td>${list.date}</td>
				</tr>

			</c:forEach>
		</tbody>

	</table>

</body>
</html>