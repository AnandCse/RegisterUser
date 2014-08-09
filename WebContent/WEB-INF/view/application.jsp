<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

	<div class="container">
	<form action="addData" method="post">
	
      <div class="form-group">	
		<table>
			<tr>
				<td><label for="name">Name</label></td>
				<td><input type="text" class="form-control" name="userName" place-holder="EnterName"/></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="radio" name="sex" value="male" />Male</td>
				<td><input type="radio" name="sex" value="feMale" />FeMale</td>
			</tr>
			<tr>
				<td>DateOfBirth</td>
				<td><input type="text" name="date" /></td>
			</tr>
			<tr>
				<td>Father's Name</td>
				<td><input type="text" name="fatherName" /></td>
			</tr>
			<tr>
				<td>Mother'sName</td>
				<td><input type="text" name="motherName" /></td>
			</tr>
			<tr>
				<td>Nationality</td>
				<td><input type="text" name="nationality" /></td>
			</tr>
			<tr>
				<td>MailingAddress</td>
				<td><input type="text" name="mailId" /></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobileNumber" /></td>
			</tr>
			<tr>
				<td>EmailId</td>
				<td><input type="text" name="mailingAddress" /></td>
			</tr>
			<tr>
				<td>UpLoad your Photo</td>
				<td><input type="file" name="photo" /></td>
			</tr>
			<tr>
				<td>MaritalStatus</td>
				<td><input type="radio" name="status" value="single" />Single</td>
				<td><input type="radio" name="status" value="married" />Married</td>
			</tr>
			<tr>
				<td>Father'sOccupation</td>
				<td><input type="text" name="father'sJob"></td>
			</tr>
			<tr>
				<td>Mother'sOccupation</td>
				<td><input type="text" name="mother'sJob" /></td>
			</tr>
			<tr>
				<td>LandLine</td>
				<td><input type="text" name="landLineNumber"></td>
			</tr>
		</table>
</div>
		<table>
			<h3>Academic Qualification</h3>
			<tr>
				<th>Qualification</th>
				<th>Degree</th>
				<th>Discipline</th>
				<th>School/college</th>
				<th>Board/University</th>
				<th>Year Of Completion</th>
				<th>%/CGPA</th>
			</tr>

			<tr>
				<td>Post-Graduation(if any)</td>
				<td><input type="text" name="pg_degree" /></td>
				<td><input type="text" name="pg_discipline" /></td>
				<td><input type="text" name="pg_school" /></td>
				<td><input type="text" name="pg_university" /></td>
				<td><input type="text" name="pg_passedOut" /></td>
				<td><input type="text" name="pg_percentage" /></td>
			</tr>
			<tr>
				<td>Graduation</td>
				<td><input type="text" name="ug_degree" /></td>
				<td><input type="text" name="ug_discipline" /></td>
				<td><input type="text" name="ug_school" /></td>
				<td><input type="text" name="ug_university" /></td>
				<td><input type="text" name="ug_passedOut" /></td>
				<td><input type="text" name="ug_percentage" /></td>
			</tr>
			<tr>
				<td>HigherSecondary(XII)</td>
				<td><input type="text" name="hs_degree" /></td>
				<td><input type="text" name="hs_discipline" /></td>
				<td><input type="text" name="hs_school" /></td>
				<td><input type="text" name="hs_university" /></td>
				<td><input type="text" name="hs_passedOut" /></td>
				<td><input type="text" name="hs_percentage" /></td>
			</tr>
			<tr>
				<td>Secondary(X)</td>
				<td><input type="text" name="s_degree" /></td>
				<td><input type="text" name="s_discipline" /></td>
				<td><input type="text" name="s_school" /></td>
				<td><input type="text" name="s_university" /></td>
				<td><input type="text" name="s_passedOut" /></td>
				<td><input type="text" name="s_percentage" /></td>
			</tr>
			<tr>
				<td>#Branch of Engineering/ Science/ Arts/ Commerce/ Other
			</tr>

			<tr>
				<td>Total Work Experience</td>
				<td><select name="work_experience">
						<option value="">Select</option>
						<option value="0-1y">0-1year</option>
						<option value="1-3y">1-3years</option>
						<option value="3-5y">3-5years</option>
						<option value=">5y">&gt;5years</option>
				</select></td>
			</tr>
			<tr>
				<td>Current Annual Salary(CTC)</td>
				<td><select name="ctc">
						<option value="">Select</option>
						<option value="0-1l">0-1lakh</option>
						<option value="1-3l">1-3lakhs</option>
						<option value="3-5l">3-5lakhs</option>
						<option value=">5l">&gt;5lakhs</option>

				</select></td>
			</tr>
		</table>

		<table>
			<tr>
				<th>Work Experience Details</th>
			</tr>
			<tr>
				<td></td>
				<td>Organization</td>
				<td>Designation</td>
				<td>Nature of Work</td>
				<td>From(MM/YYYY)</td>
				<td>To(MM/YYYY)</td>
			</tr>
			<tr>
				<td>a</td>
				<td><input type="text" name="a_organization" /></td>
				<td><input type="text" name="a_designation" /></td>
				<td><input type="text" name="a_nature_of_work" /></td>
				<td><input type="text" name="a_from_date" /></td>
				<td><input type="text" name="a_to_date" /></td>
			</tr>
			<tr>
				<td>b</td>
				<td><input type="text" name="b_organization" /></td>
				<td><input type="text" name="b_designation" /></td>
				<td><input type="text" name="b_nature_of_work" /></td>
				<td><input type="text" name="b_from_date" /></td>
				<td><input type="text" name="b_to_date" /></td>
			</tr>
		</table>

		<table>
			<h3>Awards and Achievements</h3>
			<tr>
				<td>a</td>
				<td>Academic Honors</td>
				<td><input type="text" name="academic_honors"></td>
			<tr>
			<tr>
				<td></td>
				<td></td>
				<td><input type="text" name="ch_academic_honors"></td>
			<tr>
			<tr>
				<td>b</td>
				<td>Extracurricular</td>
				<td><input type="text" name="extracurricular" /></td>
			<tr>
			<tr>
				<td></td>
				<td></td>
				<td><input type="text" name="ch_extracurricular" /></td>
			<tr>
			<tr>
				<td>c</td>
				<td>Others (Specify)</td>
				<td><input type="text" name="others" /></td>
			<tr>
			<tr>
				<td></td>
				<td></td>
				<td><input type="text" name="others" /></td>
			</tr>
			<h2>Declaration</h2>
			<b>I certify that information provided in this application form
				is correct.</b>
			<tr>
				<td>CurrentCity</td>
				<td><input type="text" name="current_city"></td>
				<td align="center">Application Name</td>
				<td align="right"><input type="text" name="app_name">
				</td>

			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="submit" /></td>
			</tr>
		</table>
	</form>
	
	</div>
</body>
</html>