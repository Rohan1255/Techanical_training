<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2 style="text-align: center">ALL COURSES</h2>
	<table
		style="width: 50%; border: 1px solid black; margin-left: 25%; margin-top: 3%; text-align: left; background-color: lightblue">
		<tr>
			<td style="color: blue; font-size: 20px">Course Name</td>
			<td style="color: blue; font-size: 20px">Description</td>
			<td style="color: blue; font-size: 20px">Fees</td>
		</tr>
		<c:forEach var="course" items="${requestScope.list}">
			<tr>
				<td>${course.courseName}</td>
				<td>${course.courseDesc}</td>
				<td>${course.courseFee}</td>
				<td>
				<td><a
					href='<spring:url value="enrollcourse?cid=${course.courseId}"/>'>Enroll</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>