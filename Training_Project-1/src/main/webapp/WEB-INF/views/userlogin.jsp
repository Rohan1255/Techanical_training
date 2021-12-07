<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="margin-left: 20%;margin-top: 10%;border: 2px solid black;border-radius: 5px;width: 60%;height: 300px;text-align: center;">
		<h1 align="center">USER LOGIN</h1>
		<form:form method="post" modelAttribute="loginRequest">
			<table style="width: 30%;border: 1px solid black;margin-left: 30%;margin-top: 5%;text-align: center;padding: 30px;border-radius: 10px">
				<tr>
					<td>USER ID</td>
					<td><form:input path="userId" type="number"/>  </td>
				</tr>
					<tr>
					<td>PASSWORD</td>
					<td><form:input path="password"/>  </td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Login"/></td>
				</tr>
			</table>
			<h4 style="color: red;text-align: center">${requestScope.msg}</h4>
		</form:form>
	</div>
</body>
</html>