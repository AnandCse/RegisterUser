package com.user.db;

import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.user.bean.User;
import com.user.bean.UserAcademic;
import com.user.bean.UserDetails;

public abstract class AbstractDB<T> {
	@PersistenceContext
	EntityManager entity;

	public T persist(T t) {
		entity.persist(t);
		return t;
	}

	public T merge(T t) {
		System.out.print(t+"Hai");
		entity.merge(t);
		return t;
	}

	public T remove(T t) {
		entity.remove(t);
		return t;
	}

	public abstract List<T> getUser();

	public abstract T update(int id, T userAcademic); 
	
	
}
