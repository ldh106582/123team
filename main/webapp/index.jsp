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
<!-- 이미지 -->
<link href="<c:url value="/resources/pet/"/>" rel="stylesheet">
  <!-- Required meta tags -->
  <meta charset="utf-8">
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
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="resources/images/logo.jpg" class="mr-2" alt="logo"/></a>
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
        </ul>
      </div>
    </nav>
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



<!-- 
	<header class="intro0">
		<nav class="intro1 head navbar navbar-secondary m-0">
			<div class="intro1">
				<h1 class="text-center">반려동물과 함께하는 즐거운 공간</h1> 
			</div>
		</nav>
		
		<div class="intro2">
			<div class="intro3">
				<div class="intro4 text-center border border-dark">

					<div class="intro5">
						<h4><가족과 같은 반려 동물과 함께 하는 공간입니다.></h4>
						<br><p> <i class="fa-regular fa-user"></i> 병원예약, 반려동물 상품구매, 동물관련 커뮤니케이션, 동물 체험활동을 할 수 있는 공간입니다.
						<p> <i class="fa-solid fa-shield-dog"></i> 나의 반려동물이 어떤 진료를 받았고, 예방접종 내역, 몸무게, 등을 손쉽게 파악할 수 있는 공간이 마련되어 있습니다.
					</div>
					
					<div class="intro6">
						<div class="intro7">
							<a href="ENboards"> 체험단 &raquo;</a>
						</div>
						<div class="intro7">
							<a href="#"> 동물카드 &raquo;</a>
						</div>
					</div>

				</div>

				<div class="intro8">
					<div class="intro9">
						<div class="intro10 border border-dark btn btn-primary p-3 ">	
							<i class="fa-regular fa-hospital"></i>
							<a href="./hospitals" class=" justify-center text-wrap text-white">병원 &raquo;</a>
						</div>
						<div class="intro10 border border-dark btn btn-primary p-3">
							<i class="fa-sharp fa-solid fa-gifts"></i>
							<a href="products" class="justify-center text-white">동물상품 &raquo;</a>
						</div>
					</div>
					
					<div class="intro9">
						<div class="intro10 border border-dark btn btn-primary p-3">
							<i class="fa-solid fa-clipboard-user"></i>
							<a href="Fboards" class="justify-center text-white">게시판 &raquo;</a>
						</div>
						<div class="intro10 border border-dark btn btn-primary p-3">
							<i class="fa-solid fa-right-to-bracket"></i>
							<a href="./login" class=" justify-center text-white">로그인 &raquo;</a>
						</div>
					</div>
				</div>
				<div class="intro11">
					<div class="intro12">
						<div class="intro10 border border-dark btn btn-primary p-3">
							<i class="fa-solid fa-clipboard-user"></i>
							<a href="/123team/Nboards" class="justify-center text-white">공지사항 &raquo;</a>
						</div>
						<p>
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
					</div>
				</div>
			</div>
		</div>
	</header> -->
</body>
</html>
