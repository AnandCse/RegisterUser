package com.user.db;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class AbstractDB<T> {
	@PersistenceContext
	EntityManager entity;

	public T persist(T t) {
		entity.persist(t);
		return t;
	}

	public T merge(T t) {
		entity.merge(t);
		return t;
	}

	public T remove(T t) {
		entity.remove(t);
		return t;
	}

}
