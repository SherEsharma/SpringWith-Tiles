<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<body>

	<h3>Welcome :
		${userSession.firstName}&nbsp&nbsp${userSession.lastName}</h3>
	<img alt="" src="resources/img/bg3.jpg" style="width: 100%;">
</body>
</html>