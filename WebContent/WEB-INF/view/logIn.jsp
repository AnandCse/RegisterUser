<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
 
<title>Insert title here</title>
</head>
<body>

	<form action="logIn" method="POST">

		<div class="container">
			<div class="form-group">

				<div class="row">
					<div class="col-md-3 col-md-offset-3">EmailId</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="userName" />
					</div>
				</div>
			</div>
			<div class="form-group">

				<div class="row">
					<div class="col-md-3 col-md-offset-3">Re-EnterPassWord</div>
					<div class="col-md-3">
						<input type="password" name="password" class="form-control" />
					</div>
				</div>
			</div>
			<div class="form-group">


				<div class="row">
					<div class="col-md-2 col-md-offset-5">
						<input type="submit" class="btn btn-primary" value="SignIn" />
					</div>
					<div class="col-md-2">
						<input type="submit" class="btn btn-primary" value="Cancel" />
					</div>

				</div>
			</div>
		</div>
	</form>









	<!-- <form action="logIn" method="POST">
		<table>
			<tr>
				<td>EmailID</td>
				<td><input type="text" name="userName" /></td>
			</tr>
			<tr>
				<td>PassWord</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="SignIn" /></td>
				<td><input type="submit" value="Cancel" /></td>
			</tr>
		</table>
	</form> -->
</body>
</html>