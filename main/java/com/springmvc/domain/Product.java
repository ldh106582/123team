package com.springmvc.domain;

import java.io.Serializable;
import java.sql.Date;

@SuppressWarnings("serial")
public class Product implements Serializable{
	
	private String personId;
	private String productId;
	private String productName;
	private String productCategory;
	private int productPrice;
	private Date releaseDate;
	private String productDescribe;
	private String productImage;
	private int productUnitstock;
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
	public String getProductCategoty() {
		return productCategory;
	}
	public void setProductCategoty(String productCategory) {
		productCategory = productCategory;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
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
	public String getPersonId() {
		return personId;
	}
	public void setPersonId(String personId) {
		this.personId = personId;
	}
	
	
	
}
