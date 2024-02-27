package com.springmvc.domain;

import java.io.Serializable;
import java.sql.Date;

@SuppressWarnings("serial")
public class Order implements Serializable
{
	private int oderNum;
	private String ProductId;
	private String productName;
	private int amount;
	private int price;
	private String orderDate;
	private int totalPrice;
	private String personId;
	private String personName;
	private String personPhone;
	private String personAddress;
	
	public Order() 
	{
		super();
		// TODO Auto-generated constructor stub
	}




	public int getOderNum() {
		return oderNum;
	}




	public void setOderNum(int oderNum) {
		this.oderNum = oderNum;
	}




	public String getProductId() {
		return ProductId;
	}




	public void setProductId(String productId) {
		ProductId = productId;
	}




	public String getProductName() {
		return productName;
	}




	public void setProductName(String productName) {
		this.productName = productName;
	}




	public int getAmount() {
		return amount;
	}




	public void setAmount(int amount) {
		this.amount = amount;
	}




	public int getPrice() {
		return price;
	}




	public void setPrice(int price) {
		this.price = price;
	}




	public String getOrderDate() {
		return orderDate;
	}




	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}




	public int getTotalPrice() {
		return totalPrice;
	}




	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}




	public String getPersonId() {
		return personId;
	}




	public void setPersonId(String personId) {
		this.personId = personId;
	}




	public String getPersonName() {
		return personName;
	}




	public void setPersonName(String personName) {
		this.personName = personName;
	}




	public String getPersonPhone() {
		return personPhone;
	}




	public void setPersonPhone(String personPhone) {
		this.personPhone = personPhone;
	}




	public String getPersonAddress() {
		return personAddress;
	}




	public void setPersonAddress(String personAddress) {
		this.personAddress = personAddress;
	}

	
	
	
	
}