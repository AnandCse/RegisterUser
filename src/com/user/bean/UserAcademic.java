package com.user.bean;

import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="academic")
public class UserAcademic {
    @Id @GeneratedValue
	private int academic_id;
    
    @OneToMany  
    @JoinColumn(name ="id")  
    private UserDetails user; 
    
	private Map<String,String> academic;
	
	public int getAcademic_id() {
		return academic_id;
	}
	public void setAcademic_id(int academic_id) {
		this.academic_id = academic_id;
	}
	public UserDetails getUser() {
		return user;
	}
	public void setUser(UserDetails user) {
		this.user = user;
	}
	public Map<String, String> getAcademic() {
		return academic;
	}
	public void setAcademic(Map<String, String> academic) {
		this.academic = academic;
	}
	
		
	
	
}
