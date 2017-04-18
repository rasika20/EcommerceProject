package com.laptops.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.laptops.dao.UserDAO;
import com.laptops.model.Cart;
import com.laptops.model.User;
import com.laptops.model.WishList;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addUser(User user) {

		Session session = sessionFactory.getCurrentSession();

		user.setEnabled(true);
		user.setRole("ROLE_USER");

		session.saveOrUpdate(user);

		Cart cart = new Cart();
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		
		session.saveOrUpdate(cart);
		session.saveOrUpdate(user);
		
		WishList wishList = new WishList();
		wishList.setWishListId(user.getUserId());
		wishList.setUserId(user.getUserId());

		session.saveOrUpdate(wishList);
		session.saveOrUpdate(user);

	}

	public User getIdByUser(String username) {

		List<User> getList = sessionFactory.getCurrentSession().createQuery("from User where username = '" +username+"'").getResultList();
		return getList.get(0);
	}
}
