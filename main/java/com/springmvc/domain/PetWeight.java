package com.springmvc.domain;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
public class PetWeight implements Serializable{

	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date  petWeghitDate;
	private int petWeghit; // 몸무게
	private String petId;
	
	public PetWeight() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Date  getPetWeghitDate() {
		return petWeghitDate;
	}
	public void setPetWeghitDate(Date  petWeghitDate) {
		this.petWeghitDate = petWeghitDate;
	}
	public int getPetWeghit() {
		return petWeghit;
	}
	public void setPetWeghit(int petWeghit) {
		this.petWeghit = petWeghit;
	}
	public String getPetId() {
		return petId;
	}
	public void setPetId(String petId) {
		this.petId = petId;
	}

	

	
}