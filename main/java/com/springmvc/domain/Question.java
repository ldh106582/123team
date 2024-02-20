package com.springmvc.domain;

public class Question {
	int number; // 게시글번호
	String name; // 작성자명
	String title; // 제목
	String context; // 내용
	int hit; // 조회수
	String registDay; // 작성일
	
	public Question() {
		// TODO Auto-generated constructor stub
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getRegistDay() {
		return registDay;
	}

	public void setRegistDay(String registDay) {
		this.registDay = registDay;
	}

	
	
	
}
