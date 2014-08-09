<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
			<div class="col-md-10 col-md-offset-1">
				<form action="addData" method="post" class="form-horizontal"
					style="width: 250">

					<div class="row">
						<div class="form-group">
							<div class="row">
								<div class="col-md-2">Name</div>
								<div class="col-md-3">
									<input type="text" class="form-control" name="userName" />
								</div>
								<div class="col-md-3">UpLoad your Photo</div>
								<div class="col-md-3">
									<input type="file" name="photo" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2">Gender</div>
								<div class="col-md-3">
									<input type="radio" name="sex" value="male" />Male<input
										type="radio" name="sex" value="feMale" />FeMale
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2">DateOfBirth (dd/mm/yyyy)</div>

								<div class="col-md-3">
									<input type="text" class="form-control" name="date" />
								</div>
								<div class="col-md-3">MaritalStatus</div>
								<div class="col-md-3">

									<input type="radio" name="status" value="single" />Single<input
										type="radio" name="status" value="married" />Married
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2">Father's Name</div>
								<div class="col-md-3">
									<input type="text" class="form-control" name="fatherName" />
								</div>
								<div class="col-md-3">Father'sOccupation</div>
								<div class="col-md-3">
									<input type="text" class="form-control" name="father'sJob">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2">Mother'sName</div>
								<div class="col-md-3">
									<input type="text" class="form-control" name="motherName" />
								</div>
								<div class="col-md-3">Mother'sOccupation</div>
								<div class="col-md-3">
									<input type="text" class="form-control" name="mother'sJob" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-2">Nationality</div>

								<div class="col-md-3">
									<input type="text" name="nationality" class="form-control" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2">MailingAddress</div>
								<div class="col-md-3">
									<input type="text" class="form-control" name="mailId" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2">Mobile</div>
								<div class="col-md-3">
									<input type="text" class="form-control" name="mobileNumber" />
								</div>
								<div class="col-md-3">LandLine</div>
								<div class="col-md-3">
									<input type="text" class="form-control" name="landLineNumber" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2">E-mailId</div>
								<div class="col-md-3">
									<input type="text" class="form-control" name="mailingAddress" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-0">
								<h3>Academic Qualification</h3>
							</div>
						</div>
						<div class="row">
							<div class="col-md-1">
								<label>Qualification</label>
							</div>
							<div class="col-md-2">
								<label>Degree</label>
							</div>
							<div class="col-md-2">
								<label>Discipline</label>
							</div>
							<div class="col-md-2">
								<label>School/college</label>
							</div>
							<div class="col-md-2">
								<label>Board/University</label>
							</div>
							<div class="col-md-2">
								<label>Year Of Completion</label>
							</div>
							<div class="col-md-1">
								<label>%/CGPA</label>
							</div>

						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1">Post-Graduation(if any)</div>
								<div class="col-md-2">
									<input type="text" class="form-control" name="pg_degree" />
								</div>
								<div class="col-md-2">
									<input type="text" class="form-control" name="pg_discipline" />
								</div>
								<div class="col-md-2">
									<input type="text" name="pg_school" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="pg_university" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="pg_passedOut" class="form-control" />
								</div>
								<div class="col-md-1">
									<input type="text" name="pg_percentage" class="form-control" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1">Graduation</div>
								<div class="col-md-2">
									<input type="text" name="ug_degree" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="ug_discipline" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="ug_school" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="ug_university" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="ug_passedOut" class="form-control" />
								</div>
								<div class="col-md-1">
									<input type="text" name="ug_percentage" class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1">Higher Secondary (XII)</div>
								<div class="col-md-2">
									<input type="text" class="form-control" name="hs_degree" />
								</div>
								<div class="col-md-2">
									<input type="text" class="form-control" name="hs_discipline" />
								</div>
								<div class="col-md-2">
									<input type="text" class="form-control" name="hs_school" />
								</div>
								<div class="col-md-2">
									<input type="text" class="form-control" name="hs_university" />
								</div>
								<div class="col-md-2">
									<input type="text" class="form-control" name="hs_passedOut" />
								</div>
								<div class="col-md-1">
									<input type="text" class="form-control" name="hs_percentage" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1">Secondary (X)</div>
								<div class="col-md-2">
									<input type="text" name="s_degree" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="s_discipline" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="s_school" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="s_university" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="s_passedOut" class="form-control" />
								</div>
								<div class="col-md-1">
									<input type="text" name="s_percentage" class="form-control" />
								</div>
							</div>
						</div>

						<div class="row">
							<label>#Branch of Engineering/ Science/ Arts/ Commerce/
								Other</label>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2">Total Work Experience</div>
								<div class="col-md-3">
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
								<div class="col-md-2">Current Annual Salary(CTC)</div>
								<div class="col-md-3">
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

						<div class="row">
							<h3>Work Experience Details</h3>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1"></div>
								<div class="col-md-2">Organization</div>
								<div class="col-md-2">Designation</div>
								<div class="col-md-2">Nature of Work</div>
								<div class="col-md-3">From(MM/YYYY)</div>
								<div class="col-md-2">To(MM/YYYY)</div>

							</div>
						</div>
						<div class="form-group">

							<div class="row">
								<div class="col-md-1">a</div>
								<div class="col-md-2">
									<input type="text" name="a_organization" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="a_designation" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="a_nature_of_work" class="form-control" />
								</div>
								<div class="col-md-3">
									<input type="text" name="a_from_date" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="a_to_date" class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1">b</div>
								<div class="col-md-2">
									<input type="text" name="b_organization" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="b_designation" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="b_nature_of_work" class="form-control" />
								</div>
								<div class="col-md-3">
									<input type="text" name="b_from_date" class="form-control" />
								</div>
								<div class="col-md-2">
									<input type="text" name="b_to_date" class="form-control" />
								</div>

							</div>

						</div>

						<div class="row">
							<h3>Awards and Achievements</h3>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1">a</div>
								<div class="col-md-2">Academic Honors</div>
								<div class="col-md-7">
									<input type="text" name="academic_honors" class="form-control" />
								</div>

							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-1"></div>
								<div class="col-md-2"></div>
								<div class="col-md-7">
									<input type="text" name="ch_academic_honors"
										class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1">b</div>
								<div class="col-md-2">Extracurricular</div>
								<div class="col-md-7">
									<input type="text" name="extracurricular" class="form-control" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1"></div>
								<div class="col-md-2"></div>
								<div class="col-md-7">
									<input type="text" name="ch_extracurricular"
										class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1">c</div>
								<div class="col-md-2">Others (Specify)</div>
								<div class="col-md-7">
									<input type="text" name="others" class="form-control" />
								</div>
							</div>
						</div>


						<div class="row">
							<h3>Declaration</h3>
						</div>

						<div class="row">
							<label>I certify that information provided in this
								application form is correct.</label>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-2">CurrentCity</div>
								<div class="col-md-3">
									<input type="text" name="current_city" class="form-control" />
								</div>
								<div class="col-md-2">Application Name</div>
								<div class="col-md-3">
									<input type="text" name="app_name" class="form-control" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-2 col-md-offset-1">
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