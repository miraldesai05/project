package com.sportscart.dao;

import java.util.List;

import com.sportscart.model.Product;

public interface ProductDAO {
	
	public void addProduct(Product product);
	public List<Product> listProduct();
	public void delete(int productId);
	public Product get(int productId);
	public Product view(int productId);
	public Product getByName(String productName);

}
