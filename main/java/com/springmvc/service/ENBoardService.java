package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.EApplication;
import com.springmvc.domain.ENBoard;

public interface ENBoardService {

	List<ENBoard> getAllENBoards();

	ENBoard getENBoardById(String boardId);

	void setNBoard(ENBoard board);

	ENBoard getNBoardById(String boardId);

	void updateENBoard(ENBoard board, String boardId);

	void deleteENBoard(String boardId);

	List<ENBoard> getENBoardsByTitle(String title);

	void addbook(EApplication application);

	List<EApplication> getAllApps(String personId);

	void deletebook(String eid);

	void updatebook(String registDay, String eid);

	List<EApplication> getPermisionList();

	void updateState(String dec, String eid);

}
