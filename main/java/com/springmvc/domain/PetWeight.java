package com.springmvc.domain;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
public class PetWeight implements Serializable{

	private int PetWeightNum;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private java.sql.Date petWeightDate;
	private String petWeight; // 몸무게
	private String petId;
	
	public PetWeight() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public int getPetWeightNum() {
		return PetWeightNum;
	}

	public void setPetWeightNum(int petWeightNum) {
		PetWeightNum = petWeightNum;
	}

	public Date getPetWeightDate() {
		return petWeightDate;
	}

	public void setPetWeightDate(LocalDate petWeightDate) {
		this.petWeightDate = java.sql.Date.valueOf(petWeightDate);
	}

	public String getPetWeight() {
		return petWeight;
	}

	public void setPetWeight(String petWeight) {
		this.petWeight = petWeight;
	}

	public String getPetId() {
		return petId;
	}

	public void setPetId(String petId) {
		this.petId = petId;
	}
	

	

	
}