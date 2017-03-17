package com.laptops.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.laptops.dao.SubCategoryDAO;
import com.laptops.model.SubCategory;

@Repository
public class SubCategoryDAOImpl implements SubCategoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addSubCategory(SubCategory subCategory) {
		sessionFactory.getCurrentSession().saveOrUpdate(subCategory);
	}

	public List<SubCategory> fetchAllSubCategories() {
		List<SubCategory> getList = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		return getList;
	}
	
	public String fetchAllSubCategoriesByJson() {
		List<SubCategory> getList = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(getList);
		return list;
	}

	public SubCategory getSubCategoryById(int subCategoryId) {
		List<SubCategory> getList = sessionFactory.getCurrentSession().createQuery("from SubCategory where subCategoryId = "+subCategoryId).getResultList();
		return getList.get(0);
	}

	public void deleteSubCategory(int subCategoryId) {
		SubCategory sc = new SubCategory();
		sc.setSubCategoryId(subCategoryId);
		sessionFactory.getCurrentSession().delete(sc);
	}
	
	
}
