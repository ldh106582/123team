<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
 <%@  include file="../module/header.jsp" %>
 <h1>상품 페이지</h1>
 <c:forEach items="${productList}" var="product">
 	<p>
 	사진 : ${product.productImage}
 	<p>
 	이름 : ${product.productName}
 	<p>
 	가격 : ${product.productPrice}
 	<p>
 	카테고리 : ${product.productCategory}
 	<p>
 	<a href="products/product?productId=${product.productId}"><button>상세정보</button></a>   <a href="#"><button>상품주문</button></a>
 </c:forEach>
</body>
</html>