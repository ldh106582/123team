package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.EApplication;
import com.springmvc.domain.ENBoard;

public interface ENBoardRepository {

	List<ENBoard> getAllENBoards();
	ENBoard getENBoardById(String boardId);
	void setENBoard(ENBoard board);
	void updateENBoard(ENBoard board, String boardid);
	void deleteENBoard(String boardId);
	List<ENBoard> getENBoardsByTitle(String title);
	void addbook(EApplication application);
	List<EApplication> getAllApps(String personId);
	void deletebook(String eid);
	void updatebook(String registDay, String eid);
	List<EApplication> getPermisionList();
	void updateState(String dec, String eid);
	
}
