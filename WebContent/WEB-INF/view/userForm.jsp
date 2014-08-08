<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form action="addUser" method="post">
		<table>
			<tr>
				<th>${message}</th>
			</tr>
			<tr>
				<td>EmailId</td>
				<td><input type="text" name="emailId" /></td>
			</tr>
			<tr>
				<td>PhoneNumber</td>
				<td><input type="text" name="phoneNumber" /></td>
			</tr>
			<tr>
				<td>PassWord</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>Re-EnterPassWord</td>
				<td><input type="password" name="repassword" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="submit" /></td>
				<td><input type="submit" value="clear" /></td>
			</tr>
		</table>
	</form>
</body>
</html>