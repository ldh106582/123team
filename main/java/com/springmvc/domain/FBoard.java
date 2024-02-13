package com.springmvc.domain;

public class FBoard {
	
	public FBoard () {
		
	}
	
	public static FBoard getInstance(){
		if(instance == null){
			instance = new FBoard();
		}
		return instance;
	}
	
	private static FBoard instance;
	private String title;
	private String context;
	private String registDay;
	private int num;
	private int hit;
	private String personName;
	private String personId;
	private String boardId;
	private String comment;
	
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
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
	public String getRegistDay() {
		return registDay;
	}
	public void setRegistDay(String RegistDay) {
		this.registDay = RegistDay;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getPersonName() {
		
		return personName;
	}
	public void setPersonName(String PersonName) {
		this.personName = PersonName;
	}
	public String getPersonId() {
		// 세션에서 받아오기
		return personId;
	}
	public void setPersonId(String setPersonId) {
		this.personId = setPersonId;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String BoardId) {
		this.boardId = BoardId;
	}
	
	
}
