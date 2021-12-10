<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {
	color: blue;
	font-size: 20px;
	padding: 10px;
	border: 1px solid black;
}

.content {
	color: black
}

table {
	border: 1px solid black;
	margin-left: 25%;
	margin-top: 3%;
	text-align: left;
	background-color: lightblue;
	width: 50%;
	border-radius: 10px;
}
</style>
</head>
<body>
	<a href='<spring:url value="homepage"></spring:url>'>home</a>

	<h2 align="center">FEEDBACKS</h2>
	<hr>
	<table>
		<tr>
			<td>FEEDBACK ID</td>
			<td>USER ID</td>
			<td>NAME</td>
			<td>EMAIL</td>
			<td>FEEDBACK</td>
		</tr>
		<c:forEach var="fd" items="${requestScope.list}">
			<tr>
				<td class="content">${fd.id}</td>
				<td class="content">${fd.user.userId}</td>
				<td class="content">${fd.name}</td>
				<td class="content">${fd.email}</td>
				<td class="content">${fd.feedback}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>