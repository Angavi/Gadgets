package com.niit.dao;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierDao {

	void saveSupplier(Supplier supplier);

	List<Supplier> getAllSupplier();

	Supplier getSupplierById(int id);

	void deleteSupplier(int id);

	void updateSupplier(Supplier supplier);

		List<Supplier>  list();

	
}
