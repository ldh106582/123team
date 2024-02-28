<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="/123team/resources/css/Mypage.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@  include file="../module/headerinfo.jsp" %>
	
	 <div id="wrap" class="wrap naverid ">
		<header class="header" role="banner">
		    <div class="header_subindex">
		        <!--로고/Mypage-->
		        <div class="gnb_area">
		            <a href="#" class="text-decoration-none" >
		                <h1 class="">예약정보확인</h2>
		            </a>
		        </div>
		    </div>
		    <!--프로필-->
		    <div class="profile_area">
		        <div class="profile_inner">
		        	<a href="#" onclick="changeImage()" class="photo">
			            <img src="https://static.nid.naver.com/images/web/user/default.png" width="84" height="84" alt="프로필 이미지">
			            <span class="photo_edit"></span>
		            </a>
		            <div class="profile">
		                <p class="useid">${ id.personId }</p>
		                <p class="usemail">${id.personEmail }</p>
		            </div>
		        </div>
		    </div>
		    <div id="headerLeft" class="header_left" aria-hidden="false">
		        <ul class="left_menu" role="menu">
		            <li>
		               <a href="#" class="left_item" role="menuitem">
		                   <div class="menu_text">내정보</div>
		               </a>
		            </li>
		            <li>
		               <a href="./login/logout" class="left_item" role="menuitem" >
		                   <div class="menu_text ">로그아웃</div>
		               </a>
		            </li>
		        </ul>
		    </div>
		</header>
	    <div id="container" class="container ">
	        <!-- container -->
	        <div id="content" class="content">
	            <div class="subindex_wrap" role="main">
	                <div id="headerTop" class="path_area" aria-hidden="false"></div>
	            </div>                        
		        <!--병원 예약 정보-->
		        <div class="subindex_item">
		            <div class="head_title">
		                <h2 class="subindex_title">병원명</h2>
                        <div class="title_link">
                            <a href="booking/update" ><span class="text">수정하기</span></a>
                        </div>
                    </div>>  
		            <div class="subindex_greenbox">
		                <ul class="subindex_row">
		                    <li>
		                        <div class="row_item other">
		                            <a href="" class="text-decoration-none"><span class="item_text">반려동물 이름</span></a>
		                        </div>  
		                    </li>
                            <li>
		                        <div class="row_item other">
		                            <a href="" class="text-decoration-none"><span class="item_text">품종</span></a>
		                        </div>  
		                    </li>
                            <li>
		                        <div class="row_item other">
		                            <a href="" class="text-decoration-none"><span class="item_text">나이</span></a>
		                        </div>  
		                    </li>
                            <li>
		                        <div class="row_item other">
		                            <a href="" class="text-decoration-none"><span class="item_text">예약자명</span></a>
		                        </div>  
		                    </li>
                            <li>
		                        <div class="row_item other">
		                            <a href="" class="text-decoration-none"><span class="item_text">연락처</span></a>
		                        </div>  
		                    </li>
                            <li>
		                        <div class="row_item other">
		                            <a href="" class="text-decoration-none"><span class="item_text">진료받을 내용</span></a>
		                        </div>  
		                    </li>
		                </ul>
		            </div>
		        </div>
			</div>
	    </div>
	</div>
	
	<%@ include file="../module/footer.jsp" %>
</body>
</html>