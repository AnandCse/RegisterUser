package com.user.db;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.user.bean.UserAcademic;
import com.user.bean.UserDetails;

@Repository("userDataDB")
public class UserDataDB extends AbstractDB<UserDetails> {

	@SuppressWarnings("unchecked")
	@Override
	public List<UserDetails> getUser() {

		return entity.createQuery("select u from UserDetails u")
				.getResultList();
	}

	@Override
	public UserDetails update(int id, UserDetails map) {
		// TODO Auto-generated method stub
		return null;
	}

}
