package com.laptops.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Dummy
{
	@Id
	int id;
	String name;
	String emailid;
}
