package com.laptops.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product
{
	@Id
	int id;
	String name;
}
