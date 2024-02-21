package com.springmvc.domain;

public class userinfo {
	
	public userinfo() {
		
	}
	
	private static userinfo instance;
	
	public static userinfo getInstance(){
		if(instance == null){
			instance = new userinfo();
		}
		return instance;
	}

	private String personId;
	private String personName;
	
	
	public String getPersonId() {
		return personId;
	}

	public void setPersonId(String personId) {
		this.personId = personId;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}
}
