<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="css/userForm.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	function edit(id) {
		document.forms[0].action="application?id="+id;
		         
		         document.forms[0].submit();
     }
</script>

<body>
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>


	<div class="container" style="border: 2px solid #a1a1a1">
		<form id="edit" method="POST" action="application">
			<input type="hidden" id="selectedUser" value='' />
			<div class="form-group">
				<div class="row">
					<div class="col-md-4">
						<h3>UserApplication Details</h3>
					</div>
					<div class="col-md-6" style="height: 20px; margin-top: 30px">
						<input type="submit" class="btn btn-primary"
							value="Click to Add New Application" name="submit" />
					</div>
				</div>
			</div>

			<div>
				<div class="form-group">
					<div class="row">
						<div class="col-md-3">
							<label>Name</label>
						</div>

						<div class="col-md-3">
							<label>Date</label>
						</div>


					</div>
				</div>


				<c:forEach items="${user}" var="userList" varStatus="status">
					<div class="form-group">
						<div class="row">
							<div class="col-md-3">${userList.userName}</div>
							<input type="hidden" id="${userList.id}" value="${userList.id}" />

							<div class="col-md-3">${userList.date}</div>




							<div class="col-md-3">
								<input type="submit" class="btn btn-primary" value="Edit"
									name="submit" onClick="edit(${userList.id})" />


							</div>
						</div>
					</div>

				</c:forEach>

			</div>
		</form>





	</div>



</body>
</html>

























<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	function edit(id) {
		document.forms[0].action="application?id="+id;
		         
		         document.forms[0].submit();
     }
</script>

<body>
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>


	<div class="container">
		<form id="edit" method="POST" action="application">
			<input type="hidden" id="selectedUser" value='' />
			<div class="form-group">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<h3>UserApplication Details</h3>
					</div>
					<div class="col-md-4">
						<input type="submit" class="btn btn-primary" value="Add"
							name="submit" />
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-md-3">
						<label>Name</label>
					</div>

					<div class="col-md-3">
						<label>Date</label>
					</div>


				</div>
			</div>


			<c:forEach items="${user}" var="userList" varStatus="status">
				<div class="form-group">
					<div class="row">
						<div class="col-md-3">${userList.userName}</div>
						<input type="hidden" id="${userList.id}" value="${userList.id}" />

						<div class="col-md-3">${userList.date}</div>




						<div class="col-md-3">
							<input type="submit" class="btn btn-primary" value="Edit"
								name="submit" onClick="edit(${userList.id})" />


						</div>
					</div>
				</div>

			</c:forEach>


		</form>





	</div>



</body>
</html> --%>