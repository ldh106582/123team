<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.springmvc.domain.Manager" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-expand navbar-dark bg-success">
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
                <c:when test=${empty managerId }>
                	
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
    
 <h1>상품 페이지</h1>
 <a href="products/add"><button>상품추가</button></a>
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
 
 <div>
 	<a href="/123team/managerlogin/ManagerDelete?managerid=${managerId.personId}">회원삭제</a>
 </div>
 
</body>
</html>