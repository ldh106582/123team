<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세정보 페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script>

</script>
</head>
<body>
	<%
		request.setAttribute("type", session.getAttribute("type"));
		request.setAttribute("checktype", "p");
	%>
 <%@  include file="../module/header.jsp" %> 
 
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="/123team/hospitals">
              <i class="fa-solid fa-hospital"></i>
              <span class="menu-title ml-3">반려동물 병원</span>
               <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/products" aria-expanded="false" aria-controls="ui-basic">
              <i class="fa-solid fa-gift"></i>
              <span class="menu-title ml-3">반려동물 상품</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
              <i class="fa-solid fa-cart-shopping"></i>
              <span class="menu-title ml-3">장바구니</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/ENboards" aria-expanded="false" aria-controls="charts">
              <i class="fa-solid fa-dog"></i>
              <span class="menu-title ml-3">체험단</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/Fboards" aria-expanded="false" aria-controls="tables">
              <i class="fa-solid fa-clipboard-question"></i>
              <span class="menu-title ml-3">자유게시판</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="fa-solid fa-user"></i>
              <span class="menu-title  ml-3">My Pages</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/Nboards" aria-expanded="false" aria-controls="error">
              <i class="fa-solid fa-clipboard"></i>
              <span class="menu-title ml-3">공지사항</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/123team/login">
              <i class="fa-solid fa-key"></i>
              <span class="menu-title ml-3">로그인</span>
              <i class="menu-arrow"></i>
            
              <i class="fa-solid fa-right-from-bracket"></i>
              <span class="menu-title ml-3">로그아웃</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
        </ul>
      </nav>
     
         <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                  <h3 class="font-weight-bold"> </h3>
                  <h6 class="font-weight-normal mb-0"></h6>
                </div>
                <div class="col-12 col-xl-4">
                 <div class="justify-content-end d-flex">
                  <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                  </div>
                 </div>
                </div>
              </div>
            </div>
          </div>
          
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021.  Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
          </div>
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Distributed by <a href="https://www.themewagon.com/" target="_blank">Themewagon</a></span> 
          </div>
        </footer> 
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>   
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
 	   <form:form modelAttribute="product" action="/123team/products/creatCart" method="post" enctype="Multipart/form-data">
 	   <input type="hidden" name="productId"  value="${product.productId}">
	   <input type="hidden" name="productName" value="${product.productName}" >
	   <input type="hidden" name="productPrice" value="${product.productPrice}">
	   <input type="hidden" name="productCategory" value="${product.productCategory}" >
	   <input type="hidden" name="productImage" value="${product.productImage}" >
	
			 <c:choose>
                 <c:when test="${product.productImage == null} ">
                     <div class="myphoto">
                         <img src="https://ibb.co/kmbdwzQ" width="56" height="56" alt="내 프로필 이미지">
                     </div>
                    </c:when>
                   <c:otherwise>
                     <div class="myphoto">
                         <img src="<c:url value="/resources/images/ ${product.productImage}"/>" height="56" alt="상품 이미지">
                     </div>
                   </c:otherwise>
             </c:choose>
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
			재고수 : ${product.productUnitStock}
			<p>
			<c:if test="${loginId != null && type != checktype}">
			<input type="submit" value="장바구니추가"/>
			</c:if>
  	   </form:form>
  	<c:if test="${loginId == product.personId}">
	<a href="update?productId=${product.productId}"><button>상품수정</button></a>  <a href="delete?productId=${product.productId}"><button>상품삭제</button></a>
	</c:if>
	<c:if test="${loginId != null && type != checktype}">
	<a class="btn btn-success" href="/123team/products/readcart">내 장바구니</a>
	<a class="btn btn-success" aria-labelledby="exampleModalLabel" href="/123team/products/p_review?personId=${product.personId}">리뷰쓰기</a>
	</c:if>
	<%@ include file="../module/footer.jsp" %>
</body>
</html>