package com.laptops.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Subscribe 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int subId;
	
	private String subEmail;

	
	
	public int getSubId() {
		return subId;
	}

	public void setSubId(int subId) {
		this.subId = subId;
	}

	public String getSubEmail() {
		return subEmail;
	}

	public void setSubEmail(String subEmail) {
		this.subEmail = subEmail;
	}
	
	
	
	
}
