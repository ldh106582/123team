<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.springmvc.domain.Person"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<%@ page import="com.springmvc.domain.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="/123team/resources/css/Mypage.css">
<meta charset="UTF-8">
<title>로그인 성공 페이지</title>
</head>
<body>

	<%@ include file="../module/memberheader.jsp" %>

	<div id="wrap" class="wrap naverid ">
		<header class="header" role="banner">
		    <div class="header_subindex">
		        <!--로고/Mypage-->
		        <div class="gnb_area">
		            <a href="#" class="text-decoration-none" >
		                <h1 class="">MyPage</h2>
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

		               <div class="left_item" role="menuitem" >
		                   <div class="menu_text ">펫 카드</div>
		               </div>
						<c:forEach items="${petName}" var="petName">
							<a href="./login/petcard?petid=${petName.petId}" class="left_item" role="menuitem">
								<div>${petName.petName }</div>
							</a>
						</c:forEach>
		            </li>
		            <li>
		               <a href="./pet/creatpet?id=${ id.personId }" class="left_item" role="menuitem" >
		                   <div class="menu_text ">반려동물 회원가입</div>
		               </a>
		            </li>
		            <li>
		               <a href="/123team/login/logout" class="left_item" role="menuitem" >
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
	            <div class="subindex_item">
	                <div class="head_title">
	                    <h2 class="subindex_title">내 정보 수정</h3>
	                </div>
		            <div class="subindex_greenbox">
		                <ul class="subindex_row">
		                    <li>
		                        <div class="row_item other">
		                            <a href="./login/update?id=${ id.personId }" class="text-decoration-none"><span class="item_text">내 정보 수정</span></a>
		                        </div>
		                    </li>
		                    <li>
		                        <div class="row_item other">
		                            <a href="./login/delete?id=${ id }" class="text-decoration-none" id="delete"><span class="item_text">회원 탈퇴</span></a>
		                        </div>
		                    </li>
		                </ul>
		            </div>
	        	</div>
		        <!--병원 예약 정보-->
		        <div class="subindex_item">
		            <div class="head_title">
		                <h2 class="subindex_title">병원 예약 정보</h2>
		            </div>
		            <div class="subindex_greenbox">
		                <ul class="subindex_row">
		                    <li>
		                        <div class="row_item other">
		                            <a href="" class="text-decoration-none"><span class="item_text">예약 확인</span></a>
		                        </div>
		                    </li>
		                </ul>
		            </div>
		        </div>
		        <!--주문 정보-->
		        <div class="subindex_item">
		            <div class="head_title">
		                <h2 class="subindex_title">주문목록</h2>
		            </div>
		            <div class="subindex_greenbox">
		                <ul class="subindex_row">
		                    <li>
		                        <div class="row_item other">
		                            <a href="" class="text-decoration-none"><span class="item_text">주문 내역 확인</span></a>
		                        </div>
		                    </li>
		                </ul>
		            </div>
		        </div>
		        <!--게시판-->
		        <div class="subindex_item">
		            <div class="head_title">
		                <h2 class="subindex_title">게시판</h2>
		            </div>
		            <div class="subindex_greenbox">
		                <ul class="subindex_row">
		                    <li>
		                        <div class="row_item other">
		                        <a href="/123team/Fboards?myId=${id.personId}" class="text-decoration-none"><span class="item_text">작성 글 확인</span></a>
		                        </div>
		                    </li>
		                </ul>
		            </div>
		        </div>
		        <!--Q&A-->
		        <div class="subindex_item">
		            <div class="head_title">
		                <h2 class="subindex_title">Q&A</h2>
		            </div>
		            <div class="subindex_greenbox">
		                <ul class="subindex_row">
		                    <li>
		                        <div class="row_item other">
		                            <a href="" class="text-decoration-none"><span class="item_text">작성 Q&A 확인</span></a>
		                        </div>
		                    </li>
		                </ul>
		            </div>
		        </div>
		        <!--체험단-->
		        <div class="subindex_item">
		            <div class="head_title">
		                <h2 class="subindex_title">체험단</h2>
		            </div>
		            <div class="subindex_greenbox">
		                <ul class="subindex_row">
		                    <li>
		                        <div class="row_item other">
		                            <a href="/123team/ENboards/applist" class="text-decoration-none"><span class="item_text">체험 신청 글 확인</span></a>
		                        </div>
		                    </li>
		                </ul>
		            </div>
		        </div>
			</div>
	    </div>
	</div>
	<%@  include file="../module/footer.jsp" %>

</body>
<!-- js -->
<script src="./resources/js/Mypage.js"></script>
</html>