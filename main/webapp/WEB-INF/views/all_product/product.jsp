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
 
 	   <form:form modelAttribute="product" action="/123team/products/creatCart" method="post" enctype="Multipart/form-data">
 	   <input type="hidden" name="productId"  value="${product.productId}">
	   <input type="hidden" name="productName" value="${product.productName}" >
	   <input type="hidden" name="productPrice" value="${product.productPrice}">
	   <input type="hidden" name="productCategory" value="${product.productCategory}" >
	   <input type="hidden" name="productImage" value="${product.productImage}" >
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
			<input type="submit" value="장바구니추가"/>
  	   </form:form>
  	      
	<a href="update?productId=${product.productId}"><button>상품수정</button></a>  <a href="delete?productId=${product.productId}"><button>상품삭제</button></a>
	<a class="btn btn-success" href="/123team/products/readcart">내 장바구니</a>
	<a class="btn btn-success" aria-labelledby="exampleModalLabel" href="/123team/products/p_review?personId=${product.personId}">리뷰쓰기</a>
	
	<%@ include file="../module/footer.jsp" %>
</body>
</html>