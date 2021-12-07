<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
		if ((session.getAttribute("username") == null || session.getAttribute("role") == null) || !session.getAttribute("role").equals("admin")) {
			response.sendRedirect("/");
		}
	} catch (Exception e) {
		response.sendRedirect("/");
	}
	%>

	${requestScope.msg}
	<form:form method="post" modelAttribute="course">
		<table>
			<tr>
				<td>Course Name</td>
				<td><form:input path="courseName" /></td>
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
				<td><input type="submit" value="Add new course" /></td>
			</tr>
		</table>
	</form:form>
	<a href='<spring:url value="homepage"></spring:url>'>home</a>
</body>
</html>