package com.niit.service;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierService {

	void saveSupplier(Supplier supplier);

	List<Supplier> getAllSupplier();

	Supplier getSupplierById(int id);

	void deleteSupplier(int id);

	void updateSupplier(Supplier supplier);

}
