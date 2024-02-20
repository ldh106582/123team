package com.springmvc.domain;

public class HospitalReview {
	int number; // 게시글 번호
	String reviewdate; // 작성일
	String review; // 제목
	String reviewscore; // 별점수
	String reviewcontext; // 리뷰내용
	String reviewimage; // 리뷰이미지
	
	public HospitalReview() {}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getReviewdate() {
		return reviewdate;
	}

	public void setReviewdate(String reviewdate) {
		this.reviewdate = reviewdate;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getReviewscore() {
		return reviewscore;
	}

	public void setReviewscore(String reviewscore) {
		this.reviewscore = reviewscore;
	}

	public String getReviewcontext() {
		return reviewcontext;
	}

	public void setReviewcontext(String reviewcontext) {
		this.reviewcontext = reviewcontext;
	}

	public String getReviewimage() {
		return reviewimage;
	}

	public void setReviewimage(String reviewimage) {
		this.reviewimage = reviewimage;
	}

	
	
}
