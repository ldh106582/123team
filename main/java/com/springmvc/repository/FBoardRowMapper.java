package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.FBoard;

public class FBoardRowMapper implements RowMapper<FBoard>{

	@Override
	public FBoard mapRow(ResultSet rs, int rowNum) throws SQLException {
		FBoard board = new FBoard();
		board.setPersonName(rs.getString(1));
		board.setPersonId(rs.getString(2));
		board.setContext(rs.getString(3));
		board.setTitle(rs.getString(4));
		board.setHit(rs.getInt(5));
		board.setRegistDay(rs.getString(6));
		board.setBoardId(rs.getString(7));
		return board;
	}
	
	

}
