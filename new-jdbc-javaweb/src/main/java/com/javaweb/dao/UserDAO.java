package com.javaweb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javaweb.model.users;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class UserDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional(readOnly = true)
	public List<users> list_user() {
		Session session = sessionFactory.getCurrentSession();
		String sqlString = "from users";
	
		List<users> list = session.createQuery(sqlString).getResultList();
		return list;
	}

	@Transactional
	public boolean register(users user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	    int id_user = (Integer) session.save(user);
	
		if(id_user > 0){
			return true;
		}else{
			return false;
		}
		
	}
	
	@Transactional
	public users userbyID(int id ) {
		
		Session session= sessionFactory.getCurrentSession();
		String sqlString = "from users where id_user = "+id ;
		users user = (users) session.createQuery(sqlString).getSingleResult();				
		//System.out.println("size anh: "+list_size.size());
		return user;
	}
	
}
