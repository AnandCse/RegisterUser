package com.user.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.user.bean.AwardsAndAchievments;
import com.user.bean.User;
import com.user.bean.UserAcademic;
import com.user.bean.UserDetails;
import com.user.bean.WorkingExperience;
import com.user.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("addUser")
	public ModelAndView insertUSer(HttpServletRequest pRequest,
			HttpServletResponse pResponse) throws ServletException, IOException {

		String msg;
		String mailId = pRequest.getParameter("emailId");
		String passWord = pRequest.getParameter("password");
		String rePassWord = pRequest.getParameter("repassword");
		String phoneNumber = pRequest.getParameter("phoneNumber");

		if (pRequest.getParameter("clear") != null) {
			return new ModelAndView("userForm");
		}
		if (StringUtils.isBlank(mailId)) {
			msg = "Please Enter your mail Id";
			return new ModelAndView("userForm", "message", msg);
		} else if (StringUtils.isBlank(passWord)) {
			msg = "Please Enter your Password";
			return new ModelAndView("userForm", "message", msg);
		} else if (StringUtils.isBlank(phoneNumber)) {
			msg = "Please Enter your mobile number";
			return new ModelAndView("userForm", "message", msg);
		} else if (StringUtils.isBlank(rePassWord)) {
			msg = "Please Enter your Re-Password";
			return new ModelAndView("userForm", "message", msg);
		} else if (!StringUtils.isBlank(mailId)) {
			String regex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
			Boolean token = mailId.matches(regex);
			if (!token) {
				msg = "EmailId Format is Wrong";
				return new ModelAndView("userForm", "message", msg);
			} else if (!NumberUtils.isNumber(phoneNumber)) {
				msg = "Please enter number only";
				return new ModelAndView("userForm", "message", msg);

			}
		}
		if (!(passWord.equals(rePassWord))) {
			msg = "PassWord doesn't Match";
			return new ModelAndView("userForm", "message", msg);
		} else {

			ApplicationContext info = new ClassPathXmlApplicationContext(
					"app.xml");
			User user = (User) info.getBean("user");
			user.setMailid(pRequest.getParameter("emailId"));
			user.setPassword(pRequest.getParameter("password"));
			user.setPhonenumber(Long.parseLong(pRequest
					.getParameter("phoneNumber")));

			userService.create(user);
			return new ModelAndView("logIn");
		}
	}

	@RequestMapping("logIn")
	public ModelAndView verifyUser(HttpServletRequest pRequest,
			HttpServletResponse pResponse) throws ServletException, IOException {

		String userName = pRequest.getParameter("userName");
		String passWord = pRequest.getParameter("password");
		String msg;
		if (StringUtils.isBlank(userName)) {
			msg = "Please Enter your mail Id";
			return new ModelAndView("userForm", "message", msg);
		} else if (StringUtils.isBlank(passWord)) {
			msg = "Please Enter your Password";
			return new ModelAndView("userForm", "message", msg);
		} else if (!StringUtils.isBlank(userName)) {
			String regex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
			Boolean token = userName.matches(regex);
			if (!token) {
				msg = "EmailId Format is Wrong";
				return new ModelAndView("userForm", "message", msg);
			}
		}

		List<User> userData = userService.getUser();
		Iterator<User> iter = userData.iterator();
		while (iter.hasNext()) {
			User obj = (User) iter.next();
			if ((userName.equals(obj.getMailid()))
					&& (passWord.equals(obj.getPassword()))) {
				List<UserDetails> userList = userService.getUserDetails();
				List userLi = new ArrayList();
				// Map<String,Object> test=new HashMap();
				UserDetails userDetails;
				if (userList != null) {
					Iterator<UserDetails> user = userList.iterator();
					while (user.hasNext()) {
						userDetails = user.next();
						/*
						 * userLi.add(userDetails.getUserName());
						 * userLi.add(userDetails.getId());
						 */
						userLi.add(userDetails);
					}

				}

				return new ModelAndView("application", "user", userLi);
			}

		}

		return new ModelAndView("logIn");
	}

	@RequestMapping("addData")
	public ModelAndView insertApplicationUserData(HttpServletRequest pRequest,
			HttpServletResponse pResponse) throws ServletException,
			IOException, ParseException {
		String userName = pRequest.getParameter("userName");
		String gender = pRequest.getParameter("sex");
		String dob = pRequest.getParameter("date");
		String father_name = pRequest.getParameter("fatherName");
		String mother_name = pRequest.getParameter("motherName");
		String nationality = pRequest.getParameter("nationality");
		String mailingAddress = pRequest.getParameter("mailingAddress");
		String mailId = pRequest.getParameter("mailId");
		long mob_num = Long.parseLong(pRequest.getParameter("mobileNumber"));
		String maritialStatus = pRequest.getParameter("status");
		String fatherJob = pRequest.getParameter("father'sJob");
		String motherJob = pRequest.getParameter("mother'sJob");
		long landLineNumber = Long.parseLong(pRequest
				.getParameter("landLineNumber"));
		String photo_details = pRequest.getParameter("photo");
		String application_name = pRequest.getParameter("app_name");
		String user_city = pRequest.getParameter("current_city");

		ApplicationContext info = new ClassPathXmlApplicationContext("app.xml");
		UserDetails userDetails = (UserDetails) info.getBean("userDetails");
		UserAcademic userAcademic = (UserAcademic) info.getBean("userAcademic");
		WorkingExperience ex = (WorkingExperience) info
				.getBean("work_experience");

		AwardsAndAchievments awards = (AwardsAndAchievments) info
				.getBean("awards_achievments");

		userAcademic.setPg_cgpa(pRequest.getParameter("pg_percentage"));
		userAcademic.setPg_degree(pRequest.getParameter("pg_degree"));
		userAcademic.setPg_discipline(pRequest.getParameter("pg_discipline"));
		userAcademic.setPg_school(pRequest.getParameter("pg_school"));
		userAcademic.setPg_university(pRequest.getParameter("pg_university"));
		userAcademic.setPg_year(pRequest.getParameter("pg_passedOut"));

		userAcademic.setUg_cgpa(pRequest.getParameter("ug_percentage"));
		userAcademic.setUg_degree(pRequest.getParameter("ug_degree"));
		userAcademic.setUg_discipline(pRequest.getParameter("ug_discipline"));
		userAcademic.setUg_school(pRequest.getParameter("ug_school"));
		userAcademic.setUg_university(pRequest.getParameter("ug_university"));
		userAcademic.setUg_year(pRequest.getParameter("ug_passedOut"));

		userAcademic.setHs_cgpa(pRequest.getParameter("hs_percentage"));
		userAcademic.setHs_degree(pRequest.getParameter("hs_degree"));
		userAcademic.setHs_discipline(pRequest.getParameter("hs_discipline"));
		userAcademic.setHs_school(pRequest.getParameter("hs_school"));
		userAcademic.setHs_university(pRequest.getParameter("hs_university"));
		userAcademic.setHs_year(pRequest.getParameter("hs_passedOut"));

		userAcademic.setS_cgpa(pRequest.getParameter("s_percentage"));
		userAcademic.setS_degree(pRequest.getParameter("s_degree"));
		userAcademic.setS_discipline(pRequest.getParameter("s_discipline"));
		userAcademic.setS_school(pRequest.getParameter("s_school"));
		userAcademic.setS_university(pRequest.getParameter("s_university"));
		userAcademic.setS_year(pRequest.getParameter("s_passedOut"));

		Set<UserAcademic> s = new HashSet<UserAcademic>();
		// Map<String, UserAcademic> academicMap = new HashMap<String,
		// UserAcademic>();
		/*
		 * userAcademic.setDegree(pRequest.getParameter("pg_degree"));
		 * userAcademic.setCgpa(pRequest.getParameter("pg_percentage"));
		 * userAcademic.setDiscipline(pRequest.getParameter("pg_discipline"));
		 * userAcademic.setSchool(pRequest.getParameter("pg_school"));
		 * userAcademic.setUniversity("pg_university");
		 * userAcademic.setYear(pRequest.getParameter("pg_percentage"));
		 * userAcademic.setKey_name("PostGraduate");
		 * academicMap.put("PostGraduate", userAcademic);
		 * 
		 * userAcademic.setDegree(pRequest.getParameter("ug_degree"));
		 * userAcademic.setCgpa(pRequest.getParameter("ug_percentage"));
		 * userAcademic.setDiscipline(pRequest.getParameter("ug_discipline"));
		 * userAcademic.setSchool(pRequest.getParameter("ug_school"));
		 * userAcademic.setUniversity("ug_university");
		 * userAcademic.setYear(pRequest.getParameter("ug_percentage"));
		 * userAcademic.setKey_name("UnderGraduate");
		 * academicMap.put("UnderGraduate", userAcademic);
		 * 
		 * userAcademic.setDegree(pRequest.getParameter("hs_degree"));
		 * userAcademic.setCgpa(pRequest.getParameter("hs_percentage"));
		 * userAcademic.setDiscipline(pRequest.getParameter("hs_discipline"));
		 * userAcademic.setSchool(pRequest.getParameter("hs_school"));
		 * userAcademic.setUniversity("hs_university");
		 * userAcademic.setYear(pRequest.getParameter("hs_percentage"));
		 * userAcademic.setKey_name("HigherSecondary");
		 * academicMap.put("HigherSecondary", userAcademic);
		 * 
		 * 
		 * 
		 * userAcademic.setDegree(pRequest.getParameter("s_degree"));
		 * userAcademic.setCgpa(pRequest.getParameter("s_percentage"));
		 * userAcademic.setDiscipline(pRequest.getParameter("s_discipline"));
		 * userAcademic.setSchool(pRequest.getParameter("s_school"));
		 * userAcademic.setUniversity("s_university");
		 * userAcademic.setYear(pRequest.getParameter("s_percentage"));
		 * userAcademic.setKey_name("SSLC"); academicMap.put("SSLC",
		 * userAcademic);
		 */

		// Working Experience
		String a_organization = pRequest.getParameter("a_organization");
		String a_desgination = pRequest.getParameter("a_designation");
		String a_now = pRequest.getParameter("a_nature_of_work");
		String a_fr_date = pRequest.getParameter("a_from_date");
		String a_to_date = pRequest.getParameter("a_to_date");

		String b_organization = pRequest.getParameter("b_organization");
		String b_desgination = pRequest.getParameter("b_designation");
		String b_now = pRequest.getParameter("b_nature_of_work");
		String b_fr_date = pRequest.getParameter("b_from_date");
		String b_to_date = pRequest.getParameter("b_to_date");

		ex.setA_desgination(a_desgination);
		ex.setA_fr_date(a_fr_date);
		ex.setA_now(a_now);
		ex.setA_organization(a_organization);
		ex.setA_to_date(a_to_date);

		ex.setB_desgination(b_desgination);
		ex.setB_fr_date(b_fr_date);
		ex.setB_now(b_now);
		ex.setB_to_date(b_to_date);
		ex.setB_organization(b_organization);

		// Awards and Achevments

		awards.setAcademicHonors(pRequest.getParameter("academic_honors"));
		awards.setCh_academicHonors(pRequest.getParameter("ch_academic_honors"));
		awards.setCh_extracurricular(pRequest
				.getParameter("ch_extracurricular"));
		awards.setOthers(pRequest.getParameter("others"));
		awards.setExtracurricular(pRequest.getParameter("extracurricular"));

		Set<AwardsAndAchievments> awards_ach = new HashSet<AwardsAndAchievments>();
		awards_ach.add(awards);

		ex.setAwards(awards_ach);

		Set<WorkingExperience> w_e = new HashSet<WorkingExperience>();

		w_e.add(ex);

		userAcademic.setWork_experience(w_e);
		s.add(userAcademic);

		userDetails.setUserName(userName);
		userDetails.setGender(gender);
		userDetails.setDob(dob);
		userDetails.setFatherName(father_name);
		userDetails.setMotherName(mother_name);
		userDetails.setNationality(nationality);
		userDetails.setMailingAddress(mailingAddress);
		userDetails.setEmailId(mailId);
		userDetails.setMobileNumber(mob_num);
		userDetails.setMaritalStatus(maritialStatus);
		userDetails.setFatherJob(fatherJob);
		userDetails.setMotherJob(motherJob);
		userDetails.setLandlineNumber(landLineNumber);
		userDetails.setPhoto_details(photo_details);
		userDetails.setApplication_name(application_name);
		userDetails.setCurrentCity(user_city);
	    userDetails.setUserAcademic(s);
		//userDetails.setAnual_ctc(Long.parseLong(pRequest.getParameter("ctc")));
		//userDetails.setTotal_experience(Integer.parseInt(pRequest.getParameter("work_experience")));

		try {

			UserDetails u = userService.create(userDetails);
			System.out.println("first");
			//int id = userService.userId(mailId);
			System.out.println("s");
			/*if (id != 0) {

				//userService.update(id, userAcademic);
				System.out.println("t");
			}
*/
		} catch (Exception e) {
			System.out.print(e);
		}
		return new ModelAndView("userApplication");

	}

	@RequestMapping("application")
	public ModelAndView viewRedirect(HttpServletRequest pRequest,
			HttpServletResponse pResponse) throws ServletException, IOException {

		String choice = pRequest.getParameter("submit").trim();
		String luserId=pRequest.getParameter("selectedUser");
	int id=0;
		if(luserId!=null)
		 id = Integer.parseInt(luserId);

		System.out.println(id);

		if (choice.equals("Add")) {
			return new ModelAndView("userApplication");
		}

		if (choice.equals("Edit")) {

			List<UserDetails> userList = userService.getUserDetails();
			List userLi = new ArrayList();
			UserDetails userDetails;
			if (userList != null) {
				Iterator<UserDetails> user = userList.iterator();
				while (user.hasNext()) {
					userDetails = user.next();
				
					if(userDetails.getId()==id){
						return new ModelAndView("editApplication","user",userDetails);			
					}
					
				}

			}

			

		}
		return new ModelAndView("logIn");
	}
	
	@RequestMapping("editData")
	public ModelAndView editApplication(HttpServletRequest pRequest,HttpServletResponse pResponse)throws ServletException,IOException{
	
		
		
		return null;
	}
	
	

}
