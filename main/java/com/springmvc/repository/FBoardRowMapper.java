package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.FBoard;

public class FBoardRowMapper implements RowMapper<FBoard>{

	@Override
	public FBoard mapRow(ResultSet rs, int rowNum) throws SQLException {
		FBoard board = new FBoard();
		board.setNum(rs.getInt(1));
		board.setPersonId(rs.getString(2));
		board.setPersonName(rs.getString(3));
		board.setContext(rs.getString(4));
		board.setTitle(rs.getString(5));
		board.setHit(rs.getInt(6));
		board.setRegistDay(rs.getString(7));
		board.setBoardId(rs.getString(8));
		board.setComment(rs.getString(9));
		return board;
	}
	
	

}
