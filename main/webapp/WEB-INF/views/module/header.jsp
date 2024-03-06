<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/8759f784cf.js" crossorigin="anonymous"></script>
<!-- css -->
<link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet">
<!-- 이미지 -->
<link href="<c:url value="/resources/pet/"/>" rel="stylesheet">
<!-- Required meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Skydash Admin</title>
<!-- plugins:css -->
<link href="<c:url value="/resources/css/vendors/feather/feather.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/vendors/ti-icons/css/themify-icons.css"/>" rel="stylesheet">
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
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>

	<%
		request.setAttribute("loginId", session.getAttribute("personId"));
		request.setAttribute("type", session.getAttribute("type"));
		request.setAttribute("checktype", "c");
	%>
	<div class="container-scroller">
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
		    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
		        <a class="navbar-brand brand-logo mr-5" href="/123team"><img src="/resources/images/logo.jpg" class="mr-2" alt="logo"/></a>
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
	
<!-- 	<nav class="navbar navbar-expand navbar-dark bg-success">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/123team">Home</a>
			</div>
			<div class="collapse navbar-collapse justify-content-end" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="/123team/hospitals"><img width="24" height="24" src="https://img.icons8.com/doodle/48/hospital--v1.png" alt="hospital--v1"/>병원</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/123team/products"><img width="24" height="24" src="https://img.icons8.com/external-photo3ideastudio-lineal-color-photo3ideastudio/24/external-pet-shop-pet-shop-photo3ideastudio-lineal-color-photo3ideastudio.png" alt="external-pet-shop-pet-shop-photo3ideastudio-lineal-color-photo3ideastudio"/>동물상품</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/123team/Fboards"><img width="24" height="24" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/24/external-board-police-flaticons-lineal-color-flat-icons-2.png" alt="external-board-police-flaticons-lineal-color-flat-icons-2"/>게시판</a>
					</li>
					<c:choose>
						<c:when test="${loginId == null}">
							<li class="nav-item">
								<a class="nav-link" href="/123team/login"><img width="24" height="24" src="https://img.icons8.com/stickers/24/unlock.png" alt="unlock"/>로그인</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="nav-item">
								<a class="nav-link" href="/123team/login/mypage"><img width="24" height="24" src="https://img.icons8.com/external-filled-outline-icons-maxicons/24/external-member-borrow-book-filled-outline-filled-outline-icons-maxicons.png" alt="external-member-borrow-book-filled-outline-filled-outline-icons-maxicons"/>마이페이지</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav> -->
	
	
	
</body>
</html>