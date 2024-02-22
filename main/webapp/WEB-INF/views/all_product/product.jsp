<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
 <%@  include file="../module/header.jsp" %>
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
	  <a href="/123team/products/creatCart?product=${product}"><button>장바구니 담기</button></a> || <a href="update?productId=${product.productId}"><button>상품수정</button></a>  <a href="delete?productId=${product.productId}"><button>상품삭제</button></a>
</body>
</html>