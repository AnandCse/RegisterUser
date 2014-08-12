package com.user.bean;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "experienceDBEx")
public class WorkingExperience {

	@Id
	@GeneratedValue
	private int id;

	String a_organization;
	String a_desgination;
	String a_now;
	String a_fr_date;
	String a_to_date;

	String b_organization;
	String b_desgination;
	String b_now;
	String b_fr_date;
	String b_to_date;

	@ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "award_id")
	private Set<AwardsAndAchievments> awards;

	public Set<AwardsAndAchievments> getAwards() {
		return awards;
	}

	public void setAwards(Set<AwardsAndAchievments> awards) {
		this.awards = awards;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getA_organization() {
		return a_organization;
	}

	public void setA_organization(String a_organization) {
		this.a_organization = a_organization;
	}

	public String getA_desgination() {
		return a_desgination;
	}

	public void setA_desgination(String a_desgination) {
		this.a_desgination = a_desgination;
	}

	public String getA_now() {
		return a_now;
	}

	public void setA_now(String a_now) {
		this.a_now = a_now;
	}

	public String getA_fr_date() {
		return a_fr_date;
	}

	public void setA_fr_date(String a_fr_date) {
		this.a_fr_date = a_fr_date;
	}

	public String getA_to_date() {
		return a_to_date;
	}

	public void setA_to_date(String a_to_date) {
		this.a_to_date = a_to_date;
	}

	public String getB_organization() {
		return b_organization;
	}

	public void setB_organization(String b_organization) {
		this.b_organization = b_organization;
	}

	public String getB_desgination() {
		return b_desgination;
	}

	public void setB_desgination(String b_desgination) {
		this.b_desgination = b_desgination;
	}

	public String getB_now() {
		return b_now;
	}

	public void setB_now(String b_now) {
		this.b_now = b_now;
	}

	public String getB_fr_date() {
		return b_fr_date;
	}

	public void setB_fr_date(String b_fr_date) {
		this.b_fr_date = b_fr_date;
	}

	public String getB_to_date() {
		return b_to_date;
	}

	public void setB_to_date(String b_to_date) {
		this.b_to_date = b_to_date;
	}

}
