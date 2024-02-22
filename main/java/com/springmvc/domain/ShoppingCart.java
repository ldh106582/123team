package com.springmvc.domain;

import java.io.Serializable;

// 2024-02-22
@SuppressWarnings("serial")
public class ShoppingCart implements Serializable{
	private String shoppingCartId;
	private String productId;
	private int amount;
	private String personId;
	
	public ShoppingCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getShoppingCartId() {
		return shoppingCartId;
	}

	public void setShoppingCartId(String shoppingCartId) {
		this.shoppingCartId = shoppingCartId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getPersonId() {
		return personId;
	}

	public void setPersonId(String personId) {
		this.personId = personId;
	}
	

}