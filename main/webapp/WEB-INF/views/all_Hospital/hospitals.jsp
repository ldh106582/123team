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

	<%
		request.setAttribute("type", session.getAttribute("type"));
		request.setAttribute("checktype", "h");
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
                        <div class="row">
                            <!--여기서 복붙 시작-->
                            <div class="show-gird no-gutters col-md-12">
                                <div class="col-md-12 no-gutters">
                                    <div  id="slider" class="col-md-12 no-gutters" style="margin: 0 auto; width: 100%; height: 400px; display: flex; margin-bottom: 2%;;">
                                    	<img src="./resources/images/hospital01.jpg" style="width: 100%"; alt="병원이미지01"/>
                                        <img src="./resources/images/hospital02.jpg" style="width: 100%"; alt="병원이미지01"/>
                                        <img src="./resources/images/hospital03.jpg" style="width: 100%"; alt="병원이미지01"/>
                                        <img src="./resources/images/hospital04.jpg" style="width: 100%"; alt="병원이미지01"/>
                                        <img src="./resources/images/hospital05.jpg" style="width: 100%"; alt="병원이미지01"/>
                                        
                                    </div>
                                    
                                    <div class="col-md-12 row no-gutters" style="margin: 0 auto;">
                                        <div class="col-md-9 ">
                                            <div style="border-left: 3px solid red;"> <h4 style="margin-left: 2%;"> 우리 병원 현황</h4>

                                            </div>
                                            <br>
                                            
                                            <h5 style="border-left: 3px solid #FF7EA0; margin-bottom: 3%;"><span class="ml-4">가장 가까운 병원</span></h5>
                                            
	                                            <div class="col-md-12 row card-group no-gutters" style="margin-bottom: 3%;">
	                                            <c:forEach items="${hospitals}" var="hospital">
	                                                
	                                                <div class="col-md-4 row no-gutters card">
	                                                    <div class="col-md-12 card-body no-gutters">
															<c:choose>
															    <c:when test="${not empty hospital.image}">
															        <img class="col-md-12" src="<c:url value='/resources/images/${hospital.image}'/>" height="250" width="150" alt="병원이미지">
															    </c:when>
															    <c:otherwise>
															        <img class="col-md-12" src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg" alt="병원이미지" height="250" width="150" border="0">
															    </c:otherwise>
															</c:choose>
															
	                                                        <p class="card-title" style="margin-top: 7%;">병원명 : ${hospital.name}</p>
	                                                        <p class="card-text" style="margin-top: 4%;">병원안내 : ${hospital.description}</p>
	                                                    </div>
                                                      	<a href="hospitals/hospital?hid=${hospital.hid}" class="btn btn-success">병원 상세보기</a>
	                                                </div>
	                                            </c:forEach>
	                                            
                    						  	</div>
                    						  	
                                            <h5 style="border-left: 3px solid #FFA07A; margin-bottom: 3%;"><span class="ml-4">주차장 있는 병원</span></h5>
                    
	                                            <div class="col-md-12 row card-group no-gutters" style="margin-bottom: 3%;">
	                                            <c:forEach items="${hospitals}" var="hospital">
	                                                
	                                                <div class="col-md-4 row no-gutters card">
	                                                    <div class="col-md-12 card-body no-gutters">
															<c:choose>
															    <c:when test="${not empty hospital.image}">
															        <img class="col-md-12" src="<c:url value='/resources/images/${hospital.image}'/>" height="250" width="150" alt="병원이미지">
															    </c:when>
															    <c:otherwise>
															        <img class="col-md-12" src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg" alt="병원이미지" height="250" width="150" border="0">
															    </c:otherwise>
															</c:choose>
															
	                                                        <p class="card-title" style="margin-top: 7%;">병원명 : ${hospital.name}</p>
	                                                        <p class="card-text" style="margin-top: 4%;">병원안내 : ${hospital.description}</p>
	                                                    </div>
                                                      	<a href="hospitals/hospital?hid=${hospital.hid}" class="btn btn-success">병원 상세보기</a>
	                                                </div>
	                                            </c:forEach>
	                                            
                    						  	</div>
                    
                                            <h5 style="border-left: 3px solid #FFCD63; margin-bottom: 3%;"> <span class="ml-4">우리동네 전체 병원</span></h5>
                    
	                                            <div class="col-md-12 row card-group no-gutters" style="margin-bottom: 3%;">
	                                            <c:forEach items="${hospitals}" var="hospital">
	                                                
	                                                <div class="col-md-4 row no-gutters card">
	                                                    <div class="col-md-12 card-body no-gutters">
															<c:choose>
															    <c:when test="${not empty hospital.image}">
															        <img class="col-md-12" src="<c:url value='/resources/images/${hospital.image}'/>" height="250" width="150" alt="병원이미지">
															    </c:when>
															    <c:otherwise>
															        <img class="col-md-12" src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg" alt="병원이미지" height="250" width="150" border="0">
															    </c:otherwise>
															</c:choose>
															
	                                                        <p class="card-title" style="margin-top: 7%;">병원명 : ${hospital.name}</p>
	                                                        <p class="card-text" style="margin-top: 4%;">병원안내 : ${hospital.description}</p>
	                                                    </div>
                                                      	<a href="hospitals/hospital?hid=${hospital.hid}" class="btn btn-success">병원 상세보기</a>
	                                                </div>
	                                            </c:forEach>
	                                            
                    						  	</div>
                                        </div>
                        
                                        <div class="col-md-3 no-gutters">
                                            <div class="no-gutters col-md-12" style="border-left: 3px solid red;"><h4 class="ml-3" >best 리뷰 </h4>    
                                            </div>
                                            <br>
                                            
                                             <h5 style="border-left: 3px solid red; margin-bottom: 3%;"> <span class="ml-4">별점 5점</span></h5>
                                            
                                            <c:forEach items="${hospitals}" var="hospital">
	                                            <div class="card col-md-12 no-gutters" style="max-width: 540px;">
	                                                <div class="col-md-12 row no-gutters border border-dark">
													<c:choose>
													   <c:when test="${not empty hospital.image}">
														   <img class="col-md-4" src="<c:url value='/resources/images/${hospital.image}'/>" height="150" width="150" alt="병원이미지">
													    </c:when>
														<c:otherwise>
														    <img class="col-md-4" src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg" alt="병원이미지" height="150" width="150" border="0">
														</c:otherwise>
													</c:choose>
	                                                  	<div class="col-md-8 border border-dark">
	                                                        <div class="card-body">
	                                                            <p class="card-text">병원명 : </p>
	                                                            <p class="card-text">리 뷰 : </p>
	                                                            <a href="hospitals/hospital?hid=${hospital.hid}" class="btn btn-success border rounded-pill" style="font-size: 75%; height: 10%; width: 40%;"> 상세보기</a>
	                                                        </div>
		                                                 </div>
	                                                </div>
	                                            </div>
	                                            </c:forEach>
	                                            
	                                        <h5 style="border-left: 3px solid orange; margin-bottom: 3%;" class="mt-3"> <span class="ml-4">별점 4점</span></h5>
                                            
                                            <c:forEach items="${hospitals}" var="hospital">
	                                            <div class="card col-md-12 no-gutters" style="max-width: 540px;">
	                                                <div class="col-md-12 row no-gutters border border-dark">
													<c:choose>
													   <c:when test="${not empty hospital.image}">
														   <img class="col-md-4" src="<c:url value='/resources/images/${hospital.image}'/>" height="150" width="150" alt="병원이미지">
													    </c:when>
														<c:otherwise>
														    <img class="col-md-4" src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg" alt="병원이미지" height="150" width="150" border="0">
														</c:otherwise>
													</c:choose>
	                                                  	<div class="col-md-8 border border-dark">
	                                                        <div class="card-body">
	                                                            <p class="card-text">병원명 : </p>
	                                                            <p class="card-text">리 뷰 : </p>
	                                                            <a href="hospitals/hospital?hid=${hospital.hid}" class="btn btn-success border rounded-pill" style="font-size: 75%; height: 10%; width: 40%;"> 상세보기</a>
	                                                        </div>
		                                                 </div>
	                                                </div>
	                                            </div>
	                                            </c:forEach>
	                                            
	                                       <h5 style="border-left: 3px solid orange; margin-bottom: 3%;" class="mt-3"> <span class="ml-4">별점 3점 이하</span></h5>
                                            
                                            <c:forEach items="${hospitals}" var="hospital">
	                                            <div class="card col-md-12 no-gutters" style="max-width: 540px;">
	                                                <div class="col-md-12 row no-gutters border border-dark">
													<c:choose>
													   <c:when test="${not empty hospital.image}">
														   <img class="col-md-4" src="<c:url value='/resources/images/${hospital.image}'/>" height="150" width="150" alt="병원이미지">
													    </c:when>
														<c:otherwise>
														    <img class="col-md-4" src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg" alt="병원이미지" height="150" width="150" border="0">
														</c:otherwise>
													</c:choose>
	                                                  	<div class="col-md-8 border border-dark">
	                                                        <div class="card-body">
	                                                            <p class="card-text">병원명 : </p>
	                                                            <p class="card-text">리 뷰 : </p>
	                                                            <a href="hospitals/hospital?hid=${hospital.hid}" class="btn btn-success border rounded-pill" style="font-size: 75%; height: 10%; width: 40%;"> 상세보기</a>
	                                                        </div>
		                                                 </div>
	                                                </div>
	                                            </div>
	                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--여기서 복붙 끝-->
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
 
    <div class="container my-3">
        <div class="d-flex justify-content-between">
            <div>
                <h1><img width="50" height="50" src="https://img.icons8.com/ios/50/hospital.png" alt="hospital"/>병원목록</h1>
            </div>
            <c:if test="${type == checktype}">
            <div class="justify-content-end">
                <a href="hospitals/create" class="btn btn-success ">병원 추가</a>
                <a href="hospitals/manageapps">모든신청보기</a>

            </div>
            </c:if>
            <c:if test="${loginId != null && type!=checktype}">
            	<a href="hospitals/mybookList?personId=${loginId}">내 예약 보기</a>            
            </c:if>
        </div>
        <br>
        <div class="row" >
            <c:forEach items="${hospitals}" var="hospital">
                <div class="col" style="padding: 15px;">
                    <div class="border border-secondary rounded " style="width: 350px; height: 300px;">
                        <div class="detail-box">
                            <div class="options">
                                <a href="hospitals/hospital?hid=${hospital.hid}">
                                <img src="${hospital.image}" alt="" width="100%" height="210">
                                </a>
                            </div>
                            <a href="hospitals/hospital?hid=${hospital.hid}" class="text-decoration-none">
                                <h5>${hospital.name}</h5>
                                <p>${hospital.description}</p>
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        </div>
        <br>
        <form action="/123team/hospitals/selectbytitle" class="form-inline my-2 justify-content-center ">
            <input type="text" name="title" placeholder="병원 이름 입력" class="form-control mr-3" />
            <button type="submit" class="btn btn-success">검색</button>
        </form>

	<%@ include file="../module/footer.jsp" %>

<%-- 
<a href="search">병원검색</a>	
 --%>
</body>
<script src="./resources/js/hospitals.js"></script>
</html>