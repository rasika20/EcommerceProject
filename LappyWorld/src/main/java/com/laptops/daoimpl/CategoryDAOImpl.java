package com.laptops.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.laptops.model.Category;
import com.laptops.dao.CategoryDAO;

@Repository

public class CategoryDAOImpl implements CategoryDAO {
	private Session session;

	@Autowired
	SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addCategory(Category category) {
		session = sessionFactory.openSession();
		session.saveOrUpdate(category);
		session.flush();

		// sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	public List<Category> fetchAllCategories() {
		session = sessionFactory.openSession();
		List<Category> getList = session.createQuery("from Category").list();
		session.close();
		return getList;

		// List<Category> getList =
		// sessionFactory.getCurrentSession().createQuery("from
		// Category").getResultList();
	}

	public Category getCategoryById(int categoryId) {
		session = sessionFactory.openSession();
		List<Category> getList = session.createQuery("from Category where categoryId = " + categoryId).list();
		session.flush();
		return getList.get(0);

	}

	public void deleteCategory(int categoryId) {
		Category c = getCategoryById(categoryId);
		session = sessionFactory.openSession();
		session.delete(c);
		session.flush();

	}
}
