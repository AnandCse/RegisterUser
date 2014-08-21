<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<div class="container" >
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
				${message}
				
				<form action="addData" method="post" style="width: 250"
					class="form-horizontal" enctype="multipart/form-data">

					<div class="row">
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" id="userName" name="userName" onSelect="nameCheck()"/>
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
									<input type="text" class="form-control" name="date" />
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
									<input type="text" class="form-control" name="fatherName" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">Father'sOccupation</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="father'sJob">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Mother'sName</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="motherName" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">Mother'sOccupation</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mother'sJob" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Nationality</div>

								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="nationality" class="form-control" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">MailingAddress</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<textarea rows ="4" cols="50" class="form-control" name="mailingAddress"></textarea>
									
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Mobile</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mobileNumber" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">LandLine</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="landLineNumber" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">E-mailId</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mailId" />
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

						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">Post-Graduation(if
									any)</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="pg_degree" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="pg_discipline" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="pg_school" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="pg_university" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="pg_passedOut" class="form-control" />
								</div>
								<div class="col-md-1 col-sm-10 col-xs-10">
									<input type="text" name="pg_percentage" class="form-control" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">Graduation</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="ug_degree" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="ug_discipline" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="ug_school" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="ug_university" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="ug_passedOut" class="form-control" />
								</div>
								<div class="col-md-1 col-sm-10 col-xs-10">
									<input type="text" name="ug_percentage" class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">Higher Secondary
									(XII)</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_degree" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_discipline" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_school" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_university" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_passedOut" />
								</div>
								<div class="col-md-1 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_percentage" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">Secondary (X)</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="s_degree" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="s_discipline" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="s_school" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="s_university" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="s_passedOut" class="form-control" />
								</div>
								<div class="col-md-1 col-sm-10 col-xs-10">
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
									<input type="text" name="a_organization" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="a_designation" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="a_nature_of_work" class="form-control" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="a_from_date" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="a_to_date" class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">b</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="b_organization" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="b_designation" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="b_nature_of_work" class="form-control" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="b_from_date" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="b_to_date" class="form-control" />
								</div>

							</div>

						</div>

						<div class="row">
							<h3>Awards and Achievements</h3>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">a</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Academic Honors</div>
								<div class="col-md-7 col-sm-10 col-xs-10">
									<input type="text" name="academic_honors" class="form-control" />
								</div>

							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10"></div>
								<div class="col-md-2 col-sm-10 col-xs-10"></div>
								<div class="col-md-7 col-sm-10 col-xs-10">
									<input type="text" name="ch_academic_honors"
										class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">b</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Extracurricular</div>
								<div class="col-md-7 col-sm-10 col-xs-10">
									<input type="text" name="extracurricular" class="form-control" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10"></div>
								<div class="col-md-2 col-sm-10 col-xs-10"></div>
								<div class="col-md-7 col-sm-10 col-xs-10">
									<input type="text" name="ch_extracurricular"
										class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">c</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Others (Specify)</div>
								<div class="col-md-7 col-sm-10 col-xs-10">
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
								<div class="col-md-2 col-sm-10 col-xs-10">CurrentCity</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="current_city" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Application Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="app_name" class="form-control" />
								</div>
							</div>
						</div>

						<div class="row">
							<div
								class="col-md-2 col-md-offset-1 col-sm-6 col-sm-offset-1 col-xs-6 col-xs-offset-1">
								<input type="submit" class="btn btn-primary form-control"
									value="submit"/>
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

</head>
<body>
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
			<div class="col-lg-3 col-lg-offset-1 col-md-3  col-md-offset-1 col-sm-3 col-sm-offset-1 col-xs-3 col-xs-offset-1">
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
			<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-1 col-xs-8 col-xs-offset-1">
				<img src="img/line4.jpg" style="width: 1000px" />
			</div>
		</div>

	</div>
	<div class="container">
		<div class="row">
				${message}
				<div
				class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-xs-offset-1 col-xs-10 col-xs-offset-1">
			
				<div
					style="width: 100%; color: #36798E; float: left; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
					class="updatesheading3">
					<div
						style="position: relative; top: 0px; width: 200px; float: left;">
						<label style="margin-top: -40px; margin-left: 50px;font-size:14px">Personal Details</label>
					</div>
				</div>
				<form action="addData" method="post" style="width: 250"
					class="form-horizontal" enctype="multipart/form-data">

					<div class="row">
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-1 col-xs-10">Name</div>
								<div class="col-lg-3 col-md-3 col-sm-2 col-xs-10">
									<input type="text" id="userName" name="userName"
										onSelect="nameCheck()" />
								</div>
								<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10" >UpLoad your
									Photo</div>
								<div class="col-lg-3 col-md-3 col-sm-2 col-xs-10">
									<input type="file" name="file" />
								</div>

							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">Gender</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">
									<div class="row" style="margin-left: -10px">
										<div class="col-lg-1 col-md-1 col-sm-10 col-xs-10 pull-left">
											<input type="radio" name="sex" value="male" />
										</div>
										<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">Male</div>
										<div class="col-lg-1 col-md-1 col-sm-10 col-xs-10">
											<input type="radio" name="sex" value="feMale" />
										</div>
										<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">FeMale</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">DateOfBirth
									(dd/mm/yyyy)</div>

								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="date" />
								</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">MaritalStatus</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">

									<!-- <input type="radio" name="status" value="single" />Single <input
											type="radio" name="status" value="married" />Married -->
									<div class="row" style="margin-left: -10px">
										<div class="col-lg-1 col-md-1 col-sm-10 col-xs-10 pull-left">
											<input type="radio" name="status" value="single" />
										</div>
										<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">Single</div>
										<div class="col-lg-1 col-md-1 col-sm-10 col-xs-10">
											<input type="radio" name="status" value="married" />
										</div>
										<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">Married</div>
									</div>

								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">Father's Name</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="fatherName" />
								</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">Father'sOccupation</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="father'sJob">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">Mother'sName</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="motherName" />
								</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">Mother'sOccupation</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="mother'sJob" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">Nationality</div>

								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="nationality" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">MailingAddress</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">
									<textarea rows="4" cols="19" name="mailingAddress"></textarea>

								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">Mobile</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="mobileNumber" />
								</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">LandLine</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="landLineNumber" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">E-mailId</div>
								<div class="col-lg-3 col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="mailId" />
								</div>
							</div>
						</div>

						<div
							style="width: 100%; color: #36798E; float: left; font-size: 10px; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
							class="updatesheading3">
							<div
								style="position: relative; top: 0px; width: 200px; float: left;">
								<label
									style="margin-left: 10px; margin-top: 15px;font-size:14px;margin-bottom: 30px">Academic Qualification</label>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">
								<label>Qualification</label>
							</div>
							<div class="col-lg-1 col-md-1 col-sm-10 col-xs-10">
								<label>Degree</label>
							</div>
							
							<div class="col-md-2 col-sm-10 col-xs-10">
								<label>Discipline</label>
							</div>
							
							
							<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">
								<label>School/college</label>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">
								<label>Board/University</label>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">
								<label>PassingYear</label>
							</div>
							<div class="col-lg-1 col-md-1 col-sm-10 col-xs-10">
								<label>%/CGPA</label>
							</div>

						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-10 col-xs-10">Post-Graduation(if
									any)</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="pg_degree" style="width:100%;margin-left:10px"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="pg_discipline" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="pg_school" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="pg_university" style="width:100%" />
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="pg_passedOut" style="width:100%;margin-left:-10px" />
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="pg_percentage" style="width:100%"/>
								</div>
							</div>
						</div>

						
						
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">Graduation</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="ug_degree" style="width:100%;margin-left:10px"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="ug_discipline" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="ug_school" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="ug_university" style="width:100%" />
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="ug_passedOut" style="width:100%;margin-left:-10px" />
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="ug_percentage" style="width:100%"/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">HigherSecondary</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="hs_degree" style="width:100%;margin-left:10px"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="hs_discipline" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="hs_school" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="hs_university" style="width:100%" />
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="hs_passedOut" style="width:100%;margin-left:-10px" />
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="hs_percentage" style="width:100%"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">Secondary</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="s_degree" style="width:100%;margin-left:10px"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="s_discipline" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="s_school" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="s_university" style="width:100%" />
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="s_passedOut" style="width:100%;margin-left:-10px" />
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="s_percentage" style="width:100%"/>
								</div>
							</div>
						</div>
						
						
						
					<div class="row">
							<label style="font-weight: 500;font-family: sans-serif;font-style: italic;font-size: small;">#Branch of Engineering/ Science/ Arts/ Commerce/
								Other</label>
						</div>	
						
										<div
							style="width: 100%; color: #36798E; float: left; font-size: 10px; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
							class="updatesheading3">
							<div
								style="position: relative; top: 0px; width: 200px; float: left;">
								<label
									style="margin-left: 10px; margin-top: 15px;font-size:14px; margin-bottom: 30px">AWARDS AND ACHIEVEMENTS</label>
							</div>
						</div>
						
						<div class="form-group">
							<div class="row">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">a</div>
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">Academic Honors</div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<input type="text" name="academic_honors" style="width:100%"/>
								</div>

							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"></div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<input type="text" name="ch_academic_honors" style="width:100%"/>
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">b</div>
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">Extracurricular</div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<input type="text" name="extracurricular" style="width:100%"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"></div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<input type="text" name="ch_extracurricular" style="width:100%"/>
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">c</div>
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">Others (Specify)</div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<input type="text" name="others" style="width:100%"/>
								</div>
							</div>
						</div>



	
						
							<div
							style="width: 100%; color: #36798E; float: left; font-size: 10px; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
							class="updatesheading3">
							<div
								style="position: relative; top: 0px; width: 200px; float: left;">
								<label
									style="margin-left: 10px; margin-top: 15px;font-size:14px;margin-bottom: 30px">Work Experience Details</label>
							</div>
						</div>
					
					
					<div class="form-group">
							<div class="row">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">Total Work
									Experience</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
									<select name="work_experience">
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
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">Current Annual
									Salary(CTC)</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
									<select name="ctc" >
										<option value="">Select</option>
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
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">Organization</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">Designation</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">Nature of Work</div>
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">From(MM/YYYY)</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">To(MM/YYYY)</div>

							</div>
						</div>
						<div class="form-group">

							<div class="row">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">a</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="a_organization" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="a_designation" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="a_nature_of_work" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-3 col-sm-3 col-xs-3">
									<input type="text" name="a_from_date" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="a_to_date" style="width:100%"/>
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">b</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="b_organization" style="width:100%" />
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="b_designation" style="width:100%" />
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="b_nature_of_work" style="width:100%"/>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
									<input type="text" name="b_from_date" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="b_to_date" style="width:100%"/>
								</div>

							</div>

						</div>
 





						<div
							style="width: 100%; color: #36798E; float: left; font-size: 10px; font-family: monospace; font-size: 15px; margin-bottom: -10px; padding-bottom: 3px; text-transform: uppercase;"
							class="updatesheading3">
							<div
								style="position: relative; top: 0px; width: 200px; float: left;">
								<label
									style="margin-left: 10px; margin-top: 15px;font-size:14px; margin-bottom: 30px">DECLARATION</label>
							</div>
						</div>
					
						<div class="row">
							<label style="font-size:small;font-style:oblique;margin-bottom:20px">I certify that information provided in this
								application form is correct.</label>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">CurrentCity</div>
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
									<input type="text" name="current_city" style="width:100%"/>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">Application Name</div>
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
									<input type="text" name="app_name" style="width:100%"/>
								</div>
							</div>
						</div>

						<div class="row">
							<div
								class="col-lg-2 col-md-2 col-md-offset-1 col-sm-2 col-sm-offset-1 col-xs-2 col-xs-offset-1">
								<input type="submit" class="btn btn-primary"
									value="submit" />
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
 --%><%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				${message}
				
				<form action="addData" method="post" style="width: 250"
					class="form-horizontal" enctype="multipart/form-data">

					<div class="row">
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" id="userName" name="userName" onSelect="nameCheck()"/>
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
									<input type="text" class="form-control" name="date" />
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
									<input type="text" class="form-control" name="fatherName" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">Father'sOccupation</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="father'sJob">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Mother'sName</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="motherName" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">Mother'sOccupation</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mother'sJob" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Nationality</div>

								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="nationality" class="form-control" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">MailingAddress</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mailId" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">Mobile</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="mobileNumber" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">LandLine</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="landLineNumber" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-10 col-xs-10">E-mailId</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
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

						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">Post-Graduation(if
									any)</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="pg_degree" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="pg_discipline" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="pg_school" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="pg_university" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="pg_passedOut" class="form-control" />
								</div>
								<div class="col-md-1 col-sm-10 col-xs-10">
									<input type="text" name="pg_percentage" class="form-control" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">Graduation</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="ug_degree" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="ug_discipline" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="ug_school" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="ug_university" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="ug_passedOut" class="form-control" />
								</div>
								<div class="col-md-1 col-sm-10 col-xs-10">
									<input type="text" name="ug_percentage" class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">Higher Secondary
									(XII)</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_degree" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_discipline" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_school" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_university" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_passedOut" />
								</div>
								<div class="col-md-1 col-sm-10 col-xs-10">
									<input type="text" class="form-control" name="hs_percentage" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">Secondary (X)</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="s_degree" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="s_discipline" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="s_school" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="s_university" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="s_passedOut" class="form-control" />
								</div>
								<div class="col-md-1 col-sm-10 col-xs-10">
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
									<input type="text" name="a_organization" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="a_designation" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="a_nature_of_work" class="form-control" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="a_from_date" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="a_to_date" class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">b</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="b_organization" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="b_designation" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="b_nature_of_work" class="form-control" />
								</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="b_from_date" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">
									<input type="text" name="b_to_date" class="form-control" />
								</div>

							</div>

						</div>

						<div class="row">
							<h3>Awards and Achievements</h3>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">a</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Academic Honors</div>
								<div class="col-md-7 col-sm-10 col-xs-10">
									<input type="text" name="academic_honors" class="form-control" />
								</div>

							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10"></div>
								<div class="col-md-2 col-sm-10 col-xs-10"></div>
								<div class="col-md-7 col-sm-10 col-xs-10">
									<input type="text" name="ch_academic_honors"
										class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">b</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Extracurricular</div>
								<div class="col-md-7 col-sm-10 col-xs-10">
									<input type="text" name="extracurricular" class="form-control" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10"></div>
								<div class="col-md-2 col-sm-10 col-xs-10"></div>
								<div class="col-md-7 col-sm-10 col-xs-10">
									<input type="text" name="ch_extracurricular"
										class="form-control" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<div class="col-md-1 col-sm-10 col-xs-10">c</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Others (Specify)</div>
								<div class="col-md-7 col-sm-10 col-xs-10">
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
								<div class="col-md-2 col-sm-10 col-xs-10">CurrentCity</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="current_city" class="form-control" />
								</div>
								<div class="col-md-2 col-sm-10 col-xs-10">Application Name</div>
								<div class="col-md-3 col-sm-10 col-xs-10">
									<input type="text" name="app_name" class="form-control" />
								</div>
							</div>
						</div>

						<div class="row">
							<div
								class="col-md-2 col-md-offset-1 col-sm-6 col-sm-offset-1 col-xs-6 col-xs-offset-1">
								<input type="submit" class="btn btn-primary form-control"
									value="submit"/>
							</div>
						</div>

					</div>
				</form>
			</div>
		</div>


	</div>
</body>
</html> --%>




































<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

</head>
<body>
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


					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-sm-2 col-sm-offset-1 col-xs-12 col-xs-offset-1">Name</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-sm-offset-1 col-xs-10 col-xs-offset-1">
								<input type="text" id="userName" name="userName"
									onSelect="nameCheck()" />
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

								<input type="file" name="file" class="hidden-xs" /> <input
									type="file" name="file" class="visible-xs"
									style="margin-top: -20px; margin-left: 140px" />


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
										<input type="radio" name="sex" value="male" />
									</div>
									<div
										class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-sm-offset-0 col-xs-3 col-xs-offset-1">Male</div>
									<div
										class="col-lg-1 col-lg-offset-0 col-md-1 col-md-offset-0 col-sm-1 col-sm-offset-0  col-xs-2 col-xs-offset-1">

										<input type="radio" name="sex" value="feMale"
											class="hidden-xs" /> <input type="radio" name="sex"
											value="feMale" class="visible-xs"
											style="margin-top: -20px; margin-left: 100px" />

									</div>
									<div
										class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-1 col-sm-offset-0  col-xs-3 col-xs-offset-0">
										<div class="hidden-xs">FeMale</div>

										<div class="visible-xs"
											style="margin-top: -20px; margin-left: 120px">FeMale</div>


									</div>
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
								<input type="text" name="date" />
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
										<input type="radio" name="status" value="single"
											class="hidden-xs" /> <input type="radio" name="status"
											value="single" class="visible-xs"
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

										<input type="radio" name="status" value="married"
											class="visible-lg" /> <input type="radio" class="visible-md"
											name="status" value="married" /> <input type="radio"
											class="visible-xs"
											style="margin-top: -28px; margin-left: 193px" name="status"
											value="married" /> <input type="radio" class="visible-sm"
											style="margin-left: 0px" name="status" value="married" />

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
								<input type="text" name="fatherName" />
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
									<input type="text" name="father'sJob">
								</div>

								<div style="margin-left: 20px" class="visible-md">
									<input type="text" name="father'sJob">
								</div>
								<div class="visible-sm"
									style="margin-top: -20px; margin-left: 200px">
									<input type="text" name="father'sJob">
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
								<input type="text" name="motherName" />
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
									<input type="text" name="mother'sJob">
								</div>

								<div style="margin-left: -50px" class="visible-md">
									<input type="text" name="mother'sJob">
								</div>

								<div style="margin-left: 145px; margin-top: -20px"
									class="visible-sm">
									<input type="text" name="mother'sJob">
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
								<input type="text" name="nationality" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-sm-2 col-xs-10 col-xs-offset-1">MailingAddress</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-xs-10 col-xs-offset-1">
								<textarea rows="4" cols="19" name="mailingAddress"></textarea>

							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-2 col-lg-offset-1 col-md-2 col-sm-2 col-xs-10 col-xs-offset-1">Mobile</div>
							<div
								class="col-lg-3 col-lg-offset-0 col-md-3 col-md-offset-0 col-sm-3 col-xs-10 col-xs-offset-1">
								<input type="text" name="mobileNumber" />
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
									<input type="text" name="landLineNumber" />
								</div>
								<div style="margin-left: -50px" class="visible-md">
									<input type="text" name="landLineNumber" />

								</div>
								<div style="margin-left: 145px; margin-top: -20px"
									class="visible-sm">
									<input type="text" name="landLineNumber" />


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
								<input type="text" name="mailId" />
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
					<div class="hidden-xs">
						<div class="form-group">
							<div class="row">
								<div
									class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-2 col-sm-offset-1 col-xs-10">PG
									(if any)</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
									<input type="text" name="pg_degree"
										style="width: 100%; margin-left: 10px" class="visible-lg" />
									<input type="text" name="pg_degree"
										style="width: 100%; margin-left: 20px" class="visible-md" />
									<input type="text" name="pg_degree"
										style="width: 100%; margin-left: 20px" class="visible-sm" />

									<input type="text" name="pg_degree"
										style="width: 100%; margin-left: 80px" class="visible-xs" />



								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="pg_discipline" style="width: 100%"
										class="visible-lg" /> <input type="text" name="pg_discipline"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="pg_discipline" style="width: 100%; margin-left: 20px"
										class="visible-sm" /> <input type="text" name="pg_discipline"
										style="width: 100%; margin-left: 100px" class="visible-xs" />


								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="pg_school" style="width: 100%"
										class="visible-lg" /> <input type="text" name="pg_school"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="pg_school" style="width: 100%; margin-left: 20px"
										class="visible-sm" /> <input type="text" name="pg_school"
										style="width: 100%; margin-left: 120px" class="visible-xs" />

								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="pg_university" style="width: 100%"
										class="visible-lg" /> <input type="text" name="pg_university"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="pg_university" style="width: 100%; margin-left: 50px"
										class="visible-sm" /> <input type="text" name="pg_university"
										style="width: 100%; margin-left: 185px" class="visible-xs" />



								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="pg_passedOut"
										style="width: 100%; margin-left: -10px" class="visible-lg" />
									<input type="text" name="pg_passedOut"
										style="width: 100%; margin-left: -10px" class="visible-md" />
									<input type="text" name="pg_passedOut"
										style="width: 100%; margin-left: 70px" class="visible-sm" />
									<input type="text" name="pg_passedOut"
										style="width: 100%; margin-left: 210px" class="visible-xs" />



								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
									<input type="text" name="pg_percentage" style="width: 100%"
										class="visible-lg" /> <input type="text" name="pg_percentage"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="pg_percentage"
										style="width: 100%; margin-top: -27px; margin-left: 755px"
										class="visible-sm" /> <input type="text" name="pg_percentage"
										style="width: 100%; margin-top: -27px; margin-left: 715px"
										class="visible-xs" />

								</div>
							</div>
						</div>



						<div class="form-group">
							<div class="row">
								<div
									class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-2 col-sm-offset-1 col-xs-10">Graduation</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="ug_degree"
										style="width: 100%; margin-left: 10px" class="visible-lg" />
									<input type="text" name="ug_degree"
										style="width: 100%; margin-left: 20px" class="visible-md" />
									<input type="text" name="ug_degree"
										style="width: 100%; margin-left: 20px" class="visible-sm" />





								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="ug_discipline" style="width: 100%"
										class="visible-lg" /> <input type="text" name="ug_discipline"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="ug_discipline" style="width: 100%; margin-left: 20px"
										class="visible-sm" />

								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="ug_school" style="width: 100%"
										class="visible-lg" /> <input type="text" name="ug_school"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="ug_school" style="width: 100%; margin-left: 20px"
										class="visible-sm" />

								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="ug_university" style="width: 100%"
										class="visible-lg" /> <input type="text" name="ug_university"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="ug_university" style="width: 100%; margin-left: 50px"
										class="visible-sm" />

								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="ug_passedOut"
										style="width: 100%; margin-left: -10px" class="visible-lg" />
									<input type="text" name="ug_passedOut"
										style="width: 100%; margin-left: -10px" class="visible-md" />
									<input type="text" name="ug_passedOut"
										style="width: 100%; margin-left: 70px" class="visible-sm" />


								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="ug_percentage" style="width: 100%"
										class="visible-lg" /> <input type="text" name="ug_percentage"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="ug_percentage"
										style="width: 100%; margin-top: -27px; margin-left: 755px"
										class="visible-sm" />

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
										style="width: 100%; margin-left: 10px" class="visible-lg" />
									<input type="text" name="hs_degree"
										style="width: 100%; margin-left: 20px" class="visible-md" />
									<input type="text" name="hs_degree"
										style="width: 100%; margin-left: 75px" class="visible-sm" />



								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="hs_discipline" style="width: 100%"
										class="visible-lg" /> <input type="text" name="hs_discipline"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="hs_discipline" style="width: 100%; margin-left: 75px"
										class="visible-sm" />

								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="hs_school" style="width: 100%"
										class="visible-lg" /> <input type="text" name="hs_school"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="hs_school" style="width: 100%; margin-left: 75px"
										class="visible-sm" />

								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="hs_university" style="width: 100%"
										class="visible-lg" /> <input type="text" name="hs_university"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="hs_university" style="width: 100%; margin-left: 105px"
										class="visible-sm" />

								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="hs_passedOut"
										style="width: 100%; margin-left: -10px" class="visible-lg" />
									<input type="text" name="hs_passedOut"
										style="width: 100%; margin-left: -10px" class="visible-md" />
									<input type="text" name="hs_passedOut"
										style="width: 100%; margin-left: 125px" class="visible-sm" />

								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="hs_percentage" style="width: 100%"
										class="visible-lg" /> <input type="text" name="hs_percentage"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="hs_percentage"
										style="width: 100%; margin-top: 0px; margin-left: 155px"
										class="visible-sm" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div
									class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-10">Secondary</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="s_degree"
										style="width: 100%; margin-left: 10px" class="visible-lg" />
									<input type="text" name="s_degree"
										style="width: 100%; margin-left: 20px" class="visible-md" />
									<input type="text" name="s_degree"
										style="width: 100%; margin-left: 75px" class="visible-sm" />


								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="s_discipline" style="width: 100%"
										class="visible-lg" /> <input type="text" name="s_discipline"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="s_discipline" style="width: 100%; margin-left: 75px"
										class="visible-sm" />

								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="s_school" style="width: 100%"
										class="visible-lg" /> <input type="text" name="s_school"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="s_school" style="width: 100%; margin-left: 75px"
										class="visible-sm" />

								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="s_university" style="width: 100%"
										class="visible-lg" /> <input type="text" name="s_university"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="s_university" style="width: 100%; margin-left: 105px"
										class="visible-sm" />
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<input type="text" name="s_passedOut"
										style="width: 100%; margin-left: -10px" class="visible-lg" />
									<input type="text" name="s_passedOut"
										style="width: 100%; margin-left: -10px" class="visible-md" />
									<input type="text" name="s_passedOut"
										style="width: 100%; margin-left: 125px" class="visible-sm" />

								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
									<input type="text" name="s_percentage" style="width: 100%"
										class="visible-lg" /> <input type="text" name="s_percentage"
										style="width: 100%" class="visible-md" /> <input type="text"
										name="s_percentage"
										style="width: 100%; margin-top: 0px; margin-left: 155px"
										class="visible-sm" />
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
									<input type="text" name="pg_degree" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>Discipline</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="pg_discipline" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>School/college</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="pg_school" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>Board/University</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="pg_university" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>PassingYear</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="pg_passedOut" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>%/CGPA</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="pg_percentage" />
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
									<input type="text" name="ug_degree" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>Discipline</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="ug_discipline" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>School/college</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="ug_school" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>Board/University</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="ug_university" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>PassingYear</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="ug_passedOut" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>%/CGPA</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="ug_percentage" />
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
									<input type="text" name="hs_degree" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>Discipline</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="hs_discipline" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>School/college</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="hs_school" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>Board/University</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="hs_university" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>PassingYear</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="hs_passedOut" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>%/CGPA</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="hs_percentage" />
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
									<input type="text" name="s_degree" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>Discipline</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="s_discipline" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>School/college</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="s_school" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>Board/University</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="s_university" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>PassingYear</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="s_passedOut" />
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<label>%/CGPA</label>
								</div>
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" name="s_percentage" />
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

					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-3">a</div>
							<div class="col-lg-2 col-md-3 col-sm-3 col-xs-9">Academic
								Honors</div>
							<div class="col-lg-8 col-md-7 col-sm-6 col-xs-10 pull-right">
								<input type="text" name="academic_honors" style="width: 100%" />
							</div>

						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-3"></div>
							<div class="col-lg-2 col-md-3 col-sm-3 col-xs-9"></div>
							<div class="col-lg-8 col-md-7 col-sm-6 col-xs-10 pull-right">
								<input type="text" name="ch_academic_honors" style="width: 100%" />
							</div>
						</div>
					</div>


					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-3">b</div>
							<div class="col-lg-2 col-md-3 col-sm-3 col-xs-9">Extracurricular</div>
							<div class="col-lg-8 col-md-7 col-sm-6 col-xs-10 pull-right">
								<input type="text" name="extracurricular" style="width: 100%" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-3"></div>
							<div class="col-lg-2 col-md-3 col-sm-3 col-xs-9"></div>
							<div class="col-lg-8 col-md-7 col-sm-6 col-xs-10 pull-right">
								<input type="text" name="ch_extracurricular" style="width: 100%" />
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
								<input type="text" name="others" style="width: 100%" />
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




					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-4 col-lg-offset-2 col-md-4 col-md-offset-2 col-sm-4 col-sm-offset-2 col-xs-4">Total
								Work Experience</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
								<select name="work_experience">
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
							<div
								class="col-lg-4 col-lg-offset-2 col-md-4 col-md-offset-2 col-sm-4 col-sm-offset-2 col-xs-4">Current
								Annual Salary(CTC)</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
								<select name="ctc">
									<option value="">Select</option>
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
							<div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">Nature of
								Work</div>
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
									class="hidden-xs" /> <input type="text" name="a_organization"
									style="width: 100%; margin-left: 15px" class="visible-xs" />
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
								<input type="text" name="a_designation" style="width: 100%"
									class="hidden-xs" /> <input type="text" name="a_designation"
									style="width: 100%; margin-left: 25px" class="visible-xs" />
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
								<input type="text" name="a_nature_of_work" style="width: 100%"
									class="hidden-xs" /> <input type="text" name="a_nature_of_work"
									style="width: 100%; margin-left: 35px" class="visible-xs" />
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
								<input type="text" name="a_from_date" style="width: 100%"
									class="hidden-xs" /> <input type="text" name="a_from_date"
									style="width: 100%; margin-left: 45px" class="visible-xs" />
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
								<input type="text" name="a_to_date" style="width: 100%"
									class="hidden-xs" /> <input type="text" name="a_to_date"
									style="width: 100%; margin-left: 55px" class="visible-xs" />
							</div>
						</div>
					</div>


					<div class="form-group">
						<div class="row">
							<div
								class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1 col-sm-1 col-sm-offset-1 col-xs-1">b</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
								<input type="text" name="b_organization" style="width: 100%"
									class="hidden-xs" /> <input type="text" name="b_organization"
									style="width: 100%; margin-left: 15px" class="visible-xs" />
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
								<input type="text" name="b_designation" style="width: 100%"
									class="hidden-xs" /> <input type="text" name="b_designation"
									style="width: 100%; margin-left: 25px" class="visible-xs" />
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
								<input type="text" name="b_nature_of_work" style="width: 100%"
									class="hidden-xs" /> <input type="text" name="b_nature_of_work"
									style="width: 100%; margin-left: 35px" class="visible-xs" />
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
								<input type="text" name="b_from_date" style="width: 100%"
									class="hidden-xs" /> <input type="text" name="b_from_date"
									style="width: 100%; margin-left: 45px" class="visible-xs" />
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
								<input type="text" name="b_to_date" style="width: 100%"
									class="hidden-xs" /> <input type="text" name="b_to_date"
									style="width: 100%; margin-left: 55px" class="visible-xs" />
							</div>

						</div>

					</div>









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
								<input type="text" name="current_city" style="width: 100%" />
							</div>
							<div class="col-lg-2 col-md-3 col-sm-3 col-xs-4">Application
								Name</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
								<input type="text" name="app_name" style="width: 100%" />
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
			<div class="col-lg-10 col-lg-offset-0 col-md-12 col-md-offset-0 col-sm-2 col-sm-offset-5 col-xs-2 col-xs-offset-2">
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
