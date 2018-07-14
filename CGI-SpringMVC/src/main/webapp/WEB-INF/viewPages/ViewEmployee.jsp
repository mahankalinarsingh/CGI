
<%@page import="com.cgi.bean.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EmployeeData</title>
</head>
<body>
	<center>

		<div style="color: teal; font-size: 30px">Employee Details</div>

		<%-- <c:if test="${!empty employeeList}"> --%>
		<table border="1" bgcolor="black" width="600px">
			<tr style="background-color: teal; color: white; text-align: center;"
				height="40px">

				<td>Name</td>
				<td>PhoneNo</td>
			</tr>

			<c:forEach items="${employeeList}" var="employee">
				<tr
					style="background-color: white; color: black; text-align: center;"
					height="30px">

					<td>${employee.employeeName}</td>
					<td><c:out value="${employee.employeeMobileNo}" /></td>
				</tr>
			</c:forEach>
		</table>
		<%-- </c:if> --%>


		<a href="openForm">Click Here to add EmployeeData</a>
	</center>
</body>
</html>
