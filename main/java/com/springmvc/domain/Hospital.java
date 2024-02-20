package com.springmvc.domain;

public class Hospital {
	String name; // 병원명
	String addr; // 병원주소
	String number; //병원 전화번호
	String closeday; // 휴무일
	String parking; // 주차정보
	String text; // 병원설명
	
	public Hospital() {}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getCloseday() {
		return closeday;
	}

	public void setCloseday(String closeday) {
		this.closeday = closeday;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	


	
	
}
