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
	<h3 style="color: blue">Hello, ${sessionScope.username}</h3>
	<h3 align="right">
		<a href='<spring:url value="logout"></spring:url>'>logout</a>
	</h3>
	<hr>

	<a href='<spring:url value="addcourse"></spring:url>'>Add new
		Course</a>
	<br>
	<a href='<spring:url value="allcourses"></spring:url>'>Show all
		courses</a>
	<br>
	<a href='<spring:url value="feedback"></spring:url>'>View Feedbacks</a>
</body>
</html>