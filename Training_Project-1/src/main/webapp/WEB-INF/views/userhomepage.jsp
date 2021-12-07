<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
	try {
		if ((session.getAttribute("username") == null || session.getAttribute("role") == null) || !session.getAttribute("role").equals("user")) {
			response.sendRedirect("/");
		}
	} catch (Exception e) {
		response.sendRedirect("/");
	}
	%>
	<h3 style="color: blue">Hello, ${sessionScope.username}</h3>
	<h3 align="right"><a href='<spring:url value="logout"></spring:url>'>logout</a></h3>
	<hr>

	${requestScope.msg}<br>
	<a href='<spring:url value="feedback"></spring:url>'>give
		Feedbacks</a><br>
	<a href='<spring:url value="enroll"></spring:url>'>Enroll to Course</a>
</body>
</html>