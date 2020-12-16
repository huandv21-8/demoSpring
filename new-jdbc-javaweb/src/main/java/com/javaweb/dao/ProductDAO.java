package com.javaweb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.javaweb.model.product;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ProductDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	
	@Transactional(readOnly = true)
	public List<product> list_product() {
		Session session = sessionFactory.getCurrentSession();
		String sqlString="from product where status = 0";
		
		List<product> list_productList = session.createQuery(sqlString).getResultList();
		//List<product> list_productList = List 

		return list_productList;
	}
	
	

	@Transactional(readOnly = true)
	public product productbyID(int id ) {
		
		Session session= sessionFactory.getCurrentSession();
		String sqlString = "from product where id_product = "+id ;
		product product = (product) session.createQuery(sqlString).getSingleResult();				
		return product;
	}
	
	
	
	@Transactional
	public void createProduct(product product) {
		Session session= sessionFactory.getCurrentSession();
		session.save(product);
	}
	

	@Transactional
	public void editOrDeleteProduct(product product) {
		Session session= sessionFactory.getCurrentSession();
		session.update(product);
	}
	
	
	@Transactional
	public void editProduct(product product) {
		Session session= sessionFactory.getCurrentSession();
		session.update(product);
	}
	
}

































