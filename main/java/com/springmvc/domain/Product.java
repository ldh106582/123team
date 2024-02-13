package com.springmvc.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Product implements Serializable{
	private String productId;
	private String productName;
	private int productCost;
	private String productDescribe;
	private String productImage;
	private int productUnitstock;
	private String productCategory;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductCost() {
		return productCost;
	}
	public void setProductCost(int productCost) {
		this.productCost = productCost;
	}
	public String getProductDescribe() {
		return productDescribe;
	}
	public void setProductDescribe(String productDescribe) {
		this.productDescribe = productDescribe;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public int getProductUnitstock() {
		return productUnitstock;
	}
	public void setProductUnitstock(int productUnitstock) {
		this.productUnitstock = productUnitstock;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	
	
}
