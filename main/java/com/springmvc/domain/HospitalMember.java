package com.springmvc.domain;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("serial")
public class HospitalMember implements Serializable {
	private String personId;
	private String personPw;
	private String personEmail;
	private String PersonAddress;
	private String personName;
	private String personPhone;
	private Date PersonBirth;
	private String PersonSex;
	private String hospitalName;
	private String hospitalAddress;
	private String hospitalPhone;
	private String s_image; // 사업자등록증
	private MultipartFile ms_image;// 사업자등록증 Multi
	private String type;
	private String h_image; // 병원자격증
	private MultipartFile hs_image; // 병원자격증 Multi
	public HospitalMember() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getPersonId() {
		return personId;
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
		return PersonAddress;
	}
	public void setPersonAddress(String personAddress) {
		PersonAddress = personAddress;
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
	public Date getPersonBirth() {
		return PersonBirth;
	}
	public void setPersonBirth(Date personBirth) {
		PersonBirth = personBirth;
	}
	public String getPersonSex() {
		return PersonSex;
	}
	public void setPersonSex(String personSex) {
		PersonSex = personSex;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	public String getHospitalAddress() {
		return hospitalAddress;
	}
	public void setHospitalAddress(String hospitalAddress) {
		this.hospitalAddress = hospitalAddress;
	}
	public String getHospitalPhone() {
		return hospitalPhone;
	}
	public void setHospitalPhone(String hospitalPhone) {
		this.hospitalPhone = hospitalPhone;
	}
	public String getS_image() {
		return s_image;
	}
	public void setS_image(String s_image) {
		this.s_image = s_image;
	}
	public MultipartFile getMs_image() {
		return ms_image;
	}
	public void setMs_image(MultipartFile ms_image) {
		this.ms_image = ms_image;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getH_image() {
		return h_image;
	}
	public void setH_image(String h_image) {
		this.h_image = h_image;
	}
	public MultipartFile getHs_image() {
		return hs_image;
	}
	public void setHs_image(MultipartFile hs_image) {
		this.hs_image = hs_image;
	}
	public void setPersonId(String personId) {
		this.personId = personId;
	}

	

	
	

}
