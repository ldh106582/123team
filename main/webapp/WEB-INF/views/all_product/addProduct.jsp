<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

 <%@ include file="../module/header.jsp" %>

<!-- header start -->
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
    
 <h1>상품추가 페이지</h1>
 <form:form modelAttribute="product" method="POST">
 	<p>
 	상품명 : <form:input path="productName"/>
 	<p>
 	카테고리 : <form:input path="productCategory"/>
 	<p>
 	상품가격 :<form:input path="productPrice"/>
 	<p>
 	상품설명 : <form:input path="productDescribe"/>
 	<p>
 	<!-- 멀티파츠 추가해야함 -->
 	상품사진 : <form:input path="productImage"/>
 	<p>
 	상품재고수 : <form:input path="productUnitStock"/>
 	<p>
 	등록하기 : <input type="submit">
 	<p>
 </form:form>
 
 <%@ include file="../module/footer.jsp" %>
</body>
</html>