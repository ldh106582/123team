package com.springmvc.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class ShoppingCart implements Serializable{
	private String shoppingCartId;
	private int shoppingCartAmount;
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
	public int getShoppingCartAmount() {
		return shoppingCartAmount;
	}
	public void setShoppingCartAmount(int shoppingCartAmount) {
		this.shoppingCartAmount = shoppingCartAmount;
	}

}
