package com.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;

public interface QnAcommentservice {
	
	void addcomment(String QnAId, String comment, String commentId);
}
