package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.domain.ShoppingCart;
    
    
    public class ShoppingCartDBConnector implements RowMapper<ShoppingCart> {
        public ShoppingCart mapRow(ResultSet rs, int rowNum) throws SQLException {
            ShoppingCart shoppingCart = new ShoppingCart();
            shoppingCart.setShoppingCartId(rs.getString("shoppingCartId"));
            shoppingCart.setProductId(rs.getString("productId"));
            shoppingCart.setAmount(rs.getInt("amount"));
            shoppingCart.setPersonId(rs.getString("personId"));
            
            return shoppingCart;
        }
    }

