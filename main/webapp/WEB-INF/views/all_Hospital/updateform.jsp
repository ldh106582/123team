<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">  
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<div class="container my-3">
    <h1>병원 수정 페이지</h1>
   <form:form modelAttribute="hospital" method="POST">
      <div class="form-group">
        <label for="title">병원명 :</label>
        <form:input path="name" value="${hospital.name}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="title">병원 주소 :</label>
        <form:input path="addr" value="${hospital.addr}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="title">진료시간 :</label>
        <form:input path="runtime" value="${hospital.runtime}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="title">전화번호 :</label>
        <form:input path="number" value="${hospital.number}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="title">주차정보 :</label>
        <form:input path="parking" value="${hospital.parking}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="context">설명 :</label>
        <%-- <form:input path="description" class="form-control" style="height: 300px;" name="description" value="${board.description}"/> --%>
        <form:input path="description" value="${hospital.description}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="title">병원이미지 :</label>
        <form:input path="image" type="file" class="form-control"/>
      </div>
      <button type="submit" class="btn btn-primary">등록</button>
      <a href="/delete?boardId=${board.boardId}" class="btn btn-danger">삭제</a>
    </form:form>
  </div>
  
  <%@ include file="../module/footer.jsp" %>

<%-- 
<form:form modelAttribute="hospital" method="POST">
	<p>
		병원 이름 : <form:input path="name" value="${hospital.name}"/>
		<p>
		병원 주소 : <form:input path="addr" value="${hospital.addr}"/>
		<p>
		전화번호 : <form:input path="number" value="${hospital.number}"/>
		<p>
		진료시간 : <form:input path="runtime" value="${hospital.runtime}"/>
		<p>
		설명 : <form:input path="description" value="${hospital.description}"/>
		<p>
		주차정보 : <form:input path="parking" value="${hospital.parking}"/>
		<p>
		사진 : <form:input path="image" value="${hospital.image}"/>
		<p>
		<input type="hidden" value="${hospital.hid}">
		<input type="submit" value="수정완료">
	</form:form>

 --%>
</body>
</html>