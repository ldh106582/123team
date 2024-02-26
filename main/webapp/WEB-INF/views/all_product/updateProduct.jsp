<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<%@  include file="../module/header.jsp" %>
<h1>상품 수정페이지</h1>

<form:form modelAttribute="product">
	<input type="hidden" value="${aproduct.productId}"/>  
	상품명 : <form:input path="productName" value="${aproduct.productName}"/>
	<p>
	카테고리 : <form:input path="productCategory" value="${aproduct.productCategory}"/>
	<p>
	가격 : <form:input path="productPrice" value="${aproduct.productPrice}"/>
	<p>
	상품설명 : <form:input path="productDescribe" value="${aproduct.productDescribe}"/>
	<p>
	재고수 : <form:input path="productUnitStock" value="${aproduct.productUnitStock}"/>
	<p>
	<!-- 멀티파츠 -->
	상품사진 : <form:input path="productImage" value="${aproduct.productImage}"/>
	<input type="submit" value="수정하기">
</form:form>
	
	<%@ include file="../module/footer.jsp" %>
</body>
</html>