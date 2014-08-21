package com.user.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String viewLogin(Map<String, Object> model) {
		User user = new User();
		model.put("userForm", user);
		return "LoginForm";
	}

	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public String doLogin(@Valid @ModelAttribute("userForm") User userForm,
			BindingResult result, Map<String, Object> model) {

		if (result.hasErrors()) {
			return "LoginForm";
		}

		return "LoginSuccess";
	}

	@RequestMapping("/fileUpload")
	public ModelAndView uploadMultipart(HttpServletRequest request,
			HttpServletResponse response, @RequestParam("name") String name,
			@RequestParam("file") MultipartFile file) {

		System.out.print("Hai" + file.isEmpty());

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				String rootPath = System.getProperty("catalina.home");
				System.out.println(rootPath);
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();
				System.out.println(File.separator);
				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + name);
				System.out.println(dir.getAbsolutePath() + File.separator
						+ name);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			} catch (Exception e) {
				System.out.print(e);
			}
		}

		return new ModelAndView("application");
	}

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
            boolean token=false;
			List userList=userService.getUser();
			Iterator iter=userList.iterator();
			while(iter.hasNext()){
				User user=(User)iter.next();
				if(user.getMailid().equalsIgnoreCase(mailId)){
					msg="User is already exists";
					token=true;
					return new ModelAndView("userForm","message",msg);
				}
			}
			
			if(!token){
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
			return new ModelAndView("userForm");
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

	@RequestMapping(value = "/addData", method = RequestMethod.POST)
	public ModelAndView insertApplicationUserData(HttpServletRequest pRequest,
			HttpServletResponse pResponse,
			@RequestParam("file") MultipartFile file) throws ServletException,
			IOException, ParseException {
		System.out.println("Hi");
		String id = pRequest.getParameter("userId");
		String userName = pRequest.getParameter("userName");
		String gender = pRequest.getParameter("sex");
		String dob = pRequest.getParameter("date");
		String father_name = pRequest.getParameter("fatherName");
		String mother_name = pRequest.getParameter("motherName");
		String nationality = pRequest.getParameter("nationality");
		String mailingAddress = pRequest.getParameter("mailingAddress");
		String mailId = pRequest.getParameter("mailId");
		String mb_num = pRequest.getParameter("mobileNumber");
		// long mob_num = Long.parseLong(mb_num);
		String maritialStatus = pRequest.getParameter("status");
		String fatherJob = pRequest.getParameter("father'sJob");
		String motherJob = pRequest.getParameter("mother'sJob");
		String landNum = pRequest.getParameter("landLineNumber");
		// long landLineNumber = Long.parseLong(landNum);
		String photo_details = file.getOriginalFilename();
		System.out.println(photo_details);
		System.out.println(photo_details);
		String application_name = pRequest.getParameter("app_name");
		String user_city = pRequest.getParameter("current_city");

		String pg_degree = pRequest.getParameter("pg_degree");
		String pg_cgpa = pRequest.getParameter("pg_percentage");
		String pg_discipline = pRequest.getParameter("pg_discipline");
		String pg_school = pRequest.getParameter("pg_school");
		String pg_university = pRequest.getParameter("pg_university");
		String pg_year = pRequest.getParameter("pg_passedOut");

		String ug_degree = pRequest.getParameter("ug_degree");
		String ug_cgpa = pRequest.getParameter("ug_percentage");
		String ug_discipline = pRequest.getParameter("ug_discipline");
		String ug_school = pRequest.getParameter("ug_school");
		String ug_university = pRequest.getParameter("ug_university");
		String ug_year = pRequest.getParameter("ug_passedOut");

		String hs_degree = pRequest.getParameter("hs_degree");
		String hs_cgpa = pRequest.getParameter("hs_percentage");
		String hs_discipline = pRequest.getParameter("hs_discipline");
		String hs_school = pRequest.getParameter("hs_school");
		String hs_university = pRequest.getParameter("hs_university");
		String hs_year = pRequest.getParameter("hs_passedOut");

		String s_degree = pRequest.getParameter("s_degree");
		String s_cgpa = pRequest.getParameter("s_percentage");
		String s_discipline = pRequest.getParameter("s_discipline");
		String s_school = pRequest.getParameter("s_school");
		String s_university = pRequest.getParameter("s_university");
		String s_year = pRequest.getParameter("s_passedOut");

		
		if(id!=null){
			int userId=Integer.parseInt(id);
			if(photo_details==""||photo_details==null||photo_details.equals(null)){
				List u=userService.getUserDetails();
				Iterator iter=u.iterator();
				UserDetails use=null;
				while(iter.hasNext()){
					use=(UserDetails)iter.next();
					if(use.getId()==userId){
						photo_details=use.getPhoto_details();
					
					System.out.println(use.getPhoto_details());}
				}
			}
		}
		
		String msg = null;

		if (StringUtils.isBlank(userName)) {
			msg = "Please Enter User Name";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(dob)) {
			msg = "Please Enter your Date of Birth";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(father_name)) {
			msg = "Please Enter your Father name";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(mother_name)) {
			msg = "Please Enter your Mother Name";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(nationality)) {
			msg = "Please Enter your Nation Name";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(mailId)) {
			msg = "Please Enter your mailId";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(mailingAddress)) {
			msg = "Please Enter your address";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(landNum)) {
			msg = "Please Enter your Land line number";
			return new ModelAndView("userApplication", "message", msg);
		} else if (photo_details == null) {
			msg = "Please Upload ur photo";
			return new ModelAndView("userApplication", "message", msg);

		} else if (StringUtils.isBlank(application_name)) {
			msg = "Please enter application name";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(user_city)) {
			msg = "Please enter your city";
			return new ModelAndView("userApplication", "message", msg);
		}

		else if (!StringUtils.isBlank(mailId)) {
			String regex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
			Boolean token = mailId.matches(regex);
			if (!token) {
				msg = "EmailId Format is Wrong";
				return new ModelAndView("userApplication", "message", msg);
			} else if (!NumberUtils.isNumber(mb_num)) {
				msg = "Please enter number only";
				return new ModelAndView("userApplication", "message", msg);

			} else if (!NumberUtils.isNumber(landNum)) {
				msg = "Please enter number only";
				return new ModelAndView("userApplication", "message", msg);

			}
		}

		// Academic

		if (StringUtils.isBlank(ug_degree)) {
			msg = "Please Enter Your Undergraduate Degree";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(ug_cgpa)) {
			msg = "Please Enter Your Undergraduate Percentage";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(ug_discipline)) {
			msg = "Please Enter Your Undergraduate Discipline";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(ug_school)) {
			msg = "Please Enter Your College Name";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(ug_university)) {
			msg = "Please Enter Your University Name";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(ug_year)) {
			msg = "Please Enter Your PassedOut Year";
			return new ModelAndView("userApplication", "message", msg);
		} else if (!NumberUtils.isNumber(ug_year)) {
			msg = "Please enter number only in year";
			return new ModelAndView("userApplication", "message", msg);

		}

		if (StringUtils.isBlank(hs_degree)) {
			msg = "Please Enter Your Higher Secondary field";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(hs_cgpa)) {
			msg = "Please Enter Your Higher Secondary Percentage";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(hs_discipline)) {
			msg = "Please Enter Your Higher Secondary Discipline";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(hs_school)) {
			msg = "Please Enter Your Higher Secondary School Name";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(hs_university)) {
			msg = "Please Enter Your Higher Secondary Board Name";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(hs_year)) {
			msg = "Please Enter Your Higher Secondary PassedOut Year";
			return new ModelAndView("userApplication", "message", msg);
		} else if (!NumberUtils.isNumber(hs_year)) {
			msg = "Please enter number only in Higher Secondary PassedOut Year";
			return new ModelAndView("userApplication", "message", msg);

		}

		if (StringUtils.isBlank(s_degree)) {
			msg = "Please Enter Your  SSLC field";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(s_cgpa)) {
			msg = "Please Enter Your SSLC Percentage";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(s_discipline)) {
			msg = "Please Enter Your SSLC Discipline";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(s_school)) {
			msg = "Please Enter Your SSLC School Name";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(s_university)) {
			msg = "Please Enter Your SSLC Board Name";
			return new ModelAndView("userApplication", "message", msg);
		} else if (StringUtils.isBlank(s_year)) {
			msg = "Please Enter Your SSLC PassedOut Year";
			return new ModelAndView("userApplication", "message", msg);
		} else if (!NumberUtils.isNumber(s_year)) {
			msg = "Please enter number only in SSLC PassedOut Year";
			return new ModelAndView("userApplication", "message", msg);

		}

		
		
		
		long mob_num = Long.parseLong(mb_num);
		long landLineNumber = Long.parseLong(landNum);
		ApplicationContext info = new ClassPathXmlApplicationContext("app.xml");
		UserDetails userDetails = (UserDetails) info.getBean("userDetails");
		UserAcademic userAcademic = (UserAcademic) info.getBean("userAcademic");
		WorkingExperience ex = (WorkingExperience) info
				.getBean("work_experience");

		AwardsAndAchievments awards = (AwardsAndAchievments) info
				.getBean("awards_achievments");

		userAcademic.setPg_cgpa(pg_cgpa);
		userAcademic.setPg_degree(pg_degree);
		userAcademic.setPg_discipline(pg_discipline);
		userAcademic.setPg_school(pg_school);
		userAcademic.setPg_university(pg_university);
		userAcademic.setPg_year(pg_year);

		userAcademic.setUg_cgpa(ug_cgpa);
		userAcademic.setUg_degree(ug_degree);
		userAcademic.setUg_discipline(ug_discipline);
		userAcademic.setUg_school(ug_school);
		userAcademic.setUg_university(ug_university);
		userAcademic.setUg_year(ug_year);

		userAcademic.setHs_cgpa(hs_cgpa);
		userAcademic.setHs_degree(hs_degree);
		userAcademic.setHs_discipline(hs_discipline);
		userAcademic.setHs_school(hs_school);
		userAcademic.setHs_university(hs_university);
		userAcademic.setHs_year(hs_year);

		userAcademic.setS_cgpa(s_cgpa);
		userAcademic.setS_degree(s_degree);
		userAcademic.setS_discipline(s_discipline);
		userAcademic.setS_school(s_school);
		userAcademic.setS_university(s_university);
		userAcademic.setS_year(s_year);

		/*
		 * String msg=null;
		 * 
		 * if (StringUtils.isBlank(userName)) { msg = "Please Enter User Name";
		 * return new ModelAndView("userApplication", "message", msg); } else if
		 * (StringUtils.isBlank(dob)) { msg = "Please Enter your Date of Birth";
		 * return new ModelAndView("userApplication", "message", msg); } else if
		 * (StringUtils.isBlank(father_name)) { msg =
		 * "Please Enter your Father name"; return new
		 * ModelAndView("userApplication", "message", msg); } else if
		 * (StringUtils.isBlank(mother_name)) { msg =
		 * "Please Enter your Mother Name"; return new
		 * ModelAndView("userApplication", "message", msg); } else if
		 * (StringUtils.isBlank(nationality)) { msg =
		 * "Please Enter your Nation Name"; return new
		 * ModelAndView("userApplication", "message", msg); } else if
		 * (StringUtils.isBlank(mailId)) { msg = "Please Enter your mailId";
		 * return new ModelAndView("userApplication", "message", msg); }else if
		 * (StringUtils.isBlank(mailingAddress)) { msg =
		 * "Please Enter your address"; return new
		 * ModelAndView("userApplication", "message", msg); }else
		 * if(StringUtils.isBlank(landNum)){ msg =
		 * "Please Enter your Land line number"; return new
		 * ModelAndView("userApplication", "message", msg); }else
		 * if(photo_details==null){ msg = "Please Upload ur photo"; return new
		 * ModelAndView("userApplication", "message", msg);
		 * 
		 * }else if(StringUtils.isBlank(application_name)){
		 * msg="Please enter application name"; return new
		 * ModelAndView("userApplication","message",msg); }else
		 * if(StringUtils.isBlank(user_city)){ msg="Please enter your city";
		 * return new ModelAndView("userApplication","message",msg); }
		 * 
		 * 
		 * 
		 * else if (!StringUtils.isBlank(mailId)) { String regex =
		 * "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$"; Boolean token =
		 * mailingAddress.matches(regex); if (!token) { msg =
		 * "EmailId Format is Wrong"; return new ModelAndView("userApplication",
		 * "message", msg); } else if (!NumberUtils.isNumber(mb_num)) { msg =
		 * "Please enter number only"; return new
		 * ModelAndView("userApplication", "message", msg);
		 * 
		 * }else if(!NumberUtils.isNumber(landNum)){ msg =
		 * "Please enter number only"; return new
		 * ModelAndView("userApplication", "message", msg);
		 * 
		 * } }
		 */

		/*
		 * long mob_num = Long.parseLong(mb_num); long landLineNumber =
		 * Long.parseLong(landNum); ApplicationContext info = new
		 * ClassPathXmlApplicationContext("app.xml"); UserDetails userDetails =
		 * (UserDetails) info.getBean("userDetails"); UserAcademic userAcademic
		 * = (UserAcademic) info.getBean("userAcademic"); WorkingExperience ex =
		 * (WorkingExperience) info .getBean("work_experience");
		 * 
		 * AwardsAndAchievments awards = (AwardsAndAchievments) info
		 * .getBean("awards_achievments");
		 * 
		 * userAcademic.setPg_cgpa(pRequest.getParameter("pg_percentage"));
		 * userAcademic.setPg_degree(pRequest.getParameter("pg_degree"));
		 * userAcademic
		 * .setPg_discipline(pRequest.getParameter("pg_discipline"));
		 * userAcademic.setPg_school(pRequest.getParameter("pg_school"));
		 * userAcademic
		 * .setPg_university(pRequest.getParameter("pg_university"));
		 * userAcademic.setPg_year(pRequest.getParameter("pg_passedOut"));
		 * 
		 * userAcademic.setUg_cgpa(pRequest.getParameter("ug_percentage"));
		 * userAcademic.setUg_degree(pRequest.getParameter("ug_degree"));
		 * userAcademic
		 * .setUg_discipline(pRequest.getParameter("ug_discipline"));
		 * userAcademic.setUg_school(pRequest.getParameter("ug_school"));
		 * userAcademic
		 * .setUg_university(pRequest.getParameter("ug_university"));
		 * userAcademic.setUg_year(pRequest.getParameter("ug_passedOut"));
		 * 
		 * userAcademic.setHs_cgpa(pRequest.getParameter("hs_percentage"));
		 * userAcademic.setHs_degree(pRequest.getParameter("hs_degree"));
		 * userAcademic
		 * .setHs_discipline(pRequest.getParameter("hs_discipline"));
		 * userAcademic.setHs_school(pRequest.getParameter("hs_school"));
		 * userAcademic
		 * .setHs_university(pRequest.getParameter("hs_university"));
		 * userAcademic.setHs_year(pRequest.getParameter("hs_passedOut"));
		 * 
		 * userAcademic.setS_cgpa(pRequest.getParameter("s_percentage"));
		 * userAcademic.setS_degree(pRequest.getParameter("s_degree"));
		 * userAcademic.setS_discipline(pRequest.getParameter("s_discipline"));
		 * userAcademic.setS_school(pRequest.getParameter("s_school"));
		 * userAcademic.setS_university(pRequest.getParameter("s_university"));
		 * userAcademic.setS_year(pRequest.getParameter("s_passedOut"));
		 */Set<UserAcademic> s = new HashSet<UserAcademic>();
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

		// Awards and Achevments

		awards.setAcademicHonors(pRequest.getParameter("academic_honors"));
		awards.setCh_academicHonors(pRequest.getParameter("ch_academic_honors"));
		awards.setCh_extracurricular(pRequest
				.getParameter("ch_extracurricular"));
		awards.setOthers(pRequest.getParameter("others"));
		awards.setExtracurricular(pRequest.getParameter("extracurricular"));

		Set<AwardsAndAchievments> awards_ach = new HashSet<AwardsAndAchievments>();
		awards_ach.add(awards);
         
		
		
		//ex.setAwards(awards_ach);

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

		ex.setAnual_ctc(pRequest.getParameter("ctc"));
		ex.setTotal_experience(pRequest.getParameter("work_experience"));
		
		Set<WorkingExperience> w_e = new HashSet<WorkingExperience>();

		w_e.add(ex);
		
		awards.setWork_experience(w_e);
		userAcademic.setAwards(awards_ach);
		
		// Awards and Achevments

		/*awards.setAcademicHonors(pRequest.getParameter("academic_honors"));
		awards.setCh_academicHonors(pRequest.getParameter("ch_academic_honors"));
		awards.setCh_extracurricular(pRequest
				.getParameter("ch_extracurricular"));
		awards.setOthers(pRequest.getParameter("others"));
		awards.setExtracurricular(pRequest.getParameter("extracurricular"));

		Set<AwardsAndAchievments> awards_ach = new HashSet<AwardsAndAchievments>();
		awards_ach.add(awards);

		ex.setAwards(awards_ach);
*/
		
		
		
/*		Set<WorkingExperience> w_e = new HashSet<WorkingExperience>();

		w_e.add(ex);
*/
		
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
		userDetails.setApplication_name(application_name);
		userDetails.setCurrentCity(user_city);
		userDetails.setUserAcademic(s);
		userDetails.setPhoto_details(photo_details);
		//userDetails.setAnual_ctc(pRequest.getParameter("ctc"));
		userDetails.setDate(new Date());
		//userDetails.setTotal_experience(pRequest.getParameter("work_experience"));

		try {

			if (id == null) {
				UserDetails u = userService.create(userDetails);

				if (!file.isEmpty()) {
					byte[] b = file.getBytes();
					String root = System.getProperty("catalina.home");
					File f = null;
					f = new File(root + File.separator + "image");
					System.out.println(root + File.separator + u.getId()
							+ photo_details + "id22");

					if (!f.exists()) {
						f.mkdirs();
					}
					File ne = new File(f.getAbsolutePath() + File.separator
							+ u.getPhoto_details() + u.getId());
					BufferedOutputStream str = new BufferedOutputStream(
							new FileOutputStream(ne));
					str.write(b);
					str.close();

				}
			} else {
				int userId = Integer.parseInt(id);
				userDetails.setId(userId);
				UserDetails u = userService.create(userDetails);
				byte[] b = file.getBytes();
				String root = System.getProperty("catalina.home");
				File f = null;
				f = new File(root + File.separator + "image");
				System.out.println(root + File.separator + u.getId()
						+ photo_details + "id22");

				if (!f.exists()) {
					f.mkdirs();
				}
				File ne = new File(f.getAbsolutePath() + File.separator
						+ u.getPhoto_details() + userDetails.getId());
				BufferedOutputStream str = new BufferedOutputStream(
						new FileOutputStream(ne));
				str.write(b);
				str.close();

			}
			List<UserDetails> user = userService.getUserDetails();
			return new ModelAndView("application", "user", user);
		} catch (Exception e) {
			System.out.print(e);
		}
		return new ModelAndView("application");

	}

	@RequestMapping(value = "/application", method = RequestMethod.POST)
	public ModelAndView viewRedirect(HttpServletRequest pRequest,
			HttpServletResponse pResponse) throws ServletException, IOException {

		String choice = pRequest.getParameter("submit");
		String luserId = pRequest.getParameter("id");
		System.out.println(luserId);
		int id = 0;
		if (luserId != null)
			id = Integer.parseInt(luserId);

		System.out.println(id);

		if (choice.equals("Click to Add New Application")) {
			return new ModelAndView("userApplication");
		}

		if (choice.equals("Edit")) {

			List<UserDetails> userList = userService.getUserDetails();
			// List userLi = new ArrayList();
			UserDetails userDetails;
			if (userList != null) {
				Iterator<UserDetails> user = userList.iterator();
				while (user.hasNext()) {
					userDetails = user.next();

					if (userDetails.getId() == id) {

						/*
						 * String name=userDetails.getPhoto_details();
						 * //pRequest.setAttribute("image", name);
						 * System.out.print(name);
						 * 
						 * File f=new File(name);
						 * System.out.println("FilePath"+f.getAbsolutePath());
						 * String root=System.getProperty("catalina.home");
						 * System.out.println(root);
						 * 
						 * System.out.println(root+File.separator+"image"+name+id
						 * ); String url=root+File.separator+name+id; File
						 * f1=new File(url); System.out.println(f1);
						 * FileInputStream fin=new FileInputStream(f1);
						 * 
						 * pRequest.setAttribute("url", url);
						 * 
						 * System.out.print(fin);
						 */return new ModelAndView("editApplication", "user",
								userDetails);
					}

				}

			}

		}

		/*
		 * if(choice.equals("Delete")){ List<UserDetails> userList =
		 * userService.getUserDetails(); // List userLi = new ArrayList();
		 * UserDetails userDetails; if (userList != null) {
		 * Iterator<UserDetails> user = userList.iterator(); while
		 * (user.hasNext()) { userDetails = user.next();
		 * 
		 * if (userDetails.getId() == id) { userService.remove(userDetails);
		 * return new ModelAndView("editApplication", "user", userDetails); }
		 * 
		 * }
		 * 
		 * }
		 * 
		 * }
		 */

		return new ModelAndView("logIn");
	}

}
