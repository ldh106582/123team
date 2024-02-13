package com.springmvc.domain;

import java.sql.Date;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class PetChart {
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate petChartDate;
	private String petChart;
	private String petChartContent;
	
	public PetChart() {
		super();
		// TODO Auto-generated constructor stub
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
	
	
    
}
