<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	margin-left: 35%;
	margin-top: 15%;
	border: 2px solid black;
	border-radius: 5px;
	width: 30%;
	height: 100px;
	text-align: center;
}

a {
	text-decoration: none;
	text-shadow: aqua;
	font-weight: bolder;
	font-size: large
}

#reg {
	text-decoration: underline;
	margin-left: 60%;
	font-size: medium;
}
</style>
</head>
<body>
	${requestScope.msg}
	<div>
		<br> <br> <a
			href='<spring:url value="login?role=user"></spring:url>'>User
			Login</a>&nbsp&nbsp&nbsp&nbsp <a
			href='<spring:url value="login?role=admin"></spring:url>'>Admin
			Login</a><br> <br> <a id="reg"
			href='<spring:url value="register"></spring:url>'>New user?
			Register</a>
	</div>
</body>
</html>