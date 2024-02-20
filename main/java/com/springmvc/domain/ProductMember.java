package com.springmvc.domain;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("serial")
public class ProductMember implements Serializable {
	private String personId;
	private String personPw;
	private String personEmail;
	private String personName;
	private String personphone;
	private String companyName;
	private String companyAddress;
	private String companyphone;
	private String  companyregistration;
	private String  companybusinessreport;
	private String division;
	private MultipartFile companyregistrationimg;
	private MultipartFile companybusinessreportimg;
	
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
	public String getPersonphone() {
		return personphone;
	}
	public void setPersonphone(String personphone) {
		this.personphone = personphone;
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
	public String getCompanyphone() {
		return companyphone;
	}
	public void setCompanyphone(String companyphone) {
		this.companyphone = companyphone;
	}
	public String getCompanyregistration() {
		return companyregistration;
	}
	public void setCompanyregistration(String companyregistration) {
		this.companyregistration = companyregistration;
	}
	public String getCompanybusinessreport() {
		return companybusinessreport;
	}
	public void setCompanybusinessreport(String companybusinessreport) {
		this.companybusinessreport = companybusinessreport;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public MultipartFile getCompanyregistrationimg() {
		return companyregistrationimg;
	}
	public void setCompanyregistrationimg(MultipartFile companyregistrationimg) {
		this.companyregistrationimg = companyregistrationimg;
	}
	public MultipartFile getCompanybusinessreportimg() {
		return companybusinessreportimg;
	}
	public void setCompanybusinessreportimg(MultipartFile companybusinessreportimg) {
		this.companybusinessreportimg = companybusinessreportimg;
	}

	
	
}
