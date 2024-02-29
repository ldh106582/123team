package com.springmvc.repository;

import java.time.LocalDate;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.HospitalReview;

@Repository
public class HospitalReviewRepositoryImp implements HospitalReviewRepository{

	private JdbcTemplate template;
	
	 @Autowired
	 public void setJdbctemplate(DataSource dataSource) {
	     this.template = new JdbcTemplate(dataSource);
	 }
	 
	@Override
	public List<HospitalReview> getAllReviews(String hid) {
		String SQL = "select * from HospitalReview where hid='"+hid+"'";
		List<HospitalReview> list = template.query(SQL, new HospitalReviewRowMapper());
		return list;
	}

	
	
	@Override
	public void addreview(HospitalReview review) {
		String SQL = "insert into HospitalReview values(?,?,?,?,?,?,?,?)";
		template.update(SQL,review.getHid(),review.getPersonId(),review.getTitle(),review.getContext(),review.getReviewScore(),review.getReviewImage(),getRegistDay(),CreatereviewId());
		
	}
//	날짜받기
	public LocalDate getRegistDay()
	{
		return LocalDate.now();
	}
//	댓글Id 생성
	public String CreatereviewId() {
		String str = Long.toString(System.currentTimeMillis()) ;
		return str;
	}

	@Override
	public HospitalReview getReviewByID(String reviewid) {
		String SQL = "select * from HospitalReview";
		HospitalReview review = null;
		List<HospitalReview> list = template.query(SQL, new HospitalReviewRowMapper());
		for(int i =0;i<list.size();i++) {
			review=list.get(i);
			if(review.getReviewId().equals(reviewid)) {
				
				break;
			}
		}
		return review;
	}

	@Override
	public void updatereview(HospitalReview review,String reviewid) {
		String SQL = "update HospitalReview set title=?,context=?,reviewScore=?,reviewImage=? where ReviewId='"+reviewid+"'";
		template.update(SQL,review.getTitle(),review.getContext(),review.getReviewScore(),review.getReviewImage());
		
	}

	@Override
	public void deletereview(String reviewId) {
		String SQL = "delete from HospitalReview where ReviewId='"+reviewId+"'";
		template.update(SQL);
	}
}
