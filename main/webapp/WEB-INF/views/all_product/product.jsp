<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세정보 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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

 	<form action="/123team/products/creatCart" method="get">
 		<input type="hidden" name="productId" value="${product.productId}">
 		<input type="hidden" name="productName" value="${product.productName}">
 		<input type="hidden" name="productCategory" value="${product.productCategory}">
 		<input type="hidden" name="productPrice" value="${product.productPrice}">
 		<input type="hidden" name="releaseDate" value="${product.releaseDate}">
 		<input type="hidden" name="personId" value="${product.personId}">
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
  	      <input type="submit" value="장바구니 담기">
	</from>
     <a href="update?productId=${product.productId}"><button>상품수정</button></a>  <a href="delete?productId=${product.productId}"><button>상품삭제</button></a>
	  <a class="btn btn-success" href="/123team/products/readcart?personId=${product.personId}">내 장바구니</a>
</body>
</html>