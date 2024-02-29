package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.HospitalReview;
import com.springmvc.repository.HospitalReviewRepository;

@Service
public class HospitalReviewServiceImp implements HospitalReviewService{

	@Autowired
	HospitalReviewRepository hospitalReviewRepository;
	
	@Override
	public List<HospitalReview> getAllReviews(String hid) {
		return hospitalReviewRepository.getAllReviews(hid);
	}

	@Override
	public void addreview(HospitalReview review) {
		hospitalReviewRepository.addreview(review);
		
	}

	@Override
	public HospitalReview getReviewByID(String reviewid) {
		return hospitalReviewRepository.getReviewByID(reviewid);
	}

	@Override
	public void updatereview(HospitalReview review,String reviewid) {
		 hospitalReviewRepository.updatereview(review,reviewid);
	}

	@Override
	public void deletereview(String reviewId) {
		hospitalReviewRepository.deletereview(reviewId);
		
	}

}
