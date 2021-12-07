<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="margin-left: 35%;margin-top: 20%;border: 2px solid black;border-radius: 5px;width: 30%;height: 100px;text-align: center;">
		<br><br><a href='<spring:url value="login?role=user"></spring:url>' >User Login</a>&nbsp&nbsp&nbsp&nbsp
		<a href='<spring:url value="login?role=admin"></spring:url>'>Admin Login</a>
	</div>
</body>
</html>