package com.sportscart.dao;

import java.util.List;

import com.sportscart.model.Product;

public interface ProductDAO {
	
	public void addProduct(Product product);
	public List<Product> listProduct();
	public void delete(String productId);
	public Product get(String productId);
	public Product view(String productId);
	public Product getByName(String productName);

}
