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
input {
	width: 250px;
	background-color: lightblue;
	border-radius: 10px;
	width: 250px;
	height: 30px
}

h2 {
	text-align: center;
}

#btn {
	width: 130px;
	background-color: lightgreen;
}

td {
	font-weight: bolder;
	padding: 15px;
}

table {
	margin: auto; 
	border: 2px solid black;
	height: 450px;
	width: 400px
}
h4 {
	text-align: center;
	color:red
}
</style>
</head>
<body>
<a href='<spring:url value="/"></spring:url>'>back</a>
	<h2>REGISTER </h2>
	<hr>
	<h4>${requestScope.msg}</h4>
	<form:form method="post" modelAttribute="userDto" enctype="multipart/form-data">
		<table>
			<tr>
				<td>User ID</td>
				<td><form:input path="userId" type="number" /></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:password path="password"/></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><form:input path="phone" type="number" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
				<td>Upload photo</td>
				<td><form:input type="file" path="photo"/></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center"><input type="submit"
					value="Register" id="btn" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>