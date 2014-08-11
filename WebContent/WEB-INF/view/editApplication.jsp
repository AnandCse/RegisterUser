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

<title>Insert title here</title>
</head>
<body>
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
				<form action="editData" method="post" style="width: 250"
					class="form-horizontal">

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
									<input type="file" name="photo" value="${user.photo_details}" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Gender</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="radio" name="sex" value="male" />Male <input
										type="radio" name="sex" value="feMale" />FeMale

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

									<input type="radio" name="status" value="single" />Single <input
										type="radio" name="status" value="married" />Married
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
								<label>%/CGPA${user.userAcademic}</label>
							</div>

						</div>



						<c:forEach items="${user.userAcademic}" var="academic">
							<div class="form-group">

								<div class="row">
									<div class="col-md-1 col-sm-10 col-xs-10">Post-Graduation(if
										any)</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
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
									<div class="col-md-1 col-sm-10 col-xs-10">Graduation</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
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
									<div class="col-md-1 col-sm-10 col-xs-10">Higher
										Secondary (XII)</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
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
									<div class="col-md-1 col-sm-10 col-xs-10">Secondary (X)</div>
									<div class="col-md-2 col-sm-10 col-xs-10">
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
											<option value="">Select</option>
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
											<option value="">Select</option>
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
													class="form-control" value="${awards.academicHonors}"/>
											</div>

										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10"></div>
											<div class="col-md-2 col-sm-10 col-xs-10"></div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="ch_academic_honors"
													class="form-control" value="${awards.ch_academicHonors}"/>
											</div>
										</div>
									</div>


									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10">b</div>
											<div class="col-md-2 col-sm-10 col-xs-10">Extracurricular</div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="extracurricular"
													class="form-control" value="${awards.extracurricular}"/>
											</div>
										</div>
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10"></div>
											<div class="col-md-2 col-sm-10 col-xs-10"></div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="ch_extracurricular"
													class="form-control" value="${awards.ch_extracurricular}"/>
											</div>
										</div>
									</div>


									<div class="form-group">
										<div class="row">
											<div class="col-md-1 col-sm-10 col-xs-10">c</div>
											<div class="col-md-2 col-sm-10 col-xs-10">Others
												(Specify)</div>
											<div class="col-md-7 col-sm-10 col-xs-10">
												<input type="text" name="others" class="form-control" value="${awards.others}"/>
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
									<input type="text" name="current_city" class="form-control" value="${user.currentCity}"/>
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Application Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="app_name" class="form-control" value="${user.application_name}"/>
									<input type="hidden" name="userId" value="${user.id}"/>
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