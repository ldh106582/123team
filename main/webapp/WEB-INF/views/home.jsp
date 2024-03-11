<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<!--  부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/8759f784cf.js" crossorigin="anonymous"></script>
<!-- css -->
<link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/pet/"/>" rel="stylesheet">
<!-- Required meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Skydash Admin</title>
<!-- plugins:css -->
<link href="<c:url value="/resources/css/vendors/feather/feather.css"/>" rel="stylesheet">
<link href="<c:url value="resources/css/vendors/ti-icons/css/themify-icons.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/vendors/css/vendor.bundle.base.css"/>" rel="stylesheet">
<!-- endinject -->
<link href="<c:url value="/resources/css/vendors/datatables.net-bs4/dataTables.bootstrap4.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/vendors/ti-icons/css/themify-icons.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/text/css"/>">
<!-- inject:css -->
<link href="<c:url value="/resources/css/vertical-layout-light/style.css"/>" rel="stylesheet">
<!-- End plugin css for this page -->
<!-- endinject -->
<link href="<c:url value="/resources/css/images/favicon.png"/>" rel="stylesheet">
<link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>

 	<div class="container-scroller">
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
		    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
		        <a class="navbar-brand brand-logo mr-5" href="/123team"><img src="resources/images/logo.jpg" class="mr-2" alt="logo"/></a>
		    </div>
		    <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
		        <ul class="navbar-nav mr-lg-2">
		            <li class="nav-item nav-search d-none d-lg-block">
		                <div class="input-group">
		                    <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
		                        <span class="input-group-text" id="search">
		                            <i class="icon-search"></i>
		                        </span>
		                    </div>
		                    <input type="text" class="form-control" id="navbar-search-input" placeholder="Search now" aria-label="search" aria-describedby="search">
		                </div>
		            </li>
		        </ul>
		
		        <ul class="navbar-nav navbar-nav-right">
		            <li class="nav-item dropdown">
		                <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
		                    <i class="icon-bell mx-0"></i>	
		                    <span class="count"></span>
		                </a>
		                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
		                    <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
		                    <a class="dropdown-item preview-item">
		                        <div class="preview-thumbnail">
		                            <div class="preview-icon bg-success">
		                                <i class="ti-info-alt mx-0"></i>
		                            </div>
		                        </div>
		                
		                        <div class="preview-item-content">
		                            <h6 class="preview-subject font-weight-normal">Application Error</h6>
		                            <p class="font-weight-light small-text mb-0 text-muted">
		                            Just now
		                            </p>    
		                        </div>
		                    </a>
		                    <a class="dropdown-item preview-item">
		                        <div class="preview-thumbnail">
		                            <div class="preview-icon bg-warning">
		                                <i class="ti-settings mx-0"></i>
		                            </div>
		                        </div>
		                        <div class="preview-item-content">
		                            <h6 class="preview-subject font-weight-normal">Settings</h6>
		                            <p class="font-weight-light small-text mb-0 text-muted">
		                            Private message
		                            </p>
		                        </div>
		                    </a>
		                    <a class="dropdown-item preview-item">
		                        <div class="preview-thumbnail">
		                            <div class="preview-icon bg-info">
		                                <i class="ti-user mx-0"></i>
		                            </div>
		                        </div>
		                        <div class="preview-item-content">
		                            <h6 class="preview-subject font-weight-normal">New user registration</h6>
		                            <p class="font-weight-light small-text mb-0 text-muted">
		                            2 days ago
		                            </p>
		                        </div>
		                    </a>
		                </div>
		            </li>
		            <li class="nav-item nav-profile dropdown">
		                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
		                    <img src="https://static.nid.naver.com/images/web/user/default.png" width="40" height="40" alt="프로필 이미지">
		                </a>
		                <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
		                    <a class="dropdown-item">
		                        <i class="ti-settings text-primary"></i>
		                        Settings
		                    </a>
		                    <a class="dropdown-item">
		                        <i class="ti-power-off text-primary"></i>
		                        Logout
		                    </a>
		                </div>
		            </li>
		            <li class="nav-item nav-settings d-none d-lg-flex">
		                <a class="nav-link" href="#">
		                    <i class="icon-ellipsis"></i>
		                </a>
		            </li>
		        </ul>
		    </div>
		</nav>
	</div>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial -->
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
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/123team/login">
                        <i class="fa-solid fa-right-from-bracket"></i>
                        <span class="menu-title ml-3">로그아웃</span>
                        <i class="menu-arrow"></i>
                    </a>
                </li>
            </ul>
        </nav>
   <!--시작 -->
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
                                            <div style="border-left: 3px solid red;"> <h4 style="margin-left: 2%;"> 우리 홈페이지 현황</h4>

                                            </div>
                                            <br>
                                            
                                            <h5 style="border-left: 3px solid #FF7EA0; margin-bottom: 3%;"><span class="ml-4">best 별점 병원</span></h5>
                                            
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
                    						  	
                                            <h5 style="border-left: 3px solid #FFA07A; margin-bottom: 3%;"><span class="ml-4">best 별점 상품</span></h5>
                    
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
                    
                                            <h5 style="border-left: 3px solid #FFCD63; margin-bottom: 3%;"> <span class="ml-4">체험단 현황</span></h5>
                    
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
                                            <div class="no-gutters col-md-12" style="border-left: 3px solid red;"><h4 class="ml-3" >공지사항 </h4>    
                                            </div>
                                            <br>   
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
	                                                            <p class="card-text">공지사항 제목 : </p>
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
                    </div>
                </div>
             </div>
                        
   <!--끝 -->
	 
    <footer class="footer">
      <div class="d-sm-flex justify-content-center justify-content-sm-between">
        <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021.  Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
      </div>
      <div class="d-sm-flex justify-content-center justify-content-sm-between">
        <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Distributed by <a href="https://www.themewagon.com/" target="_blank">Themewagon</a></span> 
      </div>
    </footer> 
  
  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="vendors/chart.js/Chart.min.js"></script>
  <script src="vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="js/dataTables.select.min.js"></script>

  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <script src="js/Chart.roundedBarCharts.js"></script>
  <!-- End custom js for this page-->

						<%
							Connection conn = null;
						   	Statement stmt = null;
						  	ResultSet rs = null;
						   
						   try {
						      // JDBC 드라이버를 로드합니다.
						      Class.forName("com.mysql.jdbc.Driver");
						      
						      // DB에 연결합니다.
						      String url = "jdbc:mysql://localhost:3306/123team_db";
						      String username = "root";
						      String password = "1234";
						      conn = DriverManager.getConnection(url, username, password);
						      
						      // SQL 쿼리를 실행합니다.
						      String sql = "SELECT * FROM NBoard";
						      stmt = conn.createStatement();
						      rs = stmt.executeQuery(sql);
						      int i = 1;
						      // 결과를 처리합니다.
						      while (rs.next()) {
						         // 각 행의 데이터를 가져옵니다.
						         
						         String title = rs.getString(3);
						         int hit = rs.getInt(4);
						         String registDay = rs.getString(5);
						         String boardId = rs.getString(6);
						         
						         request.setAttribute("title", title);
						         request.setAttribute("hit", hit);
						         request.setAttribute("registDay", registDay);
						         request.setAttribute("boardId", boardId);
						         request.setAttribute("num", i);
						         i++;
						         if(i==7){
						        	 break;
						         }
						 %>
						 		<div class="border border-dark" >
						 			<a href="Nboards/Nboard?boardId=${boardId}">${num} 제목 : ${title} 조회수 : ${hit} 등록일 : ${registDay}</a>
						 		</div>
						<%
		
						      }
						   } catch (Exception e) {
						      e.printStackTrace();
						   } finally {
						      // 사용한 자원을 정리합니다.
						      if (rs != null) {
						         try { rs.close(); } catch (SQLException e) { }
						      }
						      if (stmt != null) {
						         try { stmt.close(); } catch (SQLException e) { }
						      }
						      if (conn != null) {
						         try { conn.close(); } catch (SQLException e) { }
						      }
						   }
						%> 
</body>
<script src="/resources/js/hospitals.js"></script>
</html>
<!-- 2024-03-11  merge 완료 -->