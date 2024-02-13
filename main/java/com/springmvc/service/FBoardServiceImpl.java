package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.FBoard;
import com.springmvc.repository.FBoardRepository;

@Service
public class FBoardServiceImpl implements FBoardService{
	
	@Autowired
	FBoardRepository fboardRepository;
	
	public List<FBoard> getAllFBoards() {
		return fboardRepository.getAllFBoards();
	}
	public FBoard getFBoardById(String b_id) {
		return fboardRepository.getFBoardById(b_id);
		
	}
	
	public void setFBoard(FBoard board) {
		fboardRepository.setFBoard(board);
	}
	@Override
	public void updateFBoard(FBoard board,String b_id) {
		fboardRepository.updateFBoard(board,b_id);
	}
	
	public void deleteFBoard(String boardId) {
		fboardRepository.deleteFBoard(boardId);
	}
	
	public List<FBoard> getFBoardsByTitle(String title) {
		return fboardRepository.getFBoardsByTitle(title);
	}
}
