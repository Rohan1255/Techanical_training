<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	input , textarea {
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
		padding: 15px
	}
</style>
</head>
<body>
		<a href='<spring:url value="homepage"></spring:url>'>home</a>
		<h2 style="text-align: center">GIVE FEEDBACK</h2><hr>
		<form:form method="post" modelAttribute="feedbackDto">
		<table
		style="margin: auto;; border: 2px solid black;padding: 30px;width: 30%">
				<tr>
					<td>Name</td>
					<td><form:input path="name" placeholder="enter your name"/>  </td>
				</tr>
				<tr>
					<td>Email</td>
					<td><form:input path="email" placeholder="enter your email"/>  </td>
				</tr>
				<tr>
					<td>User ID</td>
					<td><form:input path="userId" type="number" placeholder="enter your user id"/>  </td>
				</tr>
					<tr>
					<td>Feedback</td>
					<td><form:textarea path="feedback" rows="6" cols="21"/>  </td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center"><input id="btn" type="submit" value="Submit Feedback"/></td>
				</tr>
			</table>
		</form:form>
		
</body>
</html>