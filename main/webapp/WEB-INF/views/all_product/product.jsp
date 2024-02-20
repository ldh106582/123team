<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%@  include file="../module/header.jsp" %>
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
	재고수 : ${product.productUnitstock}
	<p>
	  <a href="#"><button>상품주문</button></a>
</body>
</html>