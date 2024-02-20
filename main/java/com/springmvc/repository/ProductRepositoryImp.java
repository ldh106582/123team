package com.springmvc.repository;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Product;

@Repository
public class ProductRepositoryImp implements ProductRepository{
	
	 private JdbcTemplate template;

	 @Autowired
	 public void setJdbctemplate(DataSource dataSource) {
		 this.template = new JdbcTemplate(dataSource);
	 }

	@Override
	public List<Product> getProductsList() {
		String SQL = "select * from Product";
		List<Product> list = template.query(SQL, new ProductRowMapper());
		return list;
	}

	@Override
	public Product getProductById(String productId) {
		String SQL = "select * from Product";
		List<Product> list = template.query(SQL, new ProductRowMapper()); 
		Product p = null;
		for(int i=0;i<list.size();i++) {
			p = list.get(i);
			if(p.getProductId().equals(productId)) {
				break;
			}
		}
		return p;
	}
}
