<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONTokener"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>
<%@page import="javax.net.ssl.HttpsURLConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("type", session.getAttribute("type"));
		request.setAttribute("checktype", "h");
		String x = (String) request.getAttribute("x");
		String y = (String) request.getAttribute("x");
	%>
	
 <%@  include file="../module/header.jsp" %>
      <!-- partial -->
     <div class="container-fluid page-body-wrapper ">
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
                <div class="row no-gutters">
                 
                <div class="show-gird border border-dark col-md-12 row no-gutters">
                    <div class="border border-dark col-md-6">
                      <img> ${hospital.image}
                    </div>
                    <div class="border border-dark col-md-6 no-gutters">
                        <h4 class="col-md-12">병원명 : ${hospital.name} </h4>
                        <p class="col-md-12">병원주소 : ${hospital.addr}</p>
                        
                        <p class="col-md-12">진료시간 : ${hospital.runtime} </p>
                        <p class="col-md-12">전화번호 : ${hospital.number} </p>
                        <p class="col-md-12">주차정보 :  ${hospital.parking}</p>
                    </div>

                    <div class="col-md-12 row no-gutters ">
                      <div class="col-md-4 text-center border" >
                         <a class="btn">병원 위치 상세보기</a>
                      </div>
                      
					<!--리뷰 작성링크 가져오기-->
                      <c:choose>
                        <c:when test="${loginId != null}">
                        <div class="col-md-4 text-center border">
                            <a href="addreview?hid=${hospital.hid}" class="btn">리뷰작성 및 보기</a>
                        </div>
                        </c:when>
                        <c:otherwise>
                          <div class="col-md-4 text-center border">
                             <p class="btn">리뷰보기</p>
                           </div>
                        </c:otherwise>
                      </c:choose>

                      <div class="col-md-4 text-center border">
                        <a class="btn" href="addbook?hid=${hospital.hid}">예약하기</a>
                      </div>
                    </div>
                    
                    <!--병원 지도이미지 가져오기-->
                    
	                     <div id="map"></div>
                      	 <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=dtj7ddq8yk"></script>
						    
	                      
                     
                    
                    
					<c:forEach items="${reviews}" var="review">
						<p>
						등록일 : ${review.registDay}
						<p>
						제목 : ${review.title}
						<p>
						리뷰 점수 : ${review.reviewScore}
						<p>
						사진 : ${review.reviewImage}
						<p>
						내용 : ${review.context}
						<p>
						<c:if test="${loginId ==  review.personId}">
							<a href="editreview?reviewId=${review.reviewId}">리뷰수정</a> || <a href="deletereview?reviewId=${review.reviewId}">리뷰삭제</a>
						</c:if>
					</c:forEach>
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
                </div>
            </div>   
        </div>


  
<%-- 
<c:if test="${loginId ==  hospital.personId}">

	
<<<<<<< HEAD
	
=======
	<%@ include file="../module/footer.jsp" %>
  
<a href="/123team/hospitals">돌아가기</a>
>>>>>>> origin/yeonghoe
<div>

 <%@  include file="../module/headerinfo.jsp" %>
<a href="/123team/hospitals">돌아가기</a>
	<%
		request.setAttribute("loginId", session.getAttribute("personId"));
		request.setAttribute("type", session.getAttribute("type"));
	%>

<p>
병원 사진 : ${hospital.image}
<p>
병원 이름 : ${hospital.name}
<p>
병원 주소 : ${hospital.addr}
<p>
전화번호 : ${hospital.number}
<p>
진료시간 : ${hospital.runtime}
<p>
주차정보 : ${hospital.parking}
<p>
설명 : ${hospital.description}
<p>
<<<<<<< HEAD
<c:if test="${hospital.personId==loginId}">
=======

<a href="update?hid=${hospital.hid}">병원수정</a>
<a href="delete?hid=${hospital.hid}">병원삭제</a>
</c:if>
<c:if test="${loginId != null}">
<a href="addbook?hid=${hospital.hid}">병원예약</a>
</c:if>	
<br>
<h3>reviews</h3>
<c:if test="${loginId != null}">
<a href="addreview?hid=${hospital.hid}">리뷰작성</a>
</c:if>

<c:forEach items="${reviews}" var="review">
<p>
	등록일 : ${review.registDay}
	<p>
	제목 : ${review.title}
	<p>
	리뷰 점수 : ${review.reviewScore}
	<p>
	사진 : ${review.reviewImage}
	<p>
	내용 : ${review.context}
	<p>
	<c:if test="${loginId ==  review.personId}">
	<a href="editreview?reviewId=${review.reviewId}">리뷰수정</a> || <a href="deletereview?reviewId=${review.reviewId}">리뷰삭제</a>
	</c:if>
</c:forEach>

<c:if test="${loginId ==  hospital.personId}">
>>>>>>> origin/yeonghoe
<a href="update?hid=${hospital.hid}">병원수정</a>
<a href="delete?hid=${hospital.hid}">병원삭제</a>
</c:if>
<a href="addbook?hid=${hospital.hid}">병원예약</a>
</div>



<c:forEach items="${reviews}" var="review">
<p>
	등록일 : ${review.registDay}
	<p>
	제목 : ${review.title}
	<p>
	리뷰 점수 : ${review.reviewScore}
	<p>
	사진 : ${review.reviewImage}
	<p>
	내용 : ${review.context}
	<p>
	<c:if test="${loginId ==  review.personId}">
	<a href="editreview?reviewId=${review.reviewId}">리뷰수정</a> || <a href="deletereview?reviewId=${review.reviewId}">리뷰삭제</a>
	</c:if>
</c:forEach>
<<<<<<< HEAD
<%@ include file="../module/footer.jsp" %>
=======

	                    <div class="col-md-12">
	                    	<c:if test="${loginId ==  hospital.personId}">
	                        	<a href="update?hid=${hospital.hid}" class="btn btn-primary">수정하기</a>
	                        <a href="delete?hid=${hospital.hid}" class="btn btn-danger">삭제하기</a>
	                		</c:if>
	               			<c:if test="${loginId != null && type != checktype}">
	                        	<a href="addbook?hid=${hospital.hid}" class="btn btn-success">예약하기</a>
	                      	</c:if>
 --%>
 
</body>
</html>