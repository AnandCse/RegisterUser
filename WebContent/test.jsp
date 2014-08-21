<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style>
    .error {
        color: red; font-weight: bold;
    }
</style>
</head>
<body>
    <div align="center">
        <h2>Spring MVC Form Validation Demo - Login Form</h2>
        <table border="0" width="90%">
        <form:form action="test" commandName="userForm">
                <tr>
                    <td align="left" width="20%">Email: </td>
                    <td align="left" width="40%"><form:input path="email" size="30"/></td>
                    <td align="left"><form:errors path="email" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><form:password path="password" size="30"/></td>
                    <td><form:errors path="password" cssClass="error"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="center"><input type="submit" value="Login"/></td>
                    <td></td>
                </tr>
        </form:form>
        </table>
    </div>
</body>
</html> --%>













@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="css/application.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="js/jquery-1.11.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<title>Insert title here</title>

<script>
	function check() {

		var gender = document.getElementsByName('sex');
		var gend = document.getElementById('gender1');
		var userstatus = document.getElementById("marstatus");
		var status = document.getElementsByName("status");
		if ((gender[0].value) == gend.value) {
			document.getElementById('male').checked = true;
		} else {
			document.getElementById('female').checked = true;
		}

		if ((status[0].value) == userstatus.value) {
			document.getElementById('single').checked = true;
		} else {
			document.getElementById('married').checked = true;
		}

	}
</script>


</head>
<body onLoad="check()">
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				<div class="pull-left" style="width: 200px">
					<img src="img/greatLakes.jpg" class="img-thumbnail"
						style="border-top-width: 0px; margin-top: -70px; margin-left: 100px; padding-right: 20px; border-bottom-width: 0px; border-right-width: 0px; border-left-width: 0px;">
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 
					<!-- <img src="img/banner_bg.jpg"
						style="margin-left: -500; margin-left: -370px; margin-bottom: -150; margin-bottom: -200; margin-bottom: -120px;">
		 -->		
		 <img src="img/banner_bg.jpg" style="margin-left: -500; margin-left: -250px; margin-bottom: -150; margin-bottom: -200; margin-bottom: -120px;width: 1500px;">
		 </div>
				<!-- <div class="pull-right">
				<h4>Student Log In</h4>
			</div>-->
			</div>
		</div>
	</div>


	<div class="container" style="margin-botom: -100px">

		<div class="row">
			<div class="col-md-3  col-md-offset-1">
				<div
					style="width: 100%; color: #36798E; float: left; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
					class="updatesheading3">
					<div
						style="position: relative; top: 0px; width: 200px; float: left;">
						<label>Application Form</label>
					</div>
				</div>
			</div>

		</div>
		<div class="row" style="margin-botom: -50px">
			<div class="col-md-10 col-md-offset-1">
				<img src="img/line4.jpg" style="width: 1000px" />
			</div>
		</div>

	</div>
	<div class="container">
		<div class="row">
			<div
				class="col-md-10 col-md-offset-1 col-sm-10 col-xs-offset-1 col-xs-10 col-xs-offset-1">
				${message}
				<div
					style="width: 100%; color: #36798E; float: left; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
					class="updatesheading3">
					<div
						style="position: relative; top: 0px; width: 200px; float: left;">
						<label
							style="margin-top: -40px; margin-left: 50px; font-size: 14px">Personal
							Details</label>
					</div>
				</div>
				<form action="addData" method="post" style="width: 250"
					class="form-horizontal" enctype="multipart/form-data">
					<input type="hidden" name="userId" value="${user.id}" />
					<div class="row">
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" id="userName" name="userName"
										value="${user.userName}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">UpLoad your
									Photo</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="file" name="file" />
								</div>

							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Gender</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<div class="row" style="margin-left: -10px">
										<div class="col-md-1 col-sm-1 col-xs-1 pull-left">
											<input type="radio" id="male" name="sex" value="male" />
										</div>
										<div class="col-md-3 col-sm-3 col-xs-3">Male</div>
										<div class="col-md-1 col-sm-1 col-xs-1">
											<input type="radio" id="female" name="sex" value="feMale" />
										</div>
										<input type="hidden" id="gender1" name="sex1"
											value="${user.gender}" />
										<div class="col-md-3 col-sm-3 col-xs-3">FeMale</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">DateOfBirth
									(dd/mm/yyyy)</div>

								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="date" value="${user.dob}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">MaritalStatus</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input id="marstatus" name="mar" value="${user.maritalStatus}" />
									<!-- <input type="radio" name="status" value="single" />Single <input
											type="radio" name="status" value="married" />Married -->
									<div class="row" style="margin-left: -10px">
										<div class="col-md-1 col-sm-1 col-xs-1pull-left">
											<input type="radio" name="status" id="single" value="single" />
										</div>
										<div class="col-md-3 col-sm-3 col-xs-3">Single</div>
										<div class="col-md-1 col-sm-1 col-xs-1">
											<input type="radio" name="status" id="married"
												value="married" />
										</div>
										<div class="col-md-3 col-sm-3 col-xs-3">Married</div>
									</div>

								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Father's Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="fatherName" value="${user.fatherName}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">Father'sOccupation</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="father'sJob" value="${user.fatherJob}">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Mother'sName</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="motherName" value="${user.motherName}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">Mother'sOccupation</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="mother'sJob" value="${user.motherJob}" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Nationality</div>

								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="nationality"
										value="${user.nationality}" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">MailingAddress</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<textarea rows="4" cols="19" name="mailingAddress">${user.mailingAddress}</textarea>

								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Mobile</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="mobileNumber"
										value="${user.mobileNumber}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">LandLine</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="landLineNumber"
										value="${user.landlineNumber}" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">E-mailId</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="mailId" value="${user.emailId}" />
								</div>
							</div>
						</div>

						<div
							style="width: 100%; color: #36798E; float: left; font-size: 10px; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
							class="updatesheading3">
							<div
								style="position: relative; top: 0px; width: 200px; float: left;">
								<label
									style="margin-left: 10px; margin-top: 15px; font-size: 14px; margin-bottom: 30px">Academic
									Qualification</label>
							</div>
						</div>
						<div class="row">
							<div class="col-md-2 col-sm-10 col-xs-10">
								<label>Qualification</label>
							</div>
							<div class="col-md-1 col-sm-10 col-xs-10">
								<label>Degree</label>
							</div>
							<div class="col-md-2 col-sm-10 col-xs-10">
								<label>Discipline</label>
							</div>
							<div class="col-md-2 col-sm-10 col-xs-10">
								<label>School/college</label>
							</div>
							<div class="col-md-2 col-sm-10 col-xs-10">
								<label>Board/University</label>
							</div>
							<div class="col-md-2 col-sm-10 col-xs-10">
								<label>PassingYear</label>
							</div>
							<div class="col-md-1 col-sm-10 col-xs-10">
								<label>%/CGPA</label>
							</div>

						</div>

						<c:forEach items="${user.userAcademic}" var="academic">

							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">Post-Graduation(if
										any)</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="pg_degree"
											style="width: 100%; margin-left: 10px"
											value="${academic.pg_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="pg_discipline" style="width: 100%"
											value="${academic.pg_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="pg_school" style="width: 100%"
											value="${academic.pg_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="pg_university" style="width: 100%"
											value="${academic.pg_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="pg_passedOut"
											style="width: 100%; margin-left: -10px"
											value="${academic.pg_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="pg_percentage" style="width: 100%"
											value="${academic.pg_cgpa}" />
									</div>
								</div>
							</div>



							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">Graduation</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="ug_degree"
											style="width: 100%; margin-left: 10px"
											value="${academic.ug_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_discipline" style="width: 100%"
											value="${academic.ug_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_school" style="width: 100%"
											value="${academic.ug_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_university" style="width: 100%"
											value="${academic.ug_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_passedOut"
											style="width: 100%; margin-left: -10px"
											value="${academic.ug_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="ug_percentage" style="width: 100%"
											value="${academic.ug_cgpa}" />
									</div>
								</div>
							</div>


							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">HigherSecondary</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="hs_degree"
											style="width: 100%; margin-left: 10px"
											value="${academic.hs_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="hs_discipline" style="width: 100%"
											value="${academic.hs_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="hs_school" style="width: 100%"
											value="${academic.hs_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="hs_university" style="width: 100%"
											value="${academic.hs_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="hs_passedOut"
											style="width: 100%; margin-left: -10px"
											value="${academic.hs_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="hs_percentage" style="width: 100%"
											value="${academic.hs_cgpa}" />
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">Secondary</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="s_degree"
											style="width: 100%; margin-left: 10px"
											value="${academic.s_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_discipline" style="width: 100%"
											value="${academic.s_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_school" style="width: 100%"
											value="${academic.s_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_university" style="width: 100%"
											value="${academic.s_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_passedOut"
											style="width: 100%; margin-left: -10px"
											value="${academic.s_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="s_percentage" style="width: 100%"
											value="${academic.s_cgpa}" />
									</div>
								</div>
							</div>



							<c:forEach items="${academic.awards}" var="awards">

								<div class="row">
									<label
										style="font-weight: 500; font-family: sans-serif; font-style: italic; font-size: small;">#Branch
										of Engineering/ Science/ Arts/ Commerce/ Other</label>
								</div>

								<div
									style="width: 100%; color: #36798E; float: left; font-size: 10px; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
									class="updatesheading3">
									<div
										style="position: relative; top: 0px; width: 200px; float: left;">
										<label
											style="margin-left: 10px; margin-top: 15px; font-size: 14px; margin-bottom: 30px">AWARDS
											AND ACHIEVEMENTS</label>
									</div>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-md-1 col-sm-10 col-xs-10">a</div>
										<div class="col-md-3 col-sm-10 col-xs-10">Academic
											Honors</div>
										<div class="col-md-8 col-sm-10 col-xs-10">
											<input type="text" name="academic_honors" style="width: 100%"
												value="${awards.academicHonors}" />
										</div>

									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-1 col-sm-10 col-xs-10"></div>
										<div class="col-md-3 col-sm-10 col-xs-10"></div>
										<div class="col-md-8 col-sm-10 col-xs-10">
											<input type="text" name="ch_academic_honors"
												style="width: 100%" value="${awards.ch_academicHonors}" />
										</div>
									</div>
								</div>


								<div class="form-group">
									<div class="row">
										<div class="col-md-1 col-sm-10 col-xs-10">b</div>
										<div class="col-md-3 col-sm-10 col-xs-10">Extracurricular</div>
										<div class="col-md-8 col-sm-10 col-xs-10">
											<input type="text" name="extracurricular" style="width: 100%"
												value="${awards.extracurricular}" />
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-md-1 col-sm-10 col-xs-10"></div>
										<div class="col-md-3 col-sm-10 col-xs-10"></div>
										<div class="col-md-8 col-sm-10 col-xs-10">
											<input type="text" name="ch_extracurricular"
												style="width: 100%" value="${awards.ch_extracurricular}" />
										</div>
									</div>
								</div>


								<div class="form-group">
									<div class="row">
										<div class="col-md-1 col-sm-10 col-xs-10">c</div>
										<div class="col-md-3 col-sm-10 col-xs-10">Others
											(Specify)</div>
										<div class="col-md-8 col-sm-10 col-xs-10">
											<input type="text" name="others" style="width: 100%"
												value="${awards.others}" />
										</div>
									</div>
								</div>




								<c:forEach items="${awards.work_experience}" var="wrk_exp">

									<div
										style="width: 100%; color: #36798E; float: left; font-size: 10px; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
										class="updatesheading3">
										<div
											style="position: relative; top: 0px; width: 200px; float: left;">
											<label
												style="margin-left: 10px; margin-top: 15px; font-size: 14px; margin-bottom: 30px">Work
												Experience Details</label>
										</div>
									</div>


									<div class="form-group">
										<div class="row">
											<div class="col-md-4 col-sm-10 col-xs-10">Total Work
												Experience</div>
											<div class="col-md-4 col-sm-10 col-xs-10">
												<select name="work_experience">
													<option value="${wrk_exp.total_experience}">${wrk_exp.total_experience}</option>
													<option value="0-1y">0-1year</option>
													<option value="1-3y">1-3years</option>
													<option value="3-5y">3-5years</option>
													<option value=">5y">&gt;5years</option>
												</select>
											</div>

										</div>
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-md-4 col-sm-10 col-xs-10">Current
												Annual Salary(CTC)</div>
											<div class="col-md-4 col-sm-10 col-xs-10">
												<select name="ctc">
													<option value="${wrk_exp.anual_ctc}">${wrk_exp.anual_ctc}</option>
													<option value="0-1l">0-1lakh</option>
													<option value="1-3l">1-3lakhs</option>
													<option value="3-5l">3-5lakhs</option>
													<option value=">5l">&gt;5lakhs</option>

												</select>
											</div>
										</div>

									</div>


									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10"></div>
											<div class="col-md-2 col-sm-10 col-xs-10">Organization</div>
											<div class="col-md-2 col-sm-10 col-xs-10">Designation</div>
											<div class="col-md-2 col-sm-10 col-xs-10">Nature of
												Work</div>
											<div class="col-md-3 col-sm-10 col-xs-10">From(MM/YYYY)</div>
											<div class="col-md-2 col-sm-10 col-xs-10">To(MM/YYYY)</div>

										</div>
									</div>
									<div class="form-group">

										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10">a</div>
											<div class="col-md-2 col-sm-10 col-xs-10">
												<input type="text" name="a_organization" style="width: 100%"
													value="${wrk_exp.a_organization}" />
											</div>
											<div class="col-md-2 col-sm-10 col-xs-10">
												<input type="text" name="a_designation" style="width: 100%"
													value="${wrk_exp.a_desgination}" />
											</div>
											<div class="col-md-2 col-sm-10 col-xs-10">
												<input type="text" name="a_nature_of_work"
													style="width: 100%" value="${wrk_exp.a_now}" />
											</div>
											<div class="col-md-3 col-sm-10 col-xs-10">
												<input type="text" name="a_from_date" style="width: 100%"
													value="${wrk_exp.a_fr_date}" />
											</div>
											<div class="col-md-2 col-sm-10 col-xs-10">
												<input type="text" name="a_to_date" style="width: 100%"
													value="${wrk_exp.a_to_date}" />
											</div>
										</div>
									</div>


									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10">b</div>
											<div class="col-md-2 col-sm-10 col-xs-10">
												<input type="text" name="b_organization" style="width: 100%"
													value="${wrk_exp.b_organization}" />
											</div>
											<div class="col-md-2 col-sm-10 col-xs-10">
												<input type="text" name="b_designation" style="width: 100%"
													value="${wrk_exp.b_desgination}" />
											</div>
											<div class="col-md-2 col-sm-10 col-xs-10">
												<input type="text" name="b_nature_of_work"
													style="width: 100%" value="${wrk_exp.b_now}" />
											</div>
											<div class="col-md-3 col-sm-10 col-xs-10">
												<input type="text" name="b_from_date" style="width: 100%"
													value="${wrk_exp.b_fr_date}" />
											</div>
											<div class="col-md-2 col-sm-10 col-xs-10">
												<input type="text" name="b_to_date" style="width: 100%"
													value="${wrk_exp.b_to_date}" />
											</div>

										</div>

									</div>



								</c:forEach>
							</c:forEach>
						</c:forEach>

						<div
							style="width: 100%; color: #36798E; float: left; font-size: 10px; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
							class="updatesheading3">
							<div
								style="position: relative; top: 0px; width: 200px; float: left;">
								<label
									style="margin-left: 10px; margin-top: 15px; font-size: 14px; margin-bottom: 30px">DECLARATION</label>
							</div>
						</div>

						<div class="row">
							<label
								style="font-size: small; font-style: oblique; margin-bottom: 20px">I
								certify that information provided in this application form is
								correct.</label>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">CurrentCity</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="current_city" style="width: 100%" value="${user.currentCity}"/>
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Application Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="app_name" style="width: 100%" value="${user.application_name}"/>
								</div>
							</div>
						</div>

						<div class="row">
							<div
								class="col-md-2 col-md-offset-1 col-sm-6 col-sm-offset-1 col-xs-6 col-xs-offset-1">
								<input type="submit" class="btn btn-primary" value="submit" />
							</div>
						</div>

					</div>
				</form>
			</div>
		</div>


	</div>

	<div style="margin-left: -50px">
		<img src="img/miniLogoBg.jpg" />
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-offset-2">
				<ul class="nav nav-tabs nav-bar breadcrumb">
					<li><img height="76" width="142"
						src="http://www.greatlakes.edu.in/reflections/images/mini_img2.png"
						alt="" title="">
					<li><img height="76" width="152"
						src="http://www.greatlakes.edu.in/reflections/images/mini_img3.png"
						alt="" title="">
					<li><img height="76" width="120"
						src="http://www.greatlakes.edu.in/reflections/images/mini_img7b.png"
						alt="" title="">
					<li><img height="76" width="71"
						src="http://www.greatlakes.edu.in/reflections/images/mini_img5b.png"
						alt="" title="">
					<li><img height="76" width="102"
						src="http://www.greatlakes.edu.in/reflections/images/mini_img8.png"
						alt="" title="">
					<li><img height="76" width="146"
						src="http://www.greatlakes.edu.in/reflections/images/mini_img4.png"
						alt="" title="">
				</ul>
			</div>
		</div>
	</div>
</body>
</html>