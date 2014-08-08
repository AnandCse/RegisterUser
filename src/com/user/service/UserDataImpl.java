package com.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.bean.UserDetails;
import com.user.db.UserDataDB;

@Service("userData")
public class UserDataImpl {

	@Autowired
	private UserDataDB userDataDB;
	
	public UserDetails create(UserDetails userDetails){
		return userDataDB.merge(userDetails);
	}
}
