package com.user.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "awardsDBEx")
public class AwardsAndAchievments {

	@Id
	@GeneratedValue
	private int awards_id;
	private String academicHonors;
	private String ch_academicHonors;
	private String extracurricular;
	private String ch_extracurricular;
	private String others;

	public int getAwards_id() {
		return awards_id;
	}

	public void setAwards_id(int awards_id) {
		this.awards_id = awards_id;
	}

	public String getAcademicHonors() {
		return academicHonors;
	}

	public void setAcademicHonors(String academicHonors) {
		this.academicHonors = academicHonors;
	}

	public String getCh_academicHonors() {
		return ch_academicHonors;
	}

	public void setCh_academicHonors(String ch_academicHonors) {
		this.ch_academicHonors = ch_academicHonors;
	}

	public String getExtracurricular() {
		return extracurricular;
	}

	public void setExtracurricular(String extracurricular) {
		this.extracurricular = extracurricular;
	}

	public String getCh_extracurricular() {
		return ch_extracurricular;
	}

	public void setCh_extracurricular(String ch_extracurricular) {
		this.ch_extracurricular = ch_extracurricular;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}

}
