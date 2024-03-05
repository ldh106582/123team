<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>상품 추가 페이지</title>
</head>
<body>

 <%@  include file="../module/headerdanger.jsp" %>

 <h1>상품추가 페이지</h1>
 <form:form modelAttribute="product" method="POST" enctype="multipart/form-data">
 	<p>
 	상품명 : <form:input path="productName"/>
 	<p>
 	상품 카테고리 : <form:input path="productCategory"/>
 	<p>
 	동뮬 카테고리 : 강아지 <form:radiobutton path="animalCategory" value="강아지"/>
			 	 고양이 <form:radiobutton path="animalCategory" value="고양이"/>
			 	 토끼 <form:radiobutton path="animalCategory" value="토끼"/>
			 	 기니피그 <form:radiobutton path="animalCategory" value="기니피그"/>
			 	 파춯류 <form:radiobutton path="animalCategory" value="파춯류"/>
			 	 기타 <form:radiobutton path="animalCategory" value="기타"/>
 	<p>
 	상품가격 :<form:input path="productPrice"/>
 	<p>
 	상품설명 : <form:input path="productDescribe"/>
 	<p>
 	상품재고수 : <form:input path="productUnitStock"/>
 	<p>
 	이미지 : <input type="file" name="p_image" value="productImage">
 	<p>
 	등록하기 : <input type="submit">
 	
 </form:form>
 
 <%@ include file="../module/footer.jsp" %>
</body>
</html>