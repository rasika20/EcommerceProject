package com.laptops.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.laptops.dao.CategoryDAO;
import com.laptops.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCategory(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	public List<Category> fetchAllCategories() {
		List<Category> getList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		return getList;
	}
	
	public String fetchAllCategoriesByJson() {
		List<Category> getList = sessionFactory.getCurrentSession().createQuery("from Category",Category.class).getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(getList);
		return list;
	}

	public Category getCategoryById(int categoryId) {
		List<Category> getList = sessionFactory.getCurrentSession().createQuery("from Category where categoryId = "+categoryId).getResultList();
		return getList.get(0);
	}

	public void deteleCategory(int categoryId) {
		Category c = new Category();
		c.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(c);
	}
	
}
