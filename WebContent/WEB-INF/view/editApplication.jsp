<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script>
	function check() {

		var gender = document.getElementsByName('sex');
		var gend = document.getElementById('gender1');
		var userstatus=document.getElementById("marstatus");
		var status=document.getElementsByName("status");
		if ((gender[0].value) == gend.value) {
			document.getElementById('male').checked = true;
		} else {
			document.getElementById('female').checked = true;
		}

		if((status[0].value)==userstatus.value){
			document.getElementById('single').checked=true;
		}else{
			document.getElementById('married').checked=true;
		}
		
		
		var im=document.getElementById('img').value;
		document.getElementById('fi').value=im;
		
		
		alert(document.getElementById('fi').value); 
	}
	
	
</script>



<title>Insert title here</title>
</head>

<body onLoad="check()">
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>


	<div class="container">


		<div class="row">
			<div class="pull-left" style="width: 200px">

				<img src="img/greatLakes.jpg" class="img-thumbnail" />
			</div>
			<div class="pull-right">
				<h4>Student Log In</h4>
			</div>
		</div>
	</div>
	<div class="container" style="border: 1px solid black">
		<div class="row">
			<div
				class="col-md-10 col-md-offset-1 col-sm-10 col-xs-offset-1 col-xs-10 col-xs-offset-1">
				<form action="addData" method="post" style="width: 250"
					class="form-horizontal" enctype="multipart/form-data">
					<input type="hidden" name="userId" value="${user.id}" />

					<div class="row">
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="userName"
										value="${user.userName}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">UpLoad your
									Photo</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="file" id="fi" name="file"/>
									<input type="hidden" value='<%=request.getAttribute("url")%>' id="img" name="img"/>
									
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Gender</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="radio" id="male" name="sex" value="male" />Male <input
										type="radio" id="female" name="sex" value="feMale" />FeMale <input
										type="hidden" id="gender1" name="sex1" value="${user.gender}" />

								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">DateOfBirth
									(dd/mm/yyyy)</div>

								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="date"
										value="${user.dob}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">MaritalStatus</div>
								<div class="col-md-3 col-sm-10 col-xs-10">

									<input type="radio" name="status" id="single"
										value="single" />Single <input type="radio"
										name="status" id="married" value="married" />Married
								<input id="marstatus" name="mar" value="${user.maritalStatus}"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Father's Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="fatherName"
										value="${user.fatherName}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">Father'sOccupation</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="father'sJob"
										value="${user.fatherJob}">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Mother'sName</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="motherName"
										value="${user.motherName}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">Mother'sOccupation</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mother'sJob"
										value="${user.motherJob}" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Nationality</div>

								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="nationality" class="form-control"
										value="${user.nationality}" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">MailingAddress</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mailingAddress"
										value="${user.mailingAddress}" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Mobile</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mobileNumber"
										value="${user.mobileNumber}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">LandLine</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="landLineNumber"
										value="${user.landlineNumber}" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">E-mailId</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mailId"
										value="${user.emailId}" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-0">
								<h3>Academic Qualification</h3>
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
								<label>Year Of Completion</label>
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
										<input type="text" class="form-control" name="pg_degree"
											value="${academic.pg_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="pg_discipline"
											value="${academic.pg_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="pg_school" class="form-control"
											value="${academic.pg_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="pg_university" class="form-control"
											value="${academic.pg_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="pg_passedOut" class="form-control"
											value="${academic.pg_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="pg_percentage" class="form-control"
											value="${academic.pg_cgpa}" />
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">Graduation</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="ug_degree" class="form-control"
											value="${academic.ug_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_discipline" class="form-control"
											value="${academic.ug_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_school" class="form-control"
											value="${academic.ug_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_university" class="form-control"
											value="${academic.ug_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_passedOut" class="form-control"
											value="${academic.ug_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="ug_percentage" class="form-control"
											value="${academic.ug_cgpa}" />
									</div>
								</div>
							</div>


							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">Higher
										Secondary (XII)</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_degree"
											value="${academic.hs_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_discipline"
											value="${academic.hs_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_school"
											value="${academic.hs_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_university"
											value="${academic.hs_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_passedOut"
											value="${academic.hs_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_percentage"
											value="${academic.hs_cgpa}" />
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">Secondary (X)</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="s_degree" class="form-control"
											value="${academic.s_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_discipline" class="form-control"
											value="${academic.s_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_school" class="form-control"
											value="${academic.s_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_university" class="form-control"
											value="${academic.s_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_passedOut" class="form-control"
											value="${academic.s_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="s_percentage" class="form-control"
											value="${academic.s_cgpa}" />
									</div>
								</div>
							</div>








							<div class="row">
								<label>#Branch of Engineering/ Science/ Arts/ Commerce/
									Other</label>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">Total Work
										Experience</div>
									<div class="col-md-3 col-sm-10 col-xs-10">
										<select class="form-control" name="work_experience">
											<option value="${user.total_experience}">${user.total_experience}</option>
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
									<div class="col-md-2 col-sm-10 col-xs-10">Current Annual
										Salary(CTC)</div>
									<div class="col-md-3 col-sm-10 col-xs-10">
										<select name="ctc" class="form-control">
											<option value="${user.anual_ctc}">${user.anual_ctc}</option>
											<option value="0-1l">0-1lakh</option>
											<option value="1-3l">1-3lakhs</option>
											<option value="3-5l">3-5lakhs</option>
											<option value=">5l">&gt;5lakhs</option>

										</select>
									</div>
								</div>

							</div>


							<c:forEach items="${academic.work_experience}" var="experience">
								<div class="row">
									<h3>Work Experience Details</h3>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-md-1 col-sm-10 col-xs-10"></div>
										<div class="col-md-2 col-sm-10 col-xs-10">Organization</div>
										<div class="col-md-2 col-sm-10 col-xs-10">Designation</div>
										<div class="col-md-2 col-sm-10 col-xs-10">Nature of Work</div>
										<div class="col-md-3 col-sm-10 col-xs-10">From(MM/YYYY)</div>
										<div class="col-md-2 col-sm-10 col-xs-10">To(MM/YYYY)</div>

									</div>
								</div>
								<div class="form-group">

									<div class="row">
										<div class="col-md-1 col-sm-10 col-xs-10">a</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="a_organization" class="form-control"
												value="${experience.a_organization}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="a_designation" class="form-control"
												value="${experience.a_desgination}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="a_nature_of_work"
												class="form-control" value="${experience.a_now}" />
										</div>
										<div class="col-md-3 col-sm-10 col-xs-10">
											<input type="text" name="a_from_date" class="form-control"
												value="${experience.a_fr_date}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="a_to_date" class="form-control"
												value="${experience.a_to_date}" />
										</div>
									</div>
								</div>


								<div class="form-group">
									<div class="row">
										<div class="col-md-1 col-sm-10 col-xs-10">b</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="b_organization" class="form-control"
												value="${experience.b_organization}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="b_designation" class="form-control"
												value="${experience.b_desgination}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="b_nature_of_work"
												class="form-control" value="${experience.b_now}" />
										</div>
										<div class="col-md-3 col-sm-10 col-xs-10">
											<input type="text" name="b_from_date" class="form-control"
												value="${experience.a_fr_date}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="b_to_date" class="form-control"
												value="${experience.b_to_date}" />
										</div>

									</div>

								</div>


								<c:forEach items="${experience.awards}" var="awards">

									<div class="row">
										<h3>Awards and Achievements</h3>
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10">a</div>
											<div class="col-md-2 col-sm-10 col-xs-10">Academic
												Honors</div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="academic_honors"
													class="form-control" value="${awards.academicHonors}" />
											</div>

										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10"></div>
											<div class="col-md-2 col-sm-10 col-xs-10"></div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="ch_academic_honors"
													class="form-control" value="${awards.ch_academicHonors}" />
											</div>
										</div>
									</div>


									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10">b</div>
											<div class="col-md-2 col-sm-10 col-xs-10">Extracurricular</div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="extracurricular"
													class="form-control" value="${awards.extracurricular}" />
											</div>
										</div>
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10"></div>
											<div class="col-md-2 col-sm-10 col-xs-10"></div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="ch_extracurricular"
													class="form-control" value="${awards.ch_extracurricular}" />
											</div>
										</div>
									</div>


									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10">c</div>
											<div class="col-md-2 col-sm-10 col-xs-10">Others
												(Specify)</div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="others" class="form-control"
													value="${awards.others}" />
											</div>
										</div>
									</div>

								</c:forEach>

							</c:forEach>

						</c:forEach>

						<div class="row">
							<h3>Declaration</h3>
						</div>

						<div class="row">
							<label>I certify that information provided in this
								application form is correct.</label>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">CurrentCity</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="current_city" class="form-control"
										value="${user.currentCity}" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Application Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="app_name" class="form-control"
										value="${user.application_name}" /> <input type="hidden"
										name="userId" value="${user.id}" />
								</div>
							</div>
						</div>

						<div class="row">
							<div
								class="col-md-2 col-md-offset-1 col-sm-6 col-sm-offset-1 col-xs-6 col-xs-offset-1">
								<input type="submit" class="btn btn-primary form-control"
									value="submit" />
							</div>
						</div>

					</div>
				</form>
			</div>
		</div>


	</div>
</body>
</html>

 --%>




































<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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


















 --%>













<%@ page language="java" contentType="text/html; charset=UTF-8"
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
			<div
				class="col-lg-offset-0 col-md-offset-1 col-sm-2 col-sm-offset-1 col-xs-3">

				<img src="img/greatLakes.jpg" width="180px" class="visible-lg" /> <img
					src="img/greatLakes.jpg" width="150px" class="visible-md" /> <img
					src="img/greatLakes.jpg" width="140px" class="visible-sm" /> <img
					src="img/greatLakes.jpg" width="140px" class="visible-xs" />


			</div>

		</div>
		<img src="img/banner_bg.jpg"
			style="width: 1500px; margin-left: -350px" class="visible-lg" /> <img
			src="img/banner_bg.jpg" style="width: 1200px; margin-left: -180px"
			class="visible-md" /> <img src="img/banner_bg.jpg"
			style="width: 900px; margin-left: -130px" class="visible-sm" /> <img
			src="img/banner_bg.jpg" style="width: 1000px; margin-left: -230px"
			class="visible-xs" />


	</div>



	<div class="container">

		<div class="row">
			<div
				class="col-lg-3 col-lg-offset-1 col-md-3  col-md-offset-1 col-sm-3  col-xs-3 ">
				<div
					style="width: 100%; color: #36798E; float: left; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
					class="updatesheading3">
					<div
						style="position: relative; top: 0px; width: 200px; float: left;">

						<label class="visible-lg">Application Form</label> <label
							class="visible-md">Application Form</label> <label
							class="visible-sm" style="margin-left: -20px">Application
							Form</label> <label class="visible-xs" style="margin-left: -10px">Application
							Form</label>



					</div>
				</div>
			</div>

		</div>
		<div class="row" style="margin-botom: -50px">
			<div
				class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-8 col-xs-8">
				<img src="img/line4.jpg" style="width: 1000px" class="visible-lg" />
				<img src="img/line4.jpg" style="width: 1000px" class="visible-md" />
				<img src="img/line4.jpg" style="width: 1000px; margin-left: -20px"
					class="visible-sm" /> <img src="img/line4.jpg"
					style="width: 1000px; margin-left: -10px" class="visible-xs" />


			</div>
		</div>

	</div>
	<div class="container">
		<div class="row">
			${message}
			<div
				class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-0 col-xs-10">

				<div
					style="width: 100%; color: #36798E; float: left; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
					class="updatesheading3">
					<div
						style="position: relative; top: 0px; width: 200px; float: left;"
						class="vilsible-lg">
						<label
							style="margin-top: 40px; font-size: 14px; margin-bottom: 40px">Personal
							Details</label>
					</div>
				</div>


				<form action="addData" method="post" class="form-horizontal"
					enctype="multipart/form-data">

					<input type="hidden" name="userId" value="${user.id}" />
					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-sm-2 col-sm-offset-1 col-xs-12 col-xs-offset-1">Name</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-sm-offset-1 col-xs-10 col-xs-offset-1">
								<input type="text" id="userName" name="userName"
									value="${user.userName}" />
							</div>


							<div
								class="col-lg-3 col-md-3 col-md-offset-1 col-lg-offset-0 col-sm-3 col-sm-offset-1 col-xs-10 col-xs-offset-1">
								<p class="visible-lg" style="margin-left: -50px">UpLoad your
									Photo</p>

								<p class="visible-md" style="margin-left: -70px">UpLoad your
									Photo</p>

								<p class="visible-sm" style="margin-left: 5px">UpLoad your
									Photo</p>

								<p class="visible-xs" style="margin-left: 0px; margin-top: 20px">UpLoad
									your Photo</p>




							</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-2 col-md-offset-0 col-sm-1 col-sm-offset-0 col-xs-10 col-xs-offset-0"
								style="left: 50px">

								<input type="file" name="file" class="hidden-xs" value="${user.photo_details}"/> <input
									type="file" name="file" class="visible-xs"
									style="margin-top: -20px; margin-left: 140px" value="${user.photo_details}"/>


							</div>

						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-sm-3 col-xs-2 col-xs-offset-1">Gender</div>
							<div class="col-lg-3 col-lg-offset-0 col-md-3 col-sm-3 col-xs-3">
								<div class="row" style="margin-left: -15px">
									<div
										class="col-lg-1 col-lg-offset-0 col-md-1 col-md-offset-0 col-sm-1 col-sm-offset-1 col-xs-4 col-xs-offset-1">
										<input type="radio" id="male" name="sex" value="male" />
									</div>
									<div
										class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-sm-offset-0 col-xs-3 col-xs-offset-1">Male</div>
									<div
										class="col-lg-1 col-lg-offset-0 col-md-1 col-md-offset-0 col-sm-1 col-sm-offset-0  col-xs-2 col-xs-offset-1">

										<input type="radio" name="sex" value="feMale"
											class="hidden-xs" id="female" /> <input type="radio"
											name="sex" value="feMale" class="visible-xs"
											style="margin-top: -20px; margin-left: 100px" id="female" />

									</div>
									<div
										class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-1 col-sm-offset-0  col-xs-3 col-xs-offset-0">
										<div class="hidden-xs">FeMale</div>

										<div class="visible-xs"
											style="margin-top: -20px; margin-left: 120px">FeMale</div>


									</div>
									<input type="hidden" id="gender1" name="sex1"
										value="${user.gender}" />

								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-sm-3 col-sm-offset-1 col-xs-10 col-xs-offset-1">DateOfBirth
								(dd/mm/yyyy)</div>

							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-sm-offset-0 col-xs-10 col-xs-offset-1">
								<input type="text" name="date" value="${user.dob}" />
							</div>







							<div
								class="col-lg-2 col-lg-offset-0 col-md-2 col-sm-1 col-sm-offset-1 col-xs-10 col-xs-offset-1">
								<p style="margin-left: -50px" class="visible-lg">
									MaritalStatus</p>

								<p style="margin-left: -70px" class="visible-md">
									MaritalStatus</p>

								<p class="visible-sm" style="margin-left: 5px">MaritalStatus</p>

								<p class="visible-xs" style="margin-left: 3px; margin-top: 20px">MaritalStatus</p>

							</div>



							<div class="col-lg-3 col-lg-offset-0 col-md-3 col-sm-3 col-xs-10">
								<div class="row">
									<div
										class="col-lg-1 col-lg-offset-2 col-md-1 col-md-offset-0 col-sm-1 col-sm-offset-3 col-xs-10 col-xs-offset-1 pull-left">
										<input type="radio" name="status" id="single" value="single"
											class="hidden-xs" /> <input type="radio" name="status"
											value="single" id="single" class="visible-xs"
											style="margin-top: -25px; margin-left: 105px" />



									</div>
									<div
										class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-1 col-sm-offset-0 col-xs-10 col-xs-offset-1">
										<p class="hidden-xs">Single</p>

										<p class="visible-xs"
											style="margin-top: -28px; margin-left: 143px">Single</p>

									</div>
									<div
										class="col-lg-1 col-lg-offset-0 col-md-1 col-md-offset-0 col-sm-1 col-sm-offset-1 col-xs-10 col-xs-offset-1">
										<input id="marstatus" type="hidden" name="mar"
											value="${user.maritalStatus}" /> <input type="radio"
											name="status" value="married" class="visible-lg" id="married" />
										<input type="radio" class="visible-md" name="status"
											value="married" id="married" /> <input type="radio"
											class="visible-xs"
											style="margin-top: -28px; margin-left: 193px" name="status"
											value="married" id="married" /> <input type="radio"
											class="visible-sm" style="margin-left: 0px" name="status"
											value="married" id="married" />

									</div>
								</div>
								<div
									class="col-lg-2 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-1 col-sm-offset-0 col-xs-10 col-xs-offset-1">

									<p class="visible-lg"
										style="margin-top: -30px; margin-left: 150px">Married</p>

									<p class="visible-md"
										style="margin-top: -30px; margin-left: 100px">Married</p>
									<p class="visible-sm"
										style="margin-top: -30px; margin-left: 130px">Married</p>

									<p class="visible-xs"
										style="margin-top: -30px; margin-left: 250px">Married</p>


								</div>

							</div>
						</div>







					</div>














					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-md-offset-1 col-sm-3 col-sm-offset-1 col-xs-10 col-xs-offset-1">Father's
								Name</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-sm-offset-0 col-xs-10 col-xs-offset-1">
								<input type="text" name="fatherName" value="${user.fatherName}" />
							</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-2 col-md-offset-0 col-sm-3  col-sm-offset-1 col-xs-10 col-xs-offset-1">

								<div style="margin-left: -50px" class="visible-lg">
									Father'sOccupation</div>

								<div style="margin-left: 5px" class="visible-md">
									Father'sOccupation</div>
								<div style="margin-left: 5px" class="visible-sm">Father'sOccupation</div>


							</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-2 col-sm-offset-0 col-xs-10 col-xs-offset-1">
								<div style="margin-left: -50px" class="visible-lg">
									<input type="text" name="father'sJob" value="${user.fatherJob}">
								</div>

								<div style="margin-left: 20px" class="visible-md">
									<input type="text" name="father'sJob" value="${user.fatherJob}">
								</div>
								<div class="visible-sm"
									style="margin-top: -20px; margin-left: 200px">
									<input type="text" name="father'sJob" value="${user.fatherJob}">
								</div>




							</div>

						</div>
					</div>




					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-md-offset-1 col-sm-2 col-xs-10 col-xs-offset-1">Mother's
								Name</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-xs-10 col-xs-offset-1">
								<input type="text" name="motherName" value="${user.motherName}" />
							</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3  col-sm-offset-1 col-xs-10 col-xs-offset-1">

								<div style="margin-left: -50px" class="visible-lg">
									Mother'sOccupation</div>

								<div style="margin-left: 5px" class="visible-md">
									Mother'sOccupation</div>

								<div style="margin-left: 2px" class="visible-sm">
									Mother'sOccupation</div>




							</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-xs-10 col-xs-offset-1">
								<div style="margin-left: -50px" class="visible-lg">
									<input type="text" name="mother'sJob" value="${user.motherJob}">
								</div>

								<div style="margin-left: -50px" class="visible-md">
									<input type="text" name="mother'sJob" value="${user.motherJob}">
								</div>

								<div style="margin-left: 145px; margin-top: -20px"
									class="visible-sm">
									<input type="text" name="mother'sJob" value="${user.motherJob}">
								</div>



							</div>
						</div>
					</div>





















					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-sm-2 col-xs-10 col-xs-offset-1">Nationality</div>

							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-xs-10 col-xs-offset-1">
								<input type="text" name="nationality"
									value="${user.nationality}" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-sm-2 col-xs-10 col-xs-offset-1">MailingAddress</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-xs-10 col-xs-offset-1">
								<textarea rows="4" cols="19" name="mailingAddress">${user.mailingAddress}</textarea>

							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-sm-2 col-xs-10 col-xs-offset-1">Mobile</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-xs-10 col-xs-offset-1">
								<input type="text" name="mobileNumber"
									value="${user.mobileNumber}" />
							</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-2 col-md-offset-0 col-sm-3 col-sm-offset-1 col-xs-10 col-xs-offset-1">

								<div style="margin-left: -50px" class="visible-lg">
									LandLine</div>

								<div style="margin-left: 10px" class="visible-md">
									LandLine</div>
								<div style="margin-left: 10px" class="visible-sm">
									LandLine</div>
							</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3  col-sm-3 col-xs-10 col-xs-offset-1">
								<div style="margin-left: -50px" class="visible-lg">
									<input type="text" name="landLineNumber"
										value="${user.landlineNumber}" />
								</div>
								<div style="margin-left: -50px" class="visible-md">
									<input type="text" name="landLineNumber"
										value="${user.landlineNumber}" />

								</div>
								<div style="margin-left: 145px; margin-top: -20px"
									class="visible-sm">
									<input type="text" name="landLineNumber"
										value="${user.landlineNumber}" />


								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-md-offset-1 col-sm-2 col-xs-10 col-xs-offset-1">E-mailId</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-xs-10 col-xs-offset-1">
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
					<div class="row hidden-xs">
						<div
							class="col-lg-2 col-lg-offset-0 col-md-2 col-md-offset-0 col-sm-2 col-sm-offset-0 col-xs-10">
							<label class="visible-lg" style="margin-left: 70px">Qualification</label>
							<label class="visible-md" style="margin-left: 50px">Qualification</label>
							<label class="visible-sm" style="margin-left: 40px">Qualification</label>
							<label class="visible-xs">Qualification</label>



						</div>



						<div
							class="col-lg-1 col-lg-push-0 col-md-1 col-md-push-0 col-sm-1 col-sm-push-0 col-xs-10">
							<label class="visible-lg">Degree</label> <label
								class="visible-md" style="margin-left: 10px">Degree</label> <label
								class="visible-sm" style="margin-left: 50px">Degree</label> <label
								class="visible-xs">Degree</label>



						</div>

						<div
							class="col-lg-2 col-lg-push-0 col-md-2 col-md-push-0 col-sm-1 col-sm-push-0 col-xs-10">
							<label class="visible-lg">Discipline</label> <label
								class="visible-md">Discipline</label> <label class="visible-sm"
								style="margin-left: 70px">Discipline</label> <label
								class="visible-xs">Discipline</label>

						</div>


						<div
							class="col-lg-2 col-lg-push-0 col-md-2 col-md-push-0 col-sm-2 col-sm-push-0 col-xs-10">
							<label class="visible-lg">School/college</label> <label
								class="visible-md">School/college</label> <label
								class="visible-sm" style="margin-left: 120px">School/college</label>
							<label class="visible-xs">School/college</label>



						</div>
						<div
							class="col-lg-2 col-lg-push-0 col-md-2 col-md-push-0 col-sm-2 col-sm-push-0 col-xs-10">
							<label class="visible-lg">Board/University</label> <label
								class="visible-md">Board/University</label> <label
								class="visible-sm" style="margin-left: 150px">Board/University</label>
							<label class="visible-xs">Board/University</label>

						</div>
						<div
							class="col-lg-2 col-lg-push-0 col-md-2 col-md-push-0 col-sm-2 col-sm-push-0 col-xs-10">
							<label class="visible-lg">PassingYear</label> <label
								class="visible-md">PassingYear</label> <label class="visible-sm"
								style="margin-left: 180px">PassingYear</label> <label
								class="visible-xs">PassingYear</label>





						</div>
						<div
							class="col-lg-1 col-lg-push-0 col-md-1 col-md-push-0 col-sm-2 col-sm-push-0 col-xs-10">
							<label class="visible-lg" style="margin-left: 5px">%/CGPA</label>
							<label class="visible-md">%/CGPA</label> <label
								class="visible-sm" style="margin-left: 200px">%/CGPA</label> <label
								class="visible-xs">%/CGPA</label>
						</div>

					</div>


					<c:forEach items="${user.userAcademic}" var="academic">


						<div class="hidden-xs">
							<div class="form-group">
								<div class="row">
									<div
										class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-2 col-sm-offset-1 col-xs-10">PG
										(if any)</div>
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
										<input type="text" name="pg_degree"
											style="width: 100%; margin-left: 10px" class="visible-lg"
											value="${academic.pg_degree}" /> <input type="text"
											name="pg_degree" style="width: 100%; margin-left: 20px"
											class="visible-md" value="${academic.pg_degree}" /> <input
											type="text" name="pg_degree"
											style="width: 100%; margin-left: 20px" class="visible-sm"
											value="${academic.pg_degree}" /> <input type="text"
											name="pg_degree" style="width: 100%; margin-left: 80px"
											class="visible-xs" value="${academic.pg_degree}" />



									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="pg_discipline" style="width: 100%"
											class="visible-lg" value="${academic.pg_discipline}" /> <input
											type="text" value="${academic.pg_discipline}"
											name="pg_discipline" style="width: 100%" class="visible-md" />
										<input type="text" name="pg_discipline"
											style="width: 100%; margin-left: 20px" class="visible-sm"
											value="${academic.pg_discipline}" /> <input type="text"
											name="pg_discipline" style="width: 100%; margin-left: 100px"
											class="visible-xs" value="${academic.pg_discipline}" />


									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="pg_school" style="width: 100%"
											class="visible-lg" value="${academic.pg_school}" /> <input
											type="text" value="${academic.pg_school}" name="pg_school"
											style="width: 100%" class="visible-md" /> <input type="text"
											name="pg_school" style="width: 100%; margin-left: 20px"
											class="visible-sm" value="${academic.pg_school}" /> <input
											type="text" name="pg_school"
											style="width: 100%; margin-left: 120px" class="visible-xs"
											value="${academic.pg_school}" />

									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="pg_university" style="width: 100%"
											class="visible-lg" value="${academic.pg_university}" /> <input
											type="text" name="pg_university" style="width: 100%"
											class="visible-md" value="${academic.pg_university}" /> <input
											type="text" name="pg_university"
											style="width: 100%; margin-left: 50px" class="visible-sm"
											value="${academic.pg_university}" /> <input type="text"
											name="pg_university" style="width: 100%; margin-left: 185px"
											class="visible-xs" value="${academic.pg_university}" />



									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="pg_passedOut"
											style="width: 100%; margin-left: -10px" class="visible-lg"
											value="${academic.pg_year}" /> <input type="text"
											name="pg_passedOut" style="width: 100%; margin-left: -10px"
											class="visible-md" value="${academic.pg_year}" /> <input
											type="text" name="pg_passedOut"
											style="width: 100%; margin-left: 70px" class="visible-sm"
											value="${academic.pg_year}" /> <input type="text"
											name="pg_passedOut" style="width: 100%; margin-left: 210px"
											class="visible-xs" value="${academic.pg_year}" />



									</div>
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
										<input type="text" name="pg_percentage" style="width: 100%"
											class="visible-lg" value="${academic.pg_cgpa}" /> <input
											type="text" name="pg_percentage" style="width: 100%"
											class="visible-md" value="${academic.pg_cgpa}" /> <input
											type="text" name="pg_percentage"
											style="width: 100%; margin-top: -27px; margin-left: 755px"
											class="visible-sm" value="${academic.pg_cgpa}" /> <input
											type="text" name="pg_percentage"
											style="width: 100%; margin-top: -27px; margin-left: 715px"
											class="visible-xs" value="${academic.pg_cgpa}" />

									</div>
								</div>
							</div>



							<div class="form-group">
								<div class="row">
									<div
										class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-2 col-sm-offset-1 col-xs-10">Graduation</div>
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
										<input type="text" name="ug_degree"
											style="width: 100%; margin-left: 10px" class="visible-lg"
											value="${academic.ug_degree}" /> <input type="text"
											name="ug_degree" style="width: 100%; margin-left: 20px"
											class="visible-md" value="${academic.ug_degree}" /> <input
											type="text" name="ug_degree"
											style="width: 100%; margin-left: 20px" class="visible-sm"
											value="${academic.ug_degree}" />





									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="ug_discipline" style="width: 100%"
											class="visible-lg" value="${academic.ug_discipline}" /> <input
											type="text" name="ug_discipline" style="width: 100%"
											class="visible-md" value="${academic.ug_discipline}" /> <input
											type="text" name="ug_discipline"
											style="width: 100%; margin-left: 20px" class="visible-sm"
											value="${academic.ug_discipline}" />

									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="ug_school" style="width: 100%"
											class="visible-lg" value="${academic.ug_school}" /> <input
											type="text" name="ug_school" style="width: 100%"
											class="visible-md" value="${academic.ug_school}" /> <input
											type="text" name="ug_school"
											style="width: 100%; margin-left: 20px" class="visible-sm"
											value="${academic.ug_school}" />

									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="ug_university" style="width: 100%"
											class="visible-lg" value="${academic.ug_university}" /> <input
											type="text" name="ug_university" style="width: 100%"
											class="visible-md" value="${academic.ug_university}" /> <input
											type="text" name="ug_university"
											style="width: 100%; margin-left: 50px" class="visible-sm"
											value="${academic.ug_university}" />

									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="ug_passedOut"
											style="width: 100%; margin-left: -10px" class="visible-lg"
											value="${academic.ug_year}" /> <input type="text"
											name="ug_passedOut" style="width: 100%; margin-left: -10px"
											class="visible-md" value="${academic.ug_year}" /> <input
											type="text" name="ug_passedOut"
											style="width: 100%; margin-left: 70px" class="visible-sm"
											value="${academic.ug_year}" />


									</div>
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
										<input type="text" name="ug_percentage" style="width: 100%"
											class="visible-lg" value="${academic.ug_cgpa}" /> <input
											type="text" name="ug_percentage" style="width: 100%"
											class="visible-md" value="${academic.ug_cgpa}" /> <input
											type="text" name="ug_percentage"
											style="width: 100%; margin-top: -27px; margin-left: 755px"
											class="visible-sm" value="${academic.ug_cgpa}" />

									</div>
								</div>
							</div>


							<div class="form-group">
								<div class="row">
									<div
										class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-10">Higher
										Secondary</div>
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
										<input type="text" name="hs_degree"
											style="width: 100%; margin-left: 10px" class="visible-lg"
											value="${academic.hs_degree}" /> <input type="text"
											name="hs_degree" style="width: 100%; margin-left: 20px"
											class="visible-md" value="${academic.hs_degree}" /> <input
											type="text" name="hs_degree"
											style="width: 100%; margin-left: 75px" class="visible-sm"
											value="${academic.hs_degree}"/>
									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="hs_discipline" style="width: 100%"
											class="visible-lg" value="${academic.hs_discipline}" /> <input
											type="text" name="hs_discipline" style="width: 100%"
											class="visible-md" value="${academic.hs_discipline}" /> <input
											type="text" name="hs_discipline"
											style="width: 100%; margin-left: 75px" class="visible-sm"
											value="${academic.hs_discipline}" />

									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="hs_school" style="width: 100%"
											class="visible-lg" value="${academic.hs_school}" /> <input
											type="text" name="hs_school" style="width: 100%"
											class="visible-md" value="${academic.hs_school}" /> <input
											type="text" name="hs_school"
											style="width: 100%; margin-left: 75px" class="visible-sm"
											value="${academic.hs_school}" />

									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="hs_university" style="width: 100%"
											class="visible-lg" value="${academic.hs_university}" /> <input
											type="text" name="hs_university" style="width: 100%"
											class="visible-md" value="${academic.hs_university}" /> <input
											type="text" name="hs_university"
											style="width: 100%; margin-left: 105px" class="visible-sm"
											value="${academic.hs_university}" />

									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="hs_passedOut"
											style="width: 100%; margin-left: -10px" class="visible-lg"
											value="${academic.hs_year}" /> <input type="text"
											name="hs_passedOut" style="width: 100%; margin-left: -10px"
											class="visible-md" value="${academic.hs_year}" /> <input
											type="text" name="hs_passedOut"
											style="width: 100%; margin-left: 125px" class="visible-sm"
											value="${academic.hs_year}" />

									</div>
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
										<input type="text" name="hs_percentage" style="width: 100%"
											class="visible-lg" value="${academic.hs_cgpa}" /> <input
											type="text" name="hs_percentage" style="width: 100%"
											class="visible-md" value="${academic.hs_cgpa}" /> <input
											type="text" name="hs_percentage"
											style="width: 100%; margin-top: 0px; margin-left: 155px"
											class="visible-sm" value="${academic.hs_cgpa}" />
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div
										class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-10">Secondary</div>
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
										<input type="text" name="s_degree"
											style="width: 100%; margin-left: 10px" class="visible-lg"
											value="${academic.s_degree}" /> <input type="text"
											name="s_degree" style="width: 100%; margin-left: 20px"
											class="visible-md" value="${academic.s_degree}" /> <input
											type="text" name="s_degree"
											style="width: 100%; margin-left: 75px" class="visible-sm"
											value="${academic.s_degree}" />


									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="s_discipline" style="width: 100%"
											class="visible-lg" value="${academic.s_discipline}" /> <input
											type="text" name="s_discipline" style="width: 100%"
											class="visible-md" value="${academic.s_discipline}" /> <input
											type="text" name="s_discipline"
											style="width: 100%; margin-left: 75px" class="visible-sm"
											value="${academic.s_discipline}" />

									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="s_school" style="width: 100%"
											class="visible-lg" value="${academic.s_school}" /> <input
											type="text" name="s_school" style="width: 100%"
											class="visible-md" value="${academic.s_school}" /> <input
											type="text" name="s_school"
											style="width: 100%; margin-left: 75px" class="visible-sm"
											value="${academic.s_school}" />

									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="s_university" style="width: 100%"
											class="visible-lg" value="${academic.s_university}" /> <input
											type="text" name="s_university" style="width: 100%"
											class="visible-md" value="${academic.s_university}" /> <input
											type="text" name="s_university"
											style="width: 100%; margin-left: 105px" class="visible-sm"
											value="${academic.s_university}" />
									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<input type="text" name="s_passedOut"
											style="width: 100%; margin-left: -10px" class="visible-lg"
											value="${academic.s_year}" /> <input type="text"
											name="s_passedOut" style="width: 100%; margin-left: -10px"
											class="visible-md" value="${academic.s_year}" /> <input
											type="text" name="s_passedOut"
											style="width: 100%; margin-left: 125px" class="visible-sm"
											value="${academic.s_year}" />

									</div>
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
										<input type="text" name="s_percentage" style="width: 100%"
											class="visible-lg" value="${academic.s_cgpa}" /> <input
											type="text" name="s_percentage" style="width: 100%"
											class="visible-md" value="${academic.s_cgpa}" /> <input
											type="text" name="s_percentage"
											style="width: 100%; margin-top: 0px; margin-left: 155px"
											class="visible-sm" value="${academic.s_cgpa}" />
									</div>
								</div>
							</div>



						</div>





						<div class="row visible-xs">
							<div class="form-group">
								<div class="row">
									<div class="col-xs-10 col-xs-offset-1">
										<label>Qualification</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">PG (if any)</div>



									<div class="col-xs-10 col-xs-offset-1">
										<label>Degree</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="pg_degree"
											value="${academic.pg_degree}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>Discipline</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="pg_discipline"
											value="${academic.pg_discipline}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>School/college</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="pg_school"
											value="${academic.pg_school}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>Board/University</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="pg_university"
											value="${academic.pg_university}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>PassingYear</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="pg_passedOut"
											value="${academic.pg_year}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>%/CGPA</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="pg_percentage"
											value="${academic.pg_cgpa}" />
									</div>

								</div>
							</div>



							<div class="form-group">
								<div class="row">
									<div class="col-xs-10 col-xs-offset-1">
										<label>Qualification</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">UnderGraduate</div>



									<div class="col-xs-10 col-xs-offset-1">
										<label>Degree</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="ug_degree"
											value="${academic.ug_degree}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>Discipline</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="ug_discipline"
											value="${academic.ug_discipline}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>School/college</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="ug_school"
											value="${academic.ug_school}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>Board/University</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="ug_university"
											value="${academic.ug_university}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>PassingYear</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="ug_passedOut"
											value="${academic.ug_year}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>%/CGPA</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="ug_percentage"
											value="${academic.ug_cgpa}" />
									</div>

								</div>
							</div>


							<div class="form-group">
								<div class="row">
									<div class="col-xs-10 col-xs-offset-1">
										<label>Qualification</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">HigherSecondary</div>



									<div class="col-xs-10 col-xs-offset-1">
										<label>Degree</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="hs_degree"
											value="${academic.hs_degree}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>Discipline</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="hs_discipline"
											value="${academic.hs_discipline}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>School/college</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="hs_school"
											value="${academic.hs_school}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>Board/University</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="hs_university"
											value="${academic.hs_university}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>PassingYear</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="hs_passedOut"
											value="${academic.hs_year}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>%/CGPA</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="hs_percentage"
											value="${academic.hs_cgpa}" />
									</div>

								</div>
							</div>





							<div class="form-group">
								<div class="row">
									<div class="col-xs-10 col-xs-offset-1">
										<label>Qualification</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">Secondary</div>



									<div class="col-xs-10 col-xs-offset-1">
										<label>Degree</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="s_degree"
											value="${academic.s_degree}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>Discipline</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="s_discipline"
											value="${academic.s_discipline}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>School/college</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="s_school"
											value="${academic.s_school}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>Board/University</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="s_university"
											value="${academic.s_university}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>PassingYear</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="s_passedOut"
											value="${academic.s_year}" />
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<label>%/CGPA</label>
									</div>
									<div class="col-xs-10 col-xs-offset-1">
										<input type="text" name="s_percentage"
											value="${academic.s_cgpa}" />
									</div>

								</div>
							</div>

						</div>

						<div class="row">
							<div class="col-lg-7 col-lg-offset-1 col-lg-pull-1">
								<label
									style="font-weight: 500; font-family: sans-serif; font-style: italic; font-size: small;">#Branch
									of Engineering/ Science/ Arts/ Commerce/ Other</label>
							</div>
						</div>



						<div
							style="width: 100%; color: #36798E; float: left; font-size: 10px; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
							class="updatesheading3">
							<div
								style="position: relative; top: 0px; width: 200px; float: left;">
								<label
									style="margin-left: 0px; margin-top: 15px; font-size: 14px; margin-bottom: 30px">AWARDS
									AND ACHIEVEMENTS</label>
							</div>
						</div>

						<c:forEach items="${academic.awards}" var="awards">
							<div class="form-group">
								<div class="row">
									<div
										class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-3">a</div>
									<div class="col-lg-2 col-md-3 col-sm-3 col-xs-9">Academic
										Honors</div>
									<div class="col-lg-8 col-md-7 col-sm-6 col-xs-10 pull-right">
										<input type="text" name="academic_honors" style="width: 100%"
											value="${awards.academicHonors}" />
									</div>

								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div
										class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-3"></div>
									<div class="col-lg-2 col-md-3 col-sm-3 col-xs-9"></div>
									<div class="col-lg-8 col-md-7 col-sm-6 col-xs-10 pull-right">
										<input type="text" name="ch_academic_honors"
											style="width: 100%" value="${awards.ch_academicHonors}" />
									</div>
								</div>
							</div>


							<div class="form-group">
								<div class="row">
									<div
										class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-3">b</div>
									<div class="col-lg-2 col-md-3 col-sm-3 col-xs-9">Extracurricular</div>
									<div class="col-lg-8 col-md-7 col-sm-6 col-xs-10 pull-right">
										<input type="text" name="extracurricular" style="width: 100%"
											value="${awards.extracurricular}" />
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div
										class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-3"></div>
									<div class="col-lg-2 col-md-3 col-sm-3 col-xs-9"></div>
									<div class="col-lg-8 col-md-7 col-sm-6 col-xs-10 pull-right">
										<input type="text" name="ch_extracurricular"
											style="width: 100%" value="${awards.ch_extracurricular}" />
									</div>
								</div>
							</div>


							<div class="form-group">
								<div class="row">
									<div
										class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-3">c</div>
									<div class="col-lg-2 col-md-3 col-sm-3 col-xs-9">Others
										(Specify)</div>
									<div class="col-lg-8 col-md-7 col-sm-6 col-xs-10 pull-right">
										<input type="text" name="others" style="width: 100%"
											value="${awards.others}" />
									</div>
								</div>
							</div>






							<div
								style="width: 100%; color: #36798E; float: left; font-size: 10px; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
								class="updatesheading3">
								<div
									style="position: relative; top: 0px; width: 200px; float: left;">
									<label
										style="margin-left: 0px; margin-top: 15px; font-size: 14px; margin-bottom: 30px">Work
										Experience Details</label>
								</div>
							</div>


							<c:forEach items="${awards.work_experience}" var="wrk_exp">

								<div class="form-group">
									<div class="row">
										<div
											class="col-lg-4 col-lg-offset-2 col-md-4 col-md-offset-2 col-sm-4 col-sm-offset-2 col-xs-4">Total
											Work Experience</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
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
										<div
											class="col-lg-4 col-lg-offset-2 col-md-4 col-md-offset-2 col-sm-4 col-sm-offset-2 col-xs-4">Current
											Annual Salary(CTC)</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
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
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
										<div
											class="col-lg-2 col-lg-offset-1 col-md-2 col-md-offset-1 col-sm-2 col-sm-offset-1 hidden-xs">Organization</div>
										<p class="col-xs-1 pull-left visible-xs">Organization</p>
										<p class="col-xs-1 visible-xs" style="margin-left: 50px">Designation</p>
										<p class="col-xs-1 visible-xs" style="margin-left: 50px">Nature
											of Work</p>
										<p class="col-xs-1 visible-xs" style="margin-left: 50px">From
											(MM/YYYY)</p>
										<p class="col-xs-1 visible-xs" style="margin-left: 50px">To
											(MM/YYYY)</p>
										<div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">Designation</div>
										<div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">Nature
											of Work</div>
										<div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">From
											(MM/YYYY)</div>
										<div class="col-lg-2 col-md-2 col-sm-2 hidden-xs pull-right">To
											(MM/YYYY)</div>

									</div>
								</div>
								<div class="form-group">

									<div class="row">
										<div
											class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-1">a</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<input type="text" name="a_organization" style="width: 100%"
												class="hidden-xs" value="${wrk_exp.a_organization}" /> <input
												type="text" name="a_organization"
												style="width: 100%; margin-left: 15px" class="visible-xs"
												value="${wrk_exp.a_organization}" />
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<input type="text" name="a_designation" style="width: 100%"
												class="hidden-xs" value="${wrk_exp.a_desgination}" /> <input
												type="text" name="a_designation"
												style="width: 100%; margin-left: 25px" class="visible-xs"
												value="${wrk_exp.a_desgination}" />
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<input type="text" name="a_nature_of_work"
												style="width: 100%" class="hidden-xs"
												value="${wrk_exp.a_now}" /> <input type="text"
												name="a_nature_of_work"
												style="width: 100%; margin-left: 35px" class="visible-xs"
												value="${wrk_exp.a_now}" />
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<input type="text" name="a_from_date" style="width: 100%"
												class="hidden-xs" value="${wrk_exp.a_fr_date}" /> <input
												type="text" name="a_from_date"
												style="width: 100%; margin-left: 45px" class="visible-xs"
												value="${wrk_exp.a_fr_date}" />
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<input type="text" name="a_to_date" style="width: 100%"
												class="hidden-xs" value="${wrk_exp.a_to_date}" /> <input
												type="text" name="a_to_date"
												style="width: 100%; margin-left: 55px" class="visible-xs"
												value="${wrk_exp.a_to_date}" />
										</div>
									</div>
								</div>


								<div class="form-group">
									<div class="row">
										<div
											class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-1">b</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<input type="text" name="b_organization" style="width: 100%"
												class="hidden-xs" value="${wrk_exp.b_organization}" /> <input
												type="text" name="b_organization"
												style="width: 100%; margin-left: 15px" class="visible-xs"
												value="${wrk_exp.b_organization}" />
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<input type="text" name="b_designation" style="width: 100%"
												class="hidden-xs" value="${wrk_exp.b_desgination}" /> <input
												type="text" name="b_designation"
												style="width: 100%; margin-left: 25px" class="visible-xs"
												value="${wrk_exp.b_desgination}" />
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<input type="text" name="b_nature_of_work"
												style="width: 100%" class="hidden-xs"
												value="${wrk_exp.b_now}" /> <input type="text"
												name="b_nature_of_work"
												style="width: 100%; margin-left: 35px" class="visible-xs"
												value="${wrk_exp.b_now}" />
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<input type="text" name="b_from_date" style="width: 100%"
												class="hidden-xs" value="${wrk_exp.b_fr_date}" /> <input
												type="text" name="b_from_date"
												style="width: 100%; margin-left: 45px" class="visible-xs"
												value="${wrk_exp.b_fr_date}" />
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<input type="text" name="b_to_date" style="width: 100%"
												class="hidden-xs" value="${wrk_exp.b_to_date}" /> <input
												type="text" name="b_to_date"
												style="width: 100%; margin-left: 55px" class="visible-xs"
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
								style="margin-left: 0px; margin-top: 15px; font-size: 14px; margin-bottom: 30px">DECLARATION</label>
						</div>
					</div>

					<div class="row">
						<label
							style="font-size: small; font-style: oblique; margin-bottom: 20px"
							class="col-lg-6 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1">I
							certify that information provided in this application form is
							correct.</label>
					</div>


					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-md-offset-1 col-sm-2 col-sm-offset-1 col-xs-2">CurrentCity</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-2 col-xs-offset-1">
								<input type="text" name="current_city" style="width: 100%"
									value="${user.currentCity}" />
							</div>
							<div class="col-lg-2 col-md-3 col-sm-3 col-xs-4">Application
								Name</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
								<input type="text" name="app_name" style="width: 100%"
									value="${user.application_name}" />
							</div>
						</div>
					</div>

					<div class="row">
						<div
							class="col-lg-2 col-md-2 col-md-offset-1 col-sm-2 col-sm-offset-1 col-xs-2 col-xs-offset-1">
							<input type="submit" class="btn btn-primary" value="submit" />
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
			<div
				class="col-lg-10 col-lg-offset-0 col-md-12 col-md-offset-0 col-sm-2 col-sm-offset-5 col-xs-2 col-xs-offset-2">
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












<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script>
	function check() {

		var gender = document.getElementsByName('sex');
		var gend = document.getElementById('gender1');
		var userstatus=document.getElementById("marstatus");
		var status=document.getElementsByName("status");
		if ((gender[0].value) == gend.value) {
			document.getElementById('male').checked = true;
		} else {
			document.getElementById('female').checked = true;
		}

		if((status[0].value)==userstatus.value){
			document.getElementById('single').checked=true;
		}else{
			document.getElementById('married').checked=true;
		}
		
		
		var im=document.getElementById('img').value;
		document.getElementById('fi').value=im;
		
		
		alert(document.getElementById('fi').value); 
	}
	
	
</script>



<title>Insert title here</title>
</head>

<body onLoad="check()">
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>








<div class="container">


		<div class="row">
			<div class="pull-left" style="width: 200px">

				<img src="img/greatLakes.jpg" class="img-thumbnail" />
			</div>
			<div class="pull-right">
				<h4>Student Log In</h4>
			</div>
		</div>
	</div>
	<div class="container" style="border: 1px solid black">
		<div class="row">
			<div
				class="col-md-10 col-md-offset-1 col-sm-10 col-xs-offset-1 col-xs-10 col-xs-offset-1">
				<form action="addData" method="post" style="width: 250"
					class="form-horizontal" enctype="multipart/form-data">
					<input type="hidden" name="userId" value="${user.id}" />

					<div class="row">
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="userName"
										value="${user.userName}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">UpLoad your
									Photo</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="file" id="fi" name="file"/>
									<input type="hidden" value='<%=request.getAttribute("url")%>' id="img" name="img"/>
									
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Gender</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="radio" id="male" name="sex" value="male" />Male <input
										type="radio" id="female" name="sex" value="feMale" />FeMale <input
										type="hidden" id="gender1" name="sex1" value="${user.gender}" />

								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">DateOfBirth
									(dd/mm/yyyy)</div>

								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="date"
										value="${user.dob}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">MaritalStatus</div>
								<div class="col-md-3 col-sm-10 col-xs-10">

									<input type="radio" name="status" id="single"
										value="single" />Single <input type="radio"
										name="status" id="married" value="married" />Married
								
								<input id="marstatus" name="mar" value="${user.maritalStatus}"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Father's Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="fatherName"
										value="${user.fatherName}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">Father'sOccupation</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="father'sJob"
										value="${user.fatherJob}">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Mother'sName</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="motherName"
										value="${user.motherName}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">Mother'sOccupation</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mother'sJob"
										value="${user.motherJob}" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Nationality</div>

								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="nationality" class="form-control"
										value="${user.nationality}" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">MailingAddress</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mailingAddress"
										value="${user.mailingAddress}" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Mobile</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mobileNumber"
										value="${user.mobileNumber}" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">LandLine</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="landLineNumber"
										value="${user.landlineNumber}" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">E-mailId</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mailId"
										value="${user.emailId}" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-0">
								<h3>Academic Qualification</h3>
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
								<label>Year Of Completion</label>
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
										<input type="text" class="form-control" name="pg_degree"
											value="${academic.pg_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="pg_discipline"
											value="${academic.pg_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="pg_school" class="form-control"
											value="${academic.pg_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="pg_university" class="form-control"
											value="${academic.pg_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="pg_passedOut" class="form-control"
											value="${academic.pg_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="pg_percentage" class="form-control"
											value="${academic.pg_cgpa}" />
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">Graduation</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="ug_degree" class="form-control"
											value="${academic.ug_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_discipline" class="form-control"
											value="${academic.ug_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_school" class="form-control"
											value="${academic.ug_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_university" class="form-control"
											value="${academic.ug_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="ug_passedOut" class="form-control"
											value="${academic.ug_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="ug_percentage" class="form-control"
											value="${academic.ug_cgpa}" />
									</div>
								</div>
							</div>


							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">Higher
										Secondary (XII)</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_degree"
											value="${academic.hs_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_discipline"
											value="${academic.hs_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_school"
											value="${academic.hs_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_university"
											value="${academic.hs_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_passedOut"
											value="${academic.hs_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" class="form-control" name="hs_percentage"
											value="${academic.hs_cgpa}" />
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">Secondary (X)</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="s_degree" class="form-control"
											value="${academic.s_degree}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_discipline" class="form-control"
											value="${academic.s_discipline}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_school" class="form-control"
											value="${academic.s_school}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_university" class="form-control"
											value="${academic.s_university}" />
									</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
										<input type="text" name="s_passedOut" class="form-control"
											value="${academic.s_year}" />
									</div>
									<div class="col-md-1 col-sm-10 col-xs-10">
										<input type="text" name="s_percentage" class="form-control"
											value="${academic.s_cgpa}" />
									</div>
								</div>
							</div>








							<div class="row">
								<label>#Branch of Engineering/ Science/ Arts/ Commerce/
									Other</label>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-sm-10 col-xs-10">Total Work
										Experience</div>
									<div class="col-md-3 col-sm-10 col-xs-10">
										<select class="form-control" name="work_experience">
											<option value="${user.total_experience}">${user.total_experience}</option>
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
									<div class="col-md-2 col-sm-10 col-xs-10">Current Annual
										Salary(CTC)</div>
									<div class="col-md-3 col-sm-10 col-xs-10">
										<select name="ctc" class="form-control">
											<option value="${user.anual_ctc}">${user.anual_ctc}</option>
											<option value="0-1l">0-1lakh</option>
											<option value="1-3l">1-3lakhs</option>
											<option value="3-5l">3-5lakhs</option>
											<option value=">5l">&gt;5lakhs</option>

										</select>
									</div>
								</div>

							</div>


							<c:forEach items="${academic.work_experience}" var="experience">
								<div class="row">
									<h3>Work Experience Details</h3>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-md-1 col-sm-10 col-xs-10"></div>
										<div class="col-md-2 col-sm-10 col-xs-10">Organization</div>
										<div class="col-md-2 col-sm-10 col-xs-10">Designation</div>
										<div class="col-md-2 col-sm-10 col-xs-10">Nature of Work</div>
										<div class="col-md-3 col-sm-10 col-xs-10">From(MM/YYYY)</div>
										<div class="col-md-2 col-sm-10 col-xs-10">To(MM/YYYY)</div>

									</div>
								</div>
								<div class="form-group">

									<div class="row">
										<div class="col-md-1 col-sm-10 col-xs-10">a</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="a_organization" class="form-control"
												value="${experience.a_organization}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="a_designation" class="form-control"
												value="${experience.a_desgination}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="a_nature_of_work"
												class="form-control" value="${experience.a_now}" />
										</div>
										<div class="col-md-3 col-sm-10 col-xs-10">
											<input type="text" name="a_from_date" class="form-control"
												value="${experience.a_fr_date}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="a_to_date" class="form-control"
												value="${experience.a_to_date}" />
										</div>
									</div>
								</div>


								<div class="form-group">
									<div class="row">
										<div class="col-md-1 col-sm-10 col-xs-10">b</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="b_organization" class="form-control"
												value="${experience.b_organization}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="b_designation" class="form-control"
												value="${experience.b_desgination}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="b_nature_of_work"
												class="form-control" value="${experience.b_now}" />
										</div>
										<div class="col-md-3 col-sm-10 col-xs-10">
											<input type="text" name="b_from_date" class="form-control"
												value="${experience.a_fr_date}" />
										</div>
										<div class="col-md-2 col-sm-10 col-xs-10">
											<input type="text" name="b_to_date" class="form-control"
												value="${experience.b_to_date}" />
										</div>

									</div>

								</div>


								<c:forEach items="${experience.awards}" var="awards">

									<div class="row">
										<h3>Awards and Achievements</h3>
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10">a</div>
											<div class="col-md-2 col-sm-10 col-xs-10">Academic
												Honors</div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="academic_honors"
													class="form-control" value="${awards.academicHonors}" />
											</div>

										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10"></div>
											<div class="col-md-2 col-sm-10 col-xs-10"></div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="ch_academic_honors"
													class="form-control" value="${awards.ch_academicHonors}" />
											</div>
										</div>
									</div>


									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10">b</div>
											<div class="col-md-2 col-sm-10 col-xs-10">Extracurricular</div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="extracurricular"
													class="form-control" value="${awards.extracurricular}" />
											</div>
										</div>
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10"></div>
											<div class="col-md-2 col-sm-10 col-xs-10"></div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="ch_extracurricular"
													class="form-control" value="${awards.ch_extracurricular}" />
											</div>
										</div>
									</div>


									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10">c</div>
											<div class="col-md-2 col-sm-10 col-xs-10">Others
												(Specify)</div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="others" class="form-control"
													value="${awards.others}" />
											</div>
										</div>
									</div>

								</c:forEach>

							</c:forEach>

						</c:forEach>

						<div class="row">
							<h3>Declaration</h3>
						</div>

						<div class="row">
							<label>I certify that information provided in this
								application form is correct.</label>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">CurrentCity</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="current_city" class="form-control"
										value="${user.currentCity}" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Application Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="app_name" class="form-control"
										value="${user.application_name}" /> <input type="hidden"
										name="userId" value="${user.id}" />
								</div>
							</div>
						</div>

						<div class="row">
							<div
								class="col-md-2 col-md-offset-1 col-sm-6 col-sm-offset-1 col-xs-6 col-xs-offset-1">
								<input type="submit" class="btn btn-primary form-control"
									value="submit" />
							</div>
						</div>

					</div>
				</form>
			</div>
		</div>


	</div>
</body>
</html> --%>

