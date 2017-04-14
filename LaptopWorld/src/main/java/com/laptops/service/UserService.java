package com.laptops.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptops.daoimpl.UserDAOImpl;
import com.laptops.model.User;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserDAOImpl userDAOImpl;

	public void addUser(User user) {
		
		userDAOImpl.addUser(user);
	}

	public User getIdByUser(String username) {
		
		return userDAOImpl.getIdByUser(username);
	}
}
