package com.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.user.bean.User;
import com.user.db.UserDB;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDB userDB;

	@Transactional(readOnly = false)
	public User create(User user) {

		return userDB.merge(user);

	}
	
	public List<User> getUser(){
		return userDB.getUser();
		
	}

}
