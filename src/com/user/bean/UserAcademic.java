package com.user.bean;

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
@Service("userAcademy")
@Table(name = "academyDBExx")
public class UserAcademic {
	@Id
	@GeneratedValue
	private int academic_id;

/*	String key_name;
	
	public String getKey_name() {
		return key_name;
	}
	public void setKey_name(String key_name) {
		this.key_name = key_name;
	}
	String degree;
	String discipline;
	String school;
	String university;
	String year;
	String cgpa;
	public int getAcademic_id() {
		return academic_id;
	}
	public void setAcademic_id(int academic_id) {
		this.academic_id = academic_id;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getDiscipline() {
		return discipline;
	}
	public void setDiscipline(String discipline) {
		this.discipline = discipline;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getCgpa() {
		return cgpa;
	}
	public void setCgpa(String cgpa) {
		this.cgpa = cgpa;
	}
*/	
	String pg_degree;
	String pg_discipline;
	String pg_school;
	String pg_university;
	String pg_year;
	String pg_cgpa;
	
	String ug_degree;
	String ug_discipline;
	String ug_school;
	String ug_university;
	String ug_year;
	String ug_cgpa;
	
	String hs_degree;
	String hs_discipline;
	String hs_school;
	String hs_university;
	String hs_year;
	String hs_cgpa;
	
	String s_degree;
	String s_discipline;
	String s_school;
	String s_university;
	String s_year;
	String s_cgpa;
	
	@OneToMany(fetch = FetchType.EAGER, cascade={CascadeType.MERGE,CascadeType.REMOVE,CascadeType.PERSIST})
	@JoinColumn(name = "ex_id")
	private Set<WorkingExperience> work_experience;

	public Set<WorkingExperience> getWork_experience() {
		return work_experience;
	}

	public void setWork_experience(Set<WorkingExperience> work_experience) {
		this.work_experience = work_experience;
	}

	public int getAcademic_id() {
		return academic_id;
	}

	public void setAcademic_id(int academic_id) {
		this.academic_id = academic_id;
	}

	public String getPg_degree() {
		return pg_degree;
	}

	public void setPg_degree(String pg_degree) {
		this.pg_degree = pg_degree;
	}

	public String getPg_discipline() {
		return pg_discipline;
	}

	public void setPg_discipline(String pg_discipline) {
		this.pg_discipline = pg_discipline;
	}

	public String getPg_school() {
		return pg_school;
	}

	public void setPg_school(String pg_school) {
		this.pg_school = pg_school;
	}

	public String getPg_university() {
		return pg_university;
	}

	public void setPg_university(String pg_university) {
		this.pg_university = pg_university;
	}

	public String getPg_year() {
		return pg_year;
	}

	public void setPg_year(String pg_year) {
		this.pg_year = pg_year;
	}

	public String getPg_cgpa() {
		return pg_cgpa;
	}

	public void setPg_cgpa(String pg_cgpa) {
		this.pg_cgpa = pg_cgpa;
	}

	public String getUg_degree() {
		return ug_degree;
	}

	public void setUg_degree(String ug_degree) {
		this.ug_degree = ug_degree;
	}

	public String getUg_discipline() {
		return ug_discipline;
	}

	public void setUg_discipline(String ug_discipline) {
		this.ug_discipline = ug_discipline;
	}

	public String getUg_school() {
		return ug_school;
	}

	public void setUg_school(String ug_school) {
		this.ug_school = ug_school;
	}

	public String getUg_university() {
		return ug_university;
	}

	public void setUg_university(String ug_university) {
		this.ug_university = ug_university;
	}

	public String getUg_year() {
		return ug_year;
	}

	public void setUg_year(String ug_year) {
		this.ug_year = ug_year;
	}

	public String getUg_cgpa() {
		return ug_cgpa;
	}

	public void setUg_cgpa(String ug_cgpa) {
		this.ug_cgpa = ug_cgpa;
	}

	public String getHs_degree() {
		return hs_degree;
	}

	public void setHs_degree(String hs_degree) {
		this.hs_degree = hs_degree;
	}

	public String getHs_discipline() {
		return hs_discipline;
	}

	public void setHs_discipline(String hs_discipline) {
		this.hs_discipline = hs_discipline;
	}

	public String getHs_school() {
		return hs_school;
	}

	public void setHs_school(String hs_school) {
		this.hs_school = hs_school;
	}

	public String getHs_university() {
		return hs_university;
	}

	public void setHs_university(String hs_university) {
		this.hs_university = hs_university;
	}

	public String getHs_year() {
		return hs_year;
	}

	public void setHs_year(String hs_year) {
		this.hs_year = hs_year;
	}

	public String getHs_cgpa() {
		return hs_cgpa;
	}

	public void setHs_cgpa(String hs_cgpa) {
		this.hs_cgpa = hs_cgpa;
	}

	public String getS_degree() {
		return s_degree;
	}

	public void setS_degree(String s_degree) {
		this.s_degree = s_degree;
	}

	public String getS_discipline() {
		return s_discipline;
	}

	public void setS_discipline(String s_discipline) {
		this.s_discipline = s_discipline;
	}

	public String getS_school() {
		return s_school;
	}

	public void setS_school(String s_school) {
		this.s_school = s_school;
	}

	public String getS_university() {
		return s_university;
	}

	public void setS_university(String s_university) {
		this.s_university = s_university;
	}

	public String getS_year() {
		return s_year;
	}

	public void setS_year(String s_year) {
		this.s_year = s_year;
	}

	public String getS_cgpa() {
		return s_cgpa;
	}

	public void setS_cgpa(String s_cgpa) {
		this.s_cgpa = s_cgpa;
	}

/*	public Map<String, String> getAcademic() {
		return academic;
	}

	public void setAcademic(Map<String, String> academic) {
		this.academic = academic;
	}

*/
}
