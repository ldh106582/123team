<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.springmvc.domain.type" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>products 페이지</title>
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
 	<c:if test="${type == checktype }">
		<a href="products/add">상품추가</a>
	</c:if>
    <div class="contianer">
        <div class="show-gird no-gutters">
            <div class="col-md-12 border border-dark no-gutters">
                <div class="col-md-10 border border-dark no-gutters" style="margin: 0 auto; width: 100%; height: 400px; display: flex; margin-bottom: 2%;;">
                   <img src="resources/images/001.jpg" alt="Image 1" style="width: 100%"/>
                   <img src="resources/images/002.jpg" alt="Image 2" style="width: 100%"/>
                   <img src="resources/images/003.jpg" alt="Image 3" style="width: 100%"/>
                   <img src="resources/images/004.jpg" alt="Image 4" style="width: 100%"/>
                   <img src="resources/images/005.jpg" alt="Image 5" style="width: 100%"/>
                   <img src="resources/images/001.jpg" alt="Image 6" style="width: 100%"/>
                </div>
                
                <div class="col-md-10 row no-gutters" style="margin: 0 auto;">
                    <div class="col-md-7 border border-dark ">
                        <div style="border-left: 3px solid red; margin-left: 3%;"> <h4 style="margin-left: 2%;"> 123 상점 상품 보기 </h4>
                        </div>
                        <br>
                        
                        <h5 style="border-left: 3px solid #FF7EA0; margin-left: 3%; margin-bottom: 3%;">강아지 상품</h5>
                        
                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>

                        <h5 style="border-left: 3px solid #FFA07A; margin: 3%;">고양이 상품</h5>

                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>

                        <h5 style="border-left: 3px solid #FFCD63; margin: 3%;">토끼 상품</h5>

                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>

                        <h5 style="border-left: 3px solid #D5CABD; margin: 3%;">기니피그 상품</h5>

                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>

                        <h5 style="border-left: 3px solid #65BAA9; margin: 3%;">파충류 상품</h5>

                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>

                        <h5 style="border-left: 3px solid #1E0764; margin: 3%;">기타 반려동물 상품</h5>

                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>
                        
                    </div>
    
                    <div class="col-md-5 border border-dark ">
                        <div class="no-gutters col-md-12" style="border-left: 3px solid red;"></h4 style="margin-left: 2%;">원하는 상품 보기 </h4>
                            <div class="col-md-12 no-gutters ml-1" style="display: flex;">
                                <span class="btn border rounded-pill" >사료</span><span class="btn ml-1 border rounded-pill">간식</span> <span class="btn ml-1 border rounded-pill">집</span> <span class="btn ml-1 border rounded-pill">산책</span> <span class="btn ml-1 border rounded-pill">기타</span>
                            </div>    
                        </div>
                        <br>
                        <div class="card mb-3" style="max-width: 540px;">
                            <div class="row no-gutters">
                                <div class="col-md-4 border">
                                    <img src="" class="card-img" alt="">이미지 들어갈 곳
                                </div>
                              <div class="col-md-8">
                                    <div class="card-body">
                                        <p class="card-text">상품명 : </p>
                                        <p class="card-text">가격 : </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <div class="col-md-2 border border-dark"></div>

 
 	<%@ include file="../module/footer.jsp" %>
</body>
</html>