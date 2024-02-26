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
<!-- header -->
   <nav class="navbar navbar-expand navbar-dark bg-danger">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/123team">Home</a>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="/123team/hospital">병원</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/products">동물상품</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/Fboards">게시판</a>
                </li>
 				<c:choose>             
	            <c:when test="${not empty managerId }">
	                	
	                <li class="nav-item">
	                  <a class="nav-link" href="/123team/managerlogin/manager_page?personId=${managerId.personId}">마이페이지</a>
	                </li>
	                
	            </c:when>
	               	<c:otherwise>
		                <li class="nav-item">
		                  <a class="nav-link" href="/123team/login">로그인</a>
		                </li>
	                </c:otherwise>
                </c:choose>
            </div>
        </div>
    </nav>
        <!-- header end -->
        s
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

</body>
</html>