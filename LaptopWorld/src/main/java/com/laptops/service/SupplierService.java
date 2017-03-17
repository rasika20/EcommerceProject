package com.laptops.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptops.daoimpl.SupplierDAIOImpl;
import com.laptops.model.Supplier;

@Service
@Transactional
public class SupplierService {

	@Autowired
	private SupplierDAIOImpl supplierDAIOImpl;

	public void addSupplier(Supplier supplier) {
		supplierDAIOImpl.addSupplier(supplier);
	}

	public List<Supplier> fetchAllSupplier() {
		return supplierDAIOImpl.fetchAllSupplier();
	}

	public String fetchAllSupplierByJson() {
		return supplierDAIOImpl.fetchAllSupplierByJson();
	}

	public Supplier getSupplierById(int supplierId) {
		return supplierDAIOImpl.getSupplierById(supplierId);
	}

	public void deleteSupplier(int supplierId) {
		supplierDAIOImpl.deleteSupplier(supplierId);
	}

}
