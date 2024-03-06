<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/8759f784cf.js" crossorigin="anonymous"></script>
<!-- css  수정 필요-->
<link rel="stylesheet" href="/resources/css/shoppingcart.css">
<meta charset="UTF-8">
<title>배송정보 페이지</title>
</head>
<body>
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
           
	  <div class="jumbotron">
		  <div class="contianer">
			 <h2 class="dislpay-2"> <i class="fa-solid fa-truck-fast"></i> 배송 정보 확인</h2>
		  </div>
	  </div>
	  <%
	  	LocalDateTime time = LocalDateTime.now();
	 	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	 	String noewfomatter = LocalDateTime.now().format(formatter);
	  	LocalDate newDate = LocalDate.now().plusDays(3);
	  %>
	  <br>
	  
      <div class="container">
        <form action="/123team/orders/o_complete" class="form-horizontal" method="post">
        <input type="hidden" name="personId" value="${person.personId }"/>
        <input type="hidden" name="personName" value="${person.personName}"/> <!-- 이름 -->
        <input type="hidden" name="personPhone" value="${person.personPhone}"/> <!-- 연락처 -->
        <input type="hidden" name="personAddress" value="${person.personAddress}"/> <!-- 주소 -->
            <div class="form-group row">
                <label class="col-sm-2"> <i class="fa-solid fa-user col-sm-1"></i> 성명</label>
                <div class="col-sm-3">
                    <input name="" type="text" class="form-control" value="${person.personName}">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"> <i class="fa-solid fa-phone col-sm-1"></i> 연락처</label>
                <div class="col-sm-3">
                    <input name="" type="text" class="form-control" value="${person.personPhone}">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"> <i class="fa-solid fa-clock col-sm-1"></i> 주문일</label>
                <div class="col-sm-3">
                    <input name="" type="text" class="form-control" value="<%= noewfomatter %>"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"> <i class="fa-solid fa-calendar-days col-sm-1"></i> 배송예정</label>
                <div class="col-sm-3">
                    <input name="" type="text" class="form-control" value="<%= newDate %>"/>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2"> <i class="fa-solid fa-location-dot col-sm-1"></i> 주소</label>
                <div class="col-sm-3">
                    <input name="" type="text" class="form-control" value="${person.personAddress}">
                </div>
            </div>
            <br><br>
            <div class="form-group row">
                <div class="col-sm-4 col-sm-6">
                    <a href="#" class="btn btn-success col-sm-3" style="font-size: 15px">이전</a>
                    <a href="#" class="btn btn-success col-sm-3" style="font-size: 15px">취소</a>
                    <input type="submit" value="주문완료" class="btn btn-info col-sm-3" style="font-size: 15px"/>
                </div>
                
            </div>
        </form>
	  </div>
	  
      <div class="container">
			<table>
			
			</table>
	  </div>
</body>
</html>