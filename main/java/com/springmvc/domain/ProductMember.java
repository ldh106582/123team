package com.springmvc.domain;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("serial")
public class ProductMember implements Serializable {
	private String personId;
	private String personPw;
	private String personEmail;
	private String personAddress;
	private String personName;
	private Date personBirth;
	private String personSex;
	private String personPhone;
	private String companyName;
	private String companyAddress;
	private String companyPhone;
	private String s_image;  // 사업자등록증
	private String type;
	private MultipartFile ms_image; // 사업자등록증 Multi
	
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

	public String getPersonAddress() {
		return personAddress;
	}

	public void setPersonAddress(String personAddress) {
		this.personAddress = personAddress;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public Date getPersonBirth() {
		return personBirth;
	}

	public void setPersonBirth(Date personBirth) {
		this.personBirth = personBirth;
	}

	public String getPersonSex() {
		return personSex;
	}

	public void setPersonSex(String personSex) {
		this.personSex = personSex;
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

	public String getS_image() {
		return s_image;
	}

	public void setS_image(String s_image) {
		this.s_image = s_image;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public MultipartFile getMs_image() {
		return ms_image;
	}

	public void setMs_image(MultipartFile ms_image) {
		this.ms_image = ms_image;
	}

	
	
	
	
}
