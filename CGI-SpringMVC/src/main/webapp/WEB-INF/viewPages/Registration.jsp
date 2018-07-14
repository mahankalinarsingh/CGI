<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CGI | Registration Form</title>
<script type="text/javascript" src="<c:url value='/js/jquery-1.11.1.js' />"></script>
<script type="text/javascript" src="<c:url value='/js/validation.js' />"></script>
</head>
<body>
	<center>

		<div style="color: teal; font-size: 30px">CGI | Registration
			Form</div>

		<form:form id="registerForm" modelAttribute="employee" method="post"
			action="register">
			<table width="400px" height="150px">
				<tr>
					<td>Employee Name</td>
					<td><input type="text" name="employeeName" id="employeeName" onkeypress="clearField()" /></td>
					<td><p style="color: red" id="errorMessageID1">Please enter Name Field</p></td>
				</tr>
				<tr>
					<td>Employee MobileNo</td>
					<td><input type="text" name="employeeMobileNo"
						id="employeeMobileNO" onkeypress="clearField()" /></td>
					<td><p style="color: red" id="errorMessageID2">Please enter Mobile Field</p></td>
				</tr>
				<tr>

					<td align="center"><input type="submit" value="Register" onclick="return registrationValidation()" /></td>
				</tr>
			</table>
		</form:form>


		<a href="ViewEmployee">Click Here to see User List</a>
	</center>
</body>
</html>
