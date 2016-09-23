package com.sportscart.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class CartItem implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cartItemId;
	private int cartId;
	private int productId;
	private String productName;
	private int price;
	private int quantity;
	private double totalPrice;
	private boolean flag;
	@ManyToOne
	@JoinColumn(name="cartId",insertable=false,updatable=false,nullable=false)
	private Cart cart;
	@ManyToOne
	@JoinColumn(name="productId",insertable=false,updatable=false,nullable=false)
	private Product product;
	
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public boolean isFlag() {
		return flag;
	}
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}	
	public String toString()
	{
		return "{cartItemId:'"+ cartItemId +"'," + "cartId:'"+ cartId +"'," + "productId:'"+ productId +"'," + "productName:'"+ productName +"'," + "price:'"+ price +"'," + "quantity:'"+ quantity +"'," + "totalPrice:'"+ totalPrice +"'}";
	}

}
