<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
 -->
<title>Insert title here</title>
</head>
<body>
	<%-- <div class="container">
		<form action="addUser" method="post">
			<div class="form-group">
				<div class="row">
					<div class="col-md-3 col-md-offset-3">EmailId</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="emailId" />
					</div>
				</div>
			</div>
			<div class="form-group">

				<div class="row">
					<div class="col-md-3 col-md-offset-3">PhoneNumber</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="phoneNumber" />
					</div>
				</div>
			</div>

			<div class="form-group">

				<div class="row">
					<div class="col-md-3 col-md-offset-3">PassWord</div>
					<div class="col-md-3">
						<input type="password" name="password" class="form-control" />
					</div>
				</div>
			</div>

			<div class="form-group">

				<div class="row">
					<div class="col-md-3 col-md-offset-3">Re-EnterPassWord</div>
					<div class="col-md-3">
						<input type="password" name="repassword" class="form-control" />
					</div>
				</div>
			</div>
			<div class="form-group">

				<div class="row">
					<div class="col-md-3 col-md-offset-3">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
					<div class="col-md-3">
						<input type="submit" class="btn btn-primary" value="Clear" />
					</div>
				</div>
			</div>

		</form>
	</div>
 --%>


	 <form action="fileUpload" method="post">
		<table>
			<tr>
			<th>${message} </th>
			</tr>
			<tr>
				<td><input type="file" name="testfile"/></td>
				<td><input type="submit" value="submit" name="clear"/></td>
			</tr>
		</table>
	</form> 
</body>
</html>