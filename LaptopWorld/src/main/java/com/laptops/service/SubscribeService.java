package com.laptops.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptops.daoimpl.SubscribeDAOImpl;
import com.laptops.model.Subscribe;

@Service
@Transactional
public class SubscribeService 
{
	@Autowired
	SubscribeDAOImpl subscribeDAOImpl;
	
	public void addSubscribe(Subscribe subscribe) 
	{
		subscribeDAOImpl.addSubscribe(subscribe);
	}
}