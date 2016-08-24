package com.sportscart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sportscart.dao.ProductDAOImpl;
import com.sportscart.model.Product;
@Service
@Transactional
public class ProductService {
	@Autowired
	public ProductDAOImpl productDAOImpl;
	
	public void addProduct(Product product)
	{
		productDAOImpl.addProduct(product);
	}
	public List<Product> listProduct()
	{
		return productDAOImpl.listProduct();
	}
	public void delete(String productId)
	{
		productDAOImpl.delete(productId);
	}
	public Product get(String productId)
	{
		return productDAOImpl.get(productId);
	}
	public Product view(String productId)
	{
		return productDAOImpl.view(productId);
	}
	public Product getByName(String productName)
	{
		return productDAOImpl.getByName(productName);
	}

}
