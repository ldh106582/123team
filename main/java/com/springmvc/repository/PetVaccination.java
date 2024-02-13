package com.springmvc.repository;

import java.time.LocalDate;

public class PetVaccination {
	
	private LocalDate petVaccinationDate;
	private String petVaccination;
	private String petVaccinationCotent;
	public PetVaccination() {
		super();
		// TODO Auto-generated constructor stub
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
	
	
}
