<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<%
	try {
		if ((session.getAttribute("username") == null || session.getAttribute("role") == null) || !session.getAttribute("role").equals("user")) {
			response.sendRedirect("/");
		}
	} catch (Exception e) {
		response.sendRedirect("/");
	}
	%>
		<a href='<spring:url value="homepage"></spring:url>'>home</a>
		<h2 style="text-align: center">GIVE FEEDBACK</h2><hr>
		<form:form method="post" modelAttribute="feedbackDto">
		<table
		style="background-color: lightgrey; margin: auto;; border: 5px solid black;padding: 30px;width: 30%">
				<tr>
					<td>Name</td>
					<td><form:input path="name"/>  </td>
				</tr>
				<tr>
					<td>Email</td>
					<td><form:input path="email"/>  </td>
				</tr>
				<tr>
					<td>User ID</td>
					<td><form:input path="userId" type="number"/>  </td>
				</tr>
					<tr>
					<td>Feedback</td>
					<td><form:input path="feedback"/>  </td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center"><input type="submit" value="Submit Feedback"/></td>
				</tr>
			</table>
		</form:form>
		
</body>
</html>