package com.user.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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

import com.user.bean.User;
import com.user.bean.UserAcademic;
import com.user.bean.UserDetails;
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
				return new ModelAndView("userApplication");
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
		
		Map<String, UserAcademic> academicMap = new HashMap<String, UserAcademic>();
		userAcademic.setDegree(pRequest.getParameter("pg_degree"));
		userAcademic.setCgpa(pRequest.getParameter("pg_percentage"));
		userAcademic.setDiscipline(pRequest.getParameter("pg_discipline"));
		userAcademic.setSchool(pRequest.getParameter("pg_school"));
		userAcademic.setUniversity("pg_university");
		userAcademic.setYear(pRequest.getParameter("pg_percentage"));
		userAcademic.setKey_name("PostGraduate");
		academicMap.put("PostGraduate", userAcademic);
		
		userAcademic.setDegree(pRequest.getParameter("ug_degree"));
		userAcademic.setCgpa(pRequest.getParameter("ug_percentage"));
		userAcademic.setDiscipline(pRequest.getParameter("ug_discipline"));
		userAcademic.setSchool(pRequest.getParameter("ug_school"));
		userAcademic.setUniversity("ug_university");
		userAcademic.setYear(pRequest.getParameter("ug_percentage"));
		userAcademic.setKey_name("UnderGraduate");
		academicMap.put("UnderGraduate", userAcademic);
		
		userAcademic.setDegree(pRequest.getParameter("hs_degree"));
		userAcademic.setCgpa(pRequest.getParameter("hs_percentage"));
		userAcademic.setDiscipline(pRequest.getParameter("hs_discipline"));
		userAcademic.setSchool(pRequest.getParameter("hs_school"));
		userAcademic.setUniversity("hs_university");
		userAcademic.setYear(pRequest.getParameter("hs_percentage"));
		userAcademic.setKey_name("HigherSecondary");
		academicMap.put("HigherSecondary", userAcademic);
		
		
		
		userAcademic.setDegree(pRequest.getParameter("s_degree"));
		userAcademic.setCgpa(pRequest.getParameter("s_percentage"));
		userAcademic.setDiscipline(pRequest.getParameter("s_discipline"));
		userAcademic.setSchool(pRequest.getParameter("s_school"));
		userAcademic.setUniversity("s_university");
		userAcademic.setYear(pRequest.getParameter("s_percentage"));
		userAcademic.setKey_name("SSLC");
		academicMap.put("SSLC", userAcademic);
		
		
        //Working Experience
        /*String a_organization=pRequest.getParameter("a_organization");
        String a_desgination=pRequest.getParameter("a_designation");
        String a_now=pRequest.getParameter("a_nature_of_work");
        String a_fr_date=pRequest.getParameter("a_from_date");
        String a_to_date=pRequest.getParameter("a_to_date");
        
        String b_organization=pRequest.getParameter("b_organization");
        String b_desgination=pRequest.getParameter("b_designation");
        String b_now=pRequest.getParameter("b_nature_of_work");
        String b_fr_date=pRequest.getParameter("b_from_date");
        String b_to_date=pRequest.getParameter("b_to_date");
        
        */
        
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
		userDetails.setUserAcademic(academicMap);
		
		
		
		try {
			
			UserDetails u = userService.create(userDetails);
			System.out.println("first");
			int id=userService.userId(mailId);
			System.out.println("s");
			if(id!=0){
			
				userService.update(id, academicMap);
				System.out.println("t");
			}
			
            
		} catch (Exception e) {
			System.out.print(e);
		}
		return new ModelAndView("userApplication");

	}

}
