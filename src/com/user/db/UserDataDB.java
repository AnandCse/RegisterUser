package com.user.db;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.user.bean.UserDetails;
@Repository("userDataDB")
public class UserDataDB extends AbstractDB<UserDetails>{

	@SuppressWarnings("unchecked")
	@Override
	public
	List<UserDetails> getUser() {
		
		return entity.createQuery("select u from UserDetails u")
				.getResultList();
	}

	
	@Override
	public UserDetails update(int id, Map<String, UserDetails> m) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
