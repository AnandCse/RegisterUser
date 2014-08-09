package com.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.user.bean.User;
import com.user.bean.UserDetails;
import com.user.db.AbstractDB;


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
		System.out.print(userDetails.getUserName()+"Hai"+userDetails);
		return userDataDB.merge(userDetails);
	}

}
