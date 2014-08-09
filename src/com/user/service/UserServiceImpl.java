package com.user.service;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.user.bean.User;
import com.user.bean.UserAcademic;
import com.user.bean.UserDetails;
import com.user.db.AbstractDB;
import com.user.db.UserAcademyDB;


@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private AbstractDB<User> userDB;
	@Autowired
	private AbstractDB<UserDetails> userDataDB;
	
	
	
	@Transactional(readOnly = false)
	public User create(User user) {

		return userDB.merge(user);

	}
	
	public List<User> getUser(){
		return userDB.getUser();
		
	}
	@Transactional(readOnly = false)
	public UserDetails create(UserDetails userDetails){
		return userDataDB.merge(userDetails);
	}

	public Map upDate(Map userAcademy){
		return  null;
	}
	
	
	@Transactional(readOnly = false)
	public int userId(String mailId){
		
		List<UserDetails> userDetails=userDataDB.getUser();
		Iterator iter=userDetails.iterator();
		UserDetails userInfo;
		while(iter.hasNext()){
			userInfo=(UserDetails)iter.next();
   	        if((userInfo.getEmailId().trim()).equals(mailId)){
   	        	return userInfo.getId();
   	        }
		}
		
		return 0;
		
	}

	@Override
	@Transactional(readOnly = false)
	public UserAcademic update(int id, Map<String, UserAcademic> userAcademic) {
		// TODO Auto-generated method stub
		
		
		System.out.println("m.f");
		AbstractDB<UserAcademic> userAcademyDB=new UserAcademyDB();
		return userAcademyDB.update(id,userAcademic);
		
	}
	
	
	
	
}
