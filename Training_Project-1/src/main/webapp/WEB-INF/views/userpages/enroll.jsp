<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
	<a href='<spring:url value="/user/homepage"></spring:url>'>home</a>
	<h2 style="text-align: center">ALL COURSES</h2>
	<hr>
	<table>
		<tr>
			<td>Course Name</td>
			<td>Description</td>
			<td>Fees</td>
		</tr>
		<c:forEach var="course" items="${requestScope.list}">
			<tr>
				<td class="content">${course.courseName}</td>
				<td class="content">${course.courseDesc}</td>
				<td class="contentw">${course.courseFee}</td>
				<td><a
					href='<spring:url value="enrollcourse?cid=${course.courseId}"/>'>Enroll</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>