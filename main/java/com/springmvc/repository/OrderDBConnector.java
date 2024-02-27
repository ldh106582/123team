package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.domain.Order;

public class OrderDBConnector implements RowMapper<Order>{
	public Order mapRow(ResultSet rs, int rowNum) throws SQLException{
		Order order = new Order();
		order.setOderNum(rs.getInt("oderNum"));
		order.setProductId(rs.getString("productId"));
		order.setProductName(rs.getString("productName"));
		order.setAmount(rs.getInt("amount"));
		order.setPrice(rs.getInt("price"));
		order.setOrderDate(rs.getString("orderDate"));
		order.setTotalPrice(rs.getInt("totalPrice"));
		order.setPersonId(rs.getString("personId"));
		order.setPersonName(rs.getString("personName"));
		order.setPersonName(rs.getString("personPhone"));
		order.setPersonAddress(rs.getString("personAddress"));
		
		return order;
	}
}
