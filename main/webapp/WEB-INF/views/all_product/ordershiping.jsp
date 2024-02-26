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
				    <c:when test="${not empty managerId and (managerId.type eq 'p' or managerId.type == 'p')}">
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
        <form action="/orders/o_create" class="form-horizontal" method="post">
            <div class="form-group row">
                <label class="col-sm-2"> <i class="fa-solid fa-user col-sm-1"></i> 성명</label>
                <div class="col-sm-3">
                    <input name="" type="text" class="form-control" value="${listOfperson.personName}">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"> <i class="fa-solid fa-phone col-sm-1"></i> 연락처</label>
                <div class="col-sm-3">
                    <input name="" type="text" class="form-control" value="${listOfperson.personPhone}">
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
                    <input name="" type="text" class="form-control" value="${listOfperson.personAddress}">
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