package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.HospitalReview;

public interface HospitalReviewService {

	List<HospitalReview> getAllReviews(String hid);

	void addreview(HospitalReview review);

	HospitalReview getReviewByID(String reviewid);

	void updatereview(HospitalReview review, String reviewid);

	void deletereview(String reviewId);

}
