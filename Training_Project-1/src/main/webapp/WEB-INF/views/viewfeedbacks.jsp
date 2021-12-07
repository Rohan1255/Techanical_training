<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href='<spring:url value="homepage"></spring:url>'>home</a>
<hr>
	<h2 align="center">FEEDBACKS</h2>
	<table
		style="background-color: lightgrey; margin: auto;; border: 5px solid black;padding: 25px">
		<tr>
			<td style="color: blue;font-weight: bolder;font-size: large;">ID</td>
			<td style="color: blue;font-weight: bolder;font-size: large;">NAME</td>
			<td style="color: blue;font-weight: bolder;font-size: large;">EMAIL</td>
			<td style="color: blue;font-weight: bolder;font-size: large;">FEEDBACK</td>
		</tr>
		<c:forEach var="fd" items="${requestScope.list}">
			<tr>
				<td style="padding: 10px">${fd.id}</td>
				<td style="padding: 10px">${fd.name}</td>
				<td style="padding: 10px">${fd.email}</td>
				<td style="padding: 10px">${fd.feedback}</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>