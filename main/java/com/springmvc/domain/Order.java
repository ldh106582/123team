package com.springmvc.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Order implements Serializable{

	
	private String orderId;
	private String orderDate;
	private String  orderAmount;
	private String orderCondition;
	private int orderPuchase;
	public Order() {
		super();
		// TODO Auto-generated constructor stub

	
	
}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getOrderAmount() {
		return orderAmount;
	}
	public void setOrderAmount(String orderAmount) {
		this.orderAmount = orderAmount;
	}
	public String getOrderCondition() {
		return orderCondition;
	}
	public void setOrderCondition(String orderCondition) {
		this.orderCondition = orderCondition;
	}
	public int getOrderPuchase() {
		return orderPuchase;
	}
	public void setOrderPuchase(int orderPuchase) {
		this.orderPuchase = orderPuchase;
	}
}