package com.javaweb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "product")
public class product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_product;

	@OneToOne
	@JoinColumn(name = "id_category")
	private category category;

	@OneToOne
	@JoinColumn(name = "id_topic")
	private topic topic;

	@OneToOne
	@JoinColumn(name = "id_user")
	private users users;

	private String name_product;
	private float price;
	private String description;
	private String image;

	@org.springframework.lang.Nullable
	private  Integer sale;

	private int status;
	private String created_at;
	private String updated_at;



	public int getId_product() {
		return id_product;
	}

	public void setId_product(int id_product) {
	 this.id_product = id_product;
	}

	public category getCategory() {
		return category;
	}

	public void setCategory(category category) {
		this.category = category;
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

	public String getName_product() {
		return name_product;
	}

	public void setName_product(String name_product) {
		this.name_product = name_product;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getSale() {
		return sale;
	}

	public void setSale(Integer sale) {
		this.sale = sale;
	}

	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public String getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}



}