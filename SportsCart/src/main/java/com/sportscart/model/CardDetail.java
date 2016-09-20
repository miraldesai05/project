package com.sportscart.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class CardDetail implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cardDetailId;
	private int userId;
	@NotEmpty(message="Card number must be entered")
	private String cardNumber;
	@NotEmpty(message="Expiry month must be selected")
	private String expiryMonth;
	@NotEmpty(message="Expiry year must be selected")
	private String expiryYear;
	@NotEmpty(message="CV number must be entered")
	private String cvNumber;
	@NotEmpty(message="Name must be entered")
	private String nameOnCard;
	private double totalCost;
	
	public int getCardDetailId() {
		return cardDetailId;
	}
	public void setCardDetailId(int cardDetailId) {
		this.cardDetailId = cardDetailId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getExpiryMonth() {
		return expiryMonth;
	}
	public void setExpiryMonth(String expiryMonth) {
		this.expiryMonth = expiryMonth;
	}
	public String getExpiryYear() {
		return expiryYear;
	}
	public void setExpiryYear(String expiryYear) {
		this.expiryYear = expiryYear;
	}
	public String getCvNumber() {
		return cvNumber;
	}
	public void setCvNumber(String cvNumber) {
		this.cvNumber = cvNumber;
	}
	public String getNameOnCard() {
		return nameOnCard;
	}
	public void setNameOnCard(String nameOnCard) {
		this.nameOnCard = nameOnCard;
	}
	public double getTotalCost() {
		return totalCost;
	}
	public void setTotalCost(double totalCost) {
		this.totalCost = totalCost;
	}
	
}
