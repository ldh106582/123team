package com.springmvc.domain;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
public class PetCard implements Serializable{

	private String petCard; // pet카드 고유번호
	private int petWeghit; // 몸무게
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate petChartDate; // 진료일자
	private String petChart; // 진료명
	private String petChartContent; // 진료기록
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate petSurgeryDate; // 수술날짜
	private String petSurgeryName; // 수술이름
	private String petSurgeryContent; // 수술내용
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate petSurgeryDateAfter; // 입원기간 날짜
	private String petSurgeryContentAfter; // 수술내용
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate petVaccinationDate; // 예방접종날짜
	private String petVaccination; // 예방접종
	private String petVaccinationCotent; // 예방접종특이사항

	private String petId;
	
	public PetCard() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String  getPetCard() {
		return petCard;
	}

	public void setPetCard(String  petCard) {
		this.petCard = petCard;
	}

	public int getPetWeghit() {
		return petWeghit;
	}

	public void setPetWeghit(int petWeghit) {
		this.petWeghit = petWeghit;
	}

	public LocalDate getPetChartDate() {
		return petChartDate;
	}

	public void setPetChartDate(LocalDate petChartDate) {
		this.petChartDate = petChartDate;
	}

	public String getPetChart() {
		return petChart;
	}

	public void setPetChart(String petChart) {
		this.petChart = petChart;
	}

	public String getPetChartContent() {
		return petChartContent;
	}

	public void setPetChartContent(String petChartContent) {
		this.petChartContent = petChartContent;
	}

	public LocalDate getPetSurgeryDate() {
		return petSurgeryDate;
	}

	public void setPetSurgeryDate(LocalDate petSurgeryDate) {
		this.petSurgeryDate = petSurgeryDate;
	}

	public String getPetSurgeryName() {
		return petSurgeryName;
	}

	public void setPetSurgeryName(String petSurgeryName) {
		this.petSurgeryName = petSurgeryName;
	}

	public String getPetSurgeryContent() {
		return petSurgeryContent;
	}

	public void setPetSurgeryContent(String petSurgeryContent) {
		this.petSurgeryContent = petSurgeryContent;
	}

	public LocalDate getPetSurgeryDateAfter() {
		return petSurgeryDateAfter;
	}

	public void setPetSurgeryDateAfter(LocalDate petSurgeryDateAfter) {
		this.petSurgeryDateAfter = petSurgeryDateAfter;
	}

	public String getPetSurgeryContentAfter() {
		return petSurgeryContentAfter;
	}

	public void setPetSurgeryContentAfter(String petSurgeryContentAfter) {
		this.petSurgeryContentAfter = petSurgeryContentAfter;
	}

	public LocalDate getPetVaccinationDate() {
		return petVaccinationDate;
	}

	public void setPetVaccinationDate(LocalDate petVaccinationDate) {
		this.petVaccinationDate = petVaccinationDate;
	}

	public String getPetVaccination() {
		return petVaccination;
	}

	public void setPetVaccination(String petVaccination) {
		this.petVaccination = petVaccination;
	}

	public String getPetVaccinationCotent() {
		return petVaccinationCotent;
	}

	public void setPetVaccinationCotent(String petVaccinationCotent) {
		this.petVaccinationCotent = petVaccinationCotent;
	}

	public String getPetId() {
		return petId;
	}

	public void setPetId(String petId) {
		this.petId = petId;
	}


}