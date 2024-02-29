<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세정보 페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script>

</script>
</head>
<body>

 <%@  include file="../module/headerdanger.jsp" %>

 	<form action="/123team/products/creatCart" method="get">
 		<input type="hidden" name="productId" value="${product.productId}">
 		<input type="hidden" name="productName" value="${product.productName}">
 		<input type="hidden" name="productCategory" value="${product.productCategory}">
 		<input type="hidden" name="productPrice" value="${product.productPrice}">
 		<input type="hidden" name="releaseDate" value="${product.releaseDate}">
 		<input type="hidden" name="personId" value="${product.personId}">
	 	<p>
		상품ID : ${product.productId}
		<p>
		상품명 : ${product.productName}
		<p>
		카테고리 : ${product.productCategory}
		<p>
		가격 : ${product.productPrice}
		<p>
		등록일 : ${product.releaseDate}
		<p>
		상품설명 : ${product.productDescribe}
		<p>
		상품사진 : ${product.productImage}
		<p>
		재고수 : ${product.productUnitStock}
		<p>
  	      <input type="submit" value="장바구니 담기">
	</from>
     <a href="update?productId=${product.productId}"><button>상품수정</button></a>  <a href="delete?productId=${product.productId}"><button>상품삭제</button></a>
	 <a class="btn btn-success" href="/123team/products/readcart?personId=${product.personId}">내 장바구니</a>
	 <a class="btn btn-success" aria-labelledby="exampleModalLabel" href="/123team/products/p_review?personId=${product.personId}">리뷰쓰기</a>


	<h2>상품의 리뷰입니다.</h2>	
	<c:forEach items="${listOfProductReview}" var="productReview" >
		<c:choose>
			<c:when test="${product.personId eq productReview.personId}">
		
			<p>${productReview.context }  <a href="/123team/products/u_review?personId=${productReview.personId}&reviewId=${productReview.reviewId}" class="btn btn-warning m-1">수정</a>
										  <a href="/123team/products/d_review?reviewId=${productReview.reviewId}" class="btn btn-danger">삭제</a>
			</c:when>
			<c:otherwise>
				<p>${productReview.context }</p> 
			</c:otherwise>
		</c:choose>
			
	</c:forEach>

	
	<%@ include file="../module/footer.jsp" %>
</body>
</html>