package com.user.service;

import java.util.List;

import com.user.bean.User;
import com.user.bean.UserDetails;

public interface UserService {

	User create(User user);
	List<User> getUser();
	UserDetails create(UserDetails userDetails);
}
