<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	input  {
		width: 250px;
		background-color: lightblue;
		border-radius: 10px
	}
	
	input {
		width: 250px;
		height: 30px
	}
	#btn {
		width: 130px;
		background-color: lightgreen;
	}
	
	td {
		font-weight: bolder;
		padding: 15px;
	}
</style>
</head>
<body>
	<a href='<spring:url value="homepage"></spring:url>'>home</a>
	<h2 style="text-align: center">ADD NEW COURSE</h2>
	<hr>
	${requestScope.msg}
	<form:form method="post" modelAttribute="course">
		<table style="margin: auto;border: 2px solid black;height: 450px">
			<tr>
				<td>Course Name</td>
				<td><form:input path="courseName"/></td>
			</tr>
			<tr>
				<td>Course Resource</td>
				<td><form:input path="courseResource" /></td>
			</tr>
			<tr>
				<td>Course ID</td>
				<td><form:input path="courseId" type="number" /></td>
			</tr>
			<tr>
				<td>Course Description</td>
				<td><form:input path="courseDesc" /></td>
			</tr>
			<tr>
				<td>Course Fees</td>
				<td><form:input path="courseFee" type="number"/></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center"><input type="submit" value="Add new course" id="btn"/></td>
			</tr>
		</table>
	</form:form>
</body>
</html>