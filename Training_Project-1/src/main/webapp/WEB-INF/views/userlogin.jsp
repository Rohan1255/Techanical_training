<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 30%;
	border: 1px solid black;
	margin: auto;
	text-align: center;
	padding: 30px;
	border-radius: 10px;
	text-align: center;
}

#btn {
	background-color: lightgreen;
}
</style>
</head>
<body>
	<a href='<spring:url value="/"></spring:url>'>back</a>
	<h2 align="center">USER LOGIN</h2>
	<hr>
	<br>
	<form:form method="post" modelAttribute="loginRequest">
		<table>
			<tr>
				<td>USER ID</td>
				<td><form:input path="userId" type="number" /></td>
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Login" id="btn" /></td>
			</tr>
		</table>
		<h4 style="color: red; text-align: center">${requestScope.msg}</h4>
	</form:form>
</body>
</html>