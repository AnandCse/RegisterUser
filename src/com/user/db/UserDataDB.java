package com.user.db;

import java.util.List;

import org.springframework.stereotype.Service;

import com.user.bean.UserDetails;
@Service("userDataDB")
public class UserDataDB extends AbstractDB<UserDetails>{

	@Override
	public
	List<UserDetails> getUser() {
		// TODO Auto-generated method stub
		return null;
	}

}
