package com.user.db;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.user.bean.User;

@Repository("userDB")
public class UserDB extends AbstractDB<User> {
    @Override
	@SuppressWarnings("unchecked")
	public List<User> getUser() {
		return entity.createQuery("select u from User u").getResultList();
	}

	@Override
	public User update(int id, User u) {
		// TODO Auto-generated method stub
		return null;
	}


}
