package com.springmvc.domain;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("serial")
public class ProductMember implements Serializable {
	private String personId;
	private String personPw;
	private String personEmail;
	private String personName;
	private String personPhone;
	private String personAddress;
	private String companyName;
	private String companyAddress;
	private String companyPhone;
	private String companyregistration;
	private String type;
	private MultipartFile companyregistrationimg;
	
	public ProductMember() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getPersonId() {
		return personId;
	}

	public void setPersonId(String personId) {
		this.personId = personId;
	}

	public String getPersonPw() {
		return personPw;
	}

	public void setPersonPw(String personPw) {
		this.personPw = personPw;
	}

	public String getPersonEmail() {
		return personEmail;
	}

	public void setPersonEmail(String personEmail) {
		this.personEmail = personEmail;
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

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyAddress() {
		return companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public String getCompanyPhone() {
		return companyPhone;
	}

	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}

	public String getCompanyregistration() {
		return companyregistration;
	}

	public void setCompanyregistration(String companyregistration) {
		this.companyregistration = companyregistration;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public MultipartFile getCompanyregistrationimg() {
		return companyregistrationimg;
	}

	public void setCompanyregistrationimg(MultipartFile companyregistrationimg) {
		this.companyregistrationimg = companyregistrationimg;
	}

	public String getPersonAddress() {
		return personAddress;
	}

	public void setPersonAddress(String personAddress) {
		this.personAddress = personAddress;
	}
	
}
