<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body><%-- 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./resources/js/refreshing.js"></script>

<div id="header">
		<%@  include file="../module/header.jsp" %>
	</div>
<div class="container-fluid page-body-wrapper">
 		<%@  include file="../module/leftheader.jsp" %> --%>
 		${nothing}
 			매출 : ${sales}
	주문수 : ${orders}
	내가 올린 상품 수 : ${numofproduct}
		<c:forEach items="${permissionlist}" var="list">
		<br>
		상품 이름 : ${list.productName}
		상품 ID : ${list.productId}
		주문 갯수 : ${list.amount}
		상품 가격 : ${list.price}
		총 가격  : ${list.totalPrice}
		주문자 이름 : ${list.personId}
		배송지 주소 : ${list.personAddress}
		주문일 : ${list.orderDate}
		
		<a href="permit?dec=승인&num=${list.oderNum}">승인</a>
		<a href="permit?dec=거절&num=${list.oderNum}">거절</a>
	</c:forEach>
<!-- </div> -->
</body>
</html>