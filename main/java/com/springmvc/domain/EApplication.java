package com.springmvc.domain;

// 체험단 신청
public class EApplication {
	private String experience;
	private String animal;
	private String registDay;
	private String state;
	private String personId;
	private String title;
	private String eid;
	
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getAnimal() {
		return animal;
	}
	public void setAnimal(String animal) {
		this.animal = animal;
	}
	public String getRegistDay() {
		return registDay;
	}
	public void setRegistDay(String registDay) {
		this.registDay = registDay;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPersonId() {
		return personId;
	}
	public void setPersonId(String personId) {
		this.personId = personId;
	}
	
	public static EApplication getInstance(){
		if(instance == null){
			instance = new EApplication();
		}
		return instance;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}

	private static EApplication instance;
}
