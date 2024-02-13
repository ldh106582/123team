package com.springmvc.domain;

public class Booking {
	
	
	
	private int number; // 예약번호
	private String petname; // 펫 이름
	private String petbreed; // 펫 품종
	private int petage; // 펫 나이
	private String petgender; // 펫 성별
	private String name; // 예약자명
	private String phone; // 연락처
	private String text; // 진료받을내용 + 요청사항
	private static Booking instance;
	
	public static Booking getintance() 
	{
		if(instance == null)
			instance = new Booking();	
		return instance;
	}
	
	public Booking() {}

	public int getNumber() {
		return number;
	}

	public String getPetname() {
		return petname;
	}

	public void setPetname(String petname) {
		this.petname = petname;
	}

	public String getPetbreed() {
		return petbreed;
	}

	public void setPetbreed(String petbreed) {
		this.petbreed = petbreed;
	}

	public int getAge() {
		return petage;
	}

	public void setAge(int petage) {
		this.petage = petage;
	}

	public String getPetgender() {
		return petgender;
	}

	public void setPetgender(String petgender) {
		this.petgender = petgender;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	

	
	
	
}
