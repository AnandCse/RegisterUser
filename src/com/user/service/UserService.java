package com.user.service;

import java.util.List;
import java.util.Map;

import com.user.bean.User;
import com.user.bean.UserAcademic;
import com.user.bean.UserDetails;

public interface UserService {

	User create(User user);
	List<User> getUser();
	UserDetails create(UserDetails userDetails);
	public int userId(String mailId);
	UserAcademic update(int id,Map<String,UserAcademic> userAcademic);
}
