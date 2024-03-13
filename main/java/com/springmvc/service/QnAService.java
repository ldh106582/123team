package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.QnA;

public interface QnAService {
	List<QnA> getAllQnAList(String productId);
	void addQnA(QnA QnA);
	void updateQnA(QnA QnA,String QnAId);
}
