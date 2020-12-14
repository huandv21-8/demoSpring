package com.javaweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaweb.dao.product_dao;
import com.javaweb.model.category;
import com.javaweb.model.product;
import com.javaweb.model.topic;
import com.javaweb.model.users;

@Service
public class product_service {

	@Autowired
	product_dao product_dao;


	public List<product> listProduct() {
		List<product> list = product_dao.list_product();
		return list;
	}



	
	public void createProduct(String name, float price, String description,String image) {
	
		category category = new category();
		category.setId_category(1);
		
		topic topic = new topic();
		topic.setId_topic(1);
		
		users users = new users();
		users.setId_user(1);
		
		product pro = new product();
		pro.setCategory(category);
		pro.setTopic(topic);
		pro.setUsers(users);
		pro.setName_product(name);
		pro.setDescription(description);
		pro.setPrice(price);
		pro.setImage(image);
		pro.setStatus(0);
			
		product_dao.createProduct(pro);
	

	}
	
	public void deteteProduct(int id) {
		product pro = product_dao.productbyID(id);
		pro.setStatus(1);
		product_dao.editOrDeleteProduct(pro);
		
	}
	
	
	public void editProduct(Integer id, String name, float price, String description,String image) {
		
		product pro = product_dao.productbyID(id);
		pro.setName_product(name);
		pro.setDescription(description);
		pro.setPrice(price);
		pro.setImage(image);
	
		product_dao.editOrDeleteProduct(pro);
//		
//		category category = new category();
//		category.setId_category(1);
//		
//		topic topic = new topic();
//		topic.setId_topic(1);
//		
//		users users = new users();
//		users.setId_user(1);
//		
//		product pro = new product();
//		pro.setCategory(category);
//		pro.setTopic(topic);
//		pro.setUsers(users);
//		pro.setName_product(name);
//		pro.setDescription(description);
//		pro.setPrice(price);
//		pro.setImage(image);
//		pro.setStatus(0);
//			
//		product_dao.(pro);
	

	}
	
}





























