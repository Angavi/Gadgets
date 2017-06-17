package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.niit.dao.SupplierDao;
import com.niit.model.Supplier;


@Service
public class SupplierServiceImpl implements SupplierService {

	
	@Autowired
	private SupplierDao supplierDao;
	
	public void saveSupplier(Supplier supplier) {
		supplierDao.saveSupplier(supplier);
	}
	

	public List<Supplier> getAllSupplier() {
		return supplierDao.getAllSupplier();
	}

	public Supplier getSupplierById(int id) {
		return supplierDao.getSupplierById(id);
	}

	public void deleteSupplier(int id) {
		supplierDao.deleteSupplier(id);

	}

	public void updateSupplier(Supplier supplier) {
		supplierDao.updateSupplier(supplier);
	}

}
