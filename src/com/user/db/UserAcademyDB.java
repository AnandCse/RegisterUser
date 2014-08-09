package com.user.db;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.user.bean.UserAcademic;

public class UserAcademyDB extends AbstractDB<UserAcademic> {

	@SuppressWarnings("unchecked")
	public List<UserAcademic> getUser() {
		
		System.out.print("Thai");
		System.out.print(entity);
		return entity.createQuery("select u from UserAcademy u").getResultList();
	}

	@Transactional(readOnly = false)
	@Override
	public UserAcademic update(int id, Map<String, UserAcademic> userAcademic) {

		System.out.println("s.m.f");
		List<UserAcademic> userInfo =getUser();
		System.out.println("s.m.s"+userInfo);
		Iterator<UserAcademic> iter = userInfo.iterator();
		System.out.println("s.m.t");
		UserAcademic user=null;
		while ((iter).hasNext()) {
			user = (UserAcademic) iter.next();
			System.out.println("s.m.f");
			if (user.getAcademic_id() == id) {

				Set<Entry<String, UserAcademic>> s = userAcademic.entrySet();
				Iterator<Entry<String, UserAcademic>> iter1 = s.iterator();
				while (iter1.hasNext()) {
					Map.Entry<String, UserAcademic> enValue = iter1.next();
					enValue.getKey();
					UserAcademic userAcd = enValue.getValue();
					Query us= entity.createQuery("update UserAcademic userAcademic set userAcademic.degree=:degree,userAcademic.discipline=:discipline,userAcademic.school=:school,userAcademic.university=:university,userAcademic.year:=year,userAcademic.cgpa=:cgpa,userAcademic.key_name=:key_name where userAcademic.academic_id=:id");
				    us.setParameter("cgpa",userAcd.getCgpa());
				    us.setParameter("degree", userAcd.getDegree());
				    us.setParameter("school", userAcd.getSchool());
				    us.setParameter("discipline", userAcd.getDiscipline());
				    us.setParameter("key_name", userAcd.getKey_name());
				    us.setParameter("university", user.getUniversity());
				    us.setParameter("year", user.getYear());
				    System.out.print(us);
				    //System.out.print(us.executeUpdate()+"up");
				    
				    
				    List l=(List)entity.createQuery("select u from userDetails u");
				    System.out.print(l+"l");
				    
				    
				}

			}
		}

		return user;

	}

}
