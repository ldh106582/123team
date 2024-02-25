package com.springmvc.domain;

import java.io.Serializable;
import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("serial")
public class HospitalMember implements Serializable {
	private String personId;
	private String personPw;
	private String personEmail;
	private String personName;
	private String personPhone;
	private String hospitalName;
	private String hospitalAddress;
	private String hospitalPhone;
	private String hospitalregistration;
	private MultipartFile hospitalregistrationimg;
	private String type;
	private String hospitalliLicense;
	private MultipartFile hopitalliLicenseimg;
	public HospitalMember() {
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
	public String getHospitalregistration() {
		return hospitalregistration;
	}
	public void setHospitalregistration(String hospitalregistration) {
		this.hospitalregistration = hospitalregistration;
	}
	public MultipartFile getHospitalregistrationimg() {
		return hospitalregistrationimg;
	}
	public void setHospitalregistrationimg(MultipartFile hospitalregistrationimg) {
		this.hospitalregistrationimg = hospitalregistrationimg;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getHospitalliLicense() {
		return hospitalliLicense;
	}
	public void setHospitalliLicense(String hospitalliLicense) {
		this.hospitalliLicense = hospitalliLicense;
	}
	public MultipartFile getHopitalliLicenseimg() {
		return hopitalliLicenseimg;
	}
	public void setHopitalliLicenseimg(MultipartFile hopitalliLicenseimg) {
		this.hopitalliLicenseimg = hopitalliLicenseimg;
	}

	

}
