package com.javaweb.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "topic")
public class topic {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id_topic;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_user")
	users users;

	@Column(name = "name_topic")
	String nameTopic;
	
	@Column(name = "status")
	int status;
	
	@Column(name = "created_at")
	String createdAt;
	
	@Column(name = "updated_at")
	String updatedAt;

	public int getId_topic() {
		return id_topic;
	}

	public void setId_topic(int id_topic) {
		this.id_topic = id_topic;
	}

	public users getUsers() {
		return users;
	}

	public void setUsers(users users) {
		this.users = users;
	}

	

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getNameTopic() {
		return nameTopic;
	}

	public void setNameTopic(String nameTopic) {
		this.nameTopic = nameTopic;
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


}
