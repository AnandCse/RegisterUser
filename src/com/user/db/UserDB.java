package com.user.db;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.user.bean.User;

@Repository("userDB")
public class UserDB extends AbstractDB<User> {

	@SuppressWarnings("unchecked")
	public List<User> getUser() {
		return entity.createQuery("select u from User u").getResultList();
	}

}
