package com.springmvc.repository;

import java.time.LocalDate;
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

	@Override
	public void addProduct(Product product) {
		String SQL = "insert into Product values(?,?,?,?,?,?,?,?,?)";
		
		template.update(SQL,getProductId(),product.getProductName(),product.getProductPrice(),product.getProductCategory(),product.getProductDescribe(), product.getReleaseDate(),product.getProductUnitStock(),product.getProductImage());
	}

//	날짜받기
	public LocalDate getReleaseDate()
	{
		return LocalDate.now();
	}
//	ProductId 생성
	public String getProductId() {
		String str = Long.toString(System.currentTimeMillis()) ;
		return str;
	}

	@Override
	public void updateProduct(Product product, String productId) {
		String SQL = "update Product set ProductName=?,ProductPrice=?,ProductCategory=?,ProductDscription=?,ProductUnitStock=?,ProductImage=? where ProductId='"+productId+"'";
		template.update(SQL,product.getProductName(),product.getProductPrice(),product.getProductCategory(),product.getProductCategory(),product.getProductUnitStock(),product.getProductImage());
	}

	@Override
	public void deleteProduct(String producId) {
		String SQL = "DELETE FROM Product where ProductId='"+producId+"'";
		template.update(SQL);
		
	}
	
}
