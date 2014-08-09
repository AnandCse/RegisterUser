package com.user.db;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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

}
