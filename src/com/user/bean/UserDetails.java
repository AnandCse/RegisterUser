package com.user.bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Service;

@Entity
@Service("userDetails")
@Table(name = "userDetails")
public class UserDetails {
	@Id
	@GeneratedValue
	private int id;
	private String userName;
	private String gender;
	private Date dob;
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

	public String getMailingAddress() {
		return mailingAddress;
	}

	public void setMailingAddress(String mailingAddress) {
		this.mailingAddress = mailingAddress;
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

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getFatherName() {
		return fatherName;
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
