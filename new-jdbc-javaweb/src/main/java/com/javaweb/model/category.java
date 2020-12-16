package com.javaweb.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity(name = "category")
public class category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id_category;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_topic")
	topic topic;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_user")
	users users;

	@Column(name = "name_category")
	String nameCategory;
	
	@Column(name = "image_category")
	String imageCategory;
	
	@Column(name = "status")
	int status;
	
	@Column(name = "created_at")
	String createdAt;
	
	@Column(name = "updated_at")
	String updatedAt;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_category")
	Set<product> products;

	public Set<product> getProducts() {
		return products;
	}

	public void setProducts(Set<product> products) {
		this.products = products;
	}

	

	public int getId_category() {
		return id_category;
	}

	public void setId_category(int id_category) {
		this.id_category = id_category;
	}

	public topic getTopic() {
		return topic;
	}

	public void setTopic(topic topic) {
		this.topic = topic;
	}

	public users getUsers() {
		return users;
	}

	public void setUsers(users users) {
		this.users = users;
	}

	public String getNameCategory() {
		return nameCategory;
	}

	public void setNameCategory(String nameCategory) {
		this.nameCategory = nameCategory;
	}

	public String getImageCategory() {
		return imageCategory;
	}

	public void setImageCategory(String imageCategory) {
		this.imageCategory = imageCategory;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public String getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	
}
