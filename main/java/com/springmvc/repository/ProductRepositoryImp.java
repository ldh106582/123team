package com.springmvc.repository;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.springmvc.domain.Order;
import com.springmvc.domain.Person;
import com.springmvc.domain.Product;
import com.springmvc.domain.ProductReview;


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
	// product 전체 구매목록을 가져옴
	@Override
	public List<ProductReview> getp_Orderdate(String productId) {
		String SQL = "select * from ProductReview where productId=?";
		List<ProductReview> listOfProductReview = new ArrayList<ProductReview>();
		listOfProductReview = template.query(SQL, new Object[] {productId} ,new ProductReviewDBConnector());
	    if (!listOfProductReview.isEmpty()) {
	        // 리스트의 크기를 확인하여 올바른 인덱스 사용
	        System.out.println(listOfProductReview.get(0));
	    } else {
	        System.out.println("리스트가 비어 있습니다.");
	    }
		return listOfProductReview;
	}
	
	

	//리뷰 값을 db에 담는 함수
	@Override
	public void setproductReview(ProductReview productReview) {
		String SQL = "insert into ProductReview (context, ReviewScore, purchaseTime, title, productId, personId, reviewImage) values(?,?,?,?,?,?,?)";
		template.update(SQL, productReview.getContext(), productReview.getReviewScore(), productReview.getPurchaseTime(), productReview.getTitle(),
				productReview.getProductId(), productReview.getPersonId(), productReview.getReviewImage());
	}
	// 상품을 작성했던 리뷰 내용을 수정하는 함수
	@Override
	public ProductReview getUpdateReview(String personId, int reviewId) {
		ProductReview productReview = null;
		String SQL = "select * from ProductReview where personId=? and reviewId=?";
		productReview = template.queryForObject(SQL, new Object[] {personId, reviewId}, new ProductReviewDBConnector());
		return productReview;
	}
	// 상품을 작성했던 리뷰 내용을 수정하는 함수
	@Override
	public void setUpdateReview(ProductReview productReview, int reviewId) {
		
		String SQL = "UPDATE ProductReview SET title=?, ReviewScore=?, context=? where reviewId=?";
		template.update(SQL, productReview.getTitle(), productReview.getReviewScore(), productReview.getContext(), productReview.getReviewId());
	}
	// 리뷰를 삭제하는 함수
	@Override
	public void setdeleteReview(int reviewId) {
		String SQL = "delete from ProductReview where reviewId=?";
		template.update(SQL, reviewId);
	}
	
	
	
	
	
}
