package com.user.bean;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Service;

@Entity
@Service("userDetails")
@Table(name = "userDBExx")
public class UserDetails {
	@Id
	@GeneratedValue
	private int id;
	private String userName;
	private String gender;
	private String dob;
	private String fatherName;
	private String motherName;
	private String nationality;
	private String mailingAddress;
	private long mobileNumber;
	private String emailId;
	private String maritalStatus;
	private String fatherJob;
	private String motherJob;
	private long landlineNumber;
	private String photo_details;
	private String application_name;
	private String currentCity;
	private String total_experience;
	private String anual_ctc;
	private Date date;
	

	@OneToMany(fetch = FetchType.EAGER,cascade={CascadeType.MERGE,CascadeType.REMOVE,CascadeType.PERSIST})
	@JoinColumn(name = "user_id")
	private Set<UserAcademic> userAcademic;

	
	
	
	
	/*	public UserAcademic getUserAcademic() {
		return userAcademic;
	}

	public void setUserAcademic(UserAcademic userAcademic) {
		this.userAcademic = userAcademic;
	}
*/
	

	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public String getMailingAddress() {
		return mailingAddress;
	}

	
	/*public Map<String, UserAcademic> getUserAcademic() {
		return userAcademic;
	}


	public void setUserAcademic(Map<String, UserAcademic> userAcademic) {
		System.out.print(userAcademic);
		this.userAcademic = userAcademic;
	}
*/

	
	
	public void setMailingAddress(String mailingAddress) {
		this.mailingAddress = mailingAddress;
	}

	
	public String getTotal_experience() {
		return total_experience;
	}


	public void setTotal_experience(String total_experience) {
		this.total_experience = total_experience;
	}


	public String getAnual_ctc() {
		return anual_ctc;
	}


	public void setAnual_ctc(String anual_ctc) {
		this.anual_ctc = anual_ctc;
	}


	public Set<UserAcademic> getUserAcademic() {
		return userAcademic;
	}


	public void setUserAcademic(Set<UserAcademic> userAcademic) {
		this.userAcademic = userAcademic;
	}


	public long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getFatherName() {
		return fatherName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getFatherJob() {
		return fatherJob;
	}

	public void setFatherJob(String fatherJob) {
		this.fatherJob = fatherJob;
	}

	public String getMotherJob() {
		return motherJob;
	}

	public void setMotherJob(String motherJob) {
		this.motherJob = motherJob;
	}

	public long getLandlineNumber() {
		return landlineNumber;
	}

	public void setLandlineNumber(long landlineNumber) {
		this.landlineNumber = landlineNumber;
	}

	public String getPhoto_details() {
		return photo_details;
	}

	public void setPhoto_details(String photo_details) {
		this.photo_details = photo_details;
	}

	public String getApplication_name() {
		return application_name;
	}

	public void setApplication_name(String application_name) {
		this.application_name = application_name;
	}

	public String getCurrentCity() {
		return currentCity;
	}

	public void setCurrentCity(String currentCity) {
		this.currentCity = currentCity;
	}

}
