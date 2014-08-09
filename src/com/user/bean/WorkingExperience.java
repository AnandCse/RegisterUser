package com.user.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_experience")
public class WorkingExperience {

	@Id @GeneratedValue
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
    
	
}
