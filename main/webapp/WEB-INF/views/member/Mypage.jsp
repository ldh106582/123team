<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.springmvc.domain.Person"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공 페이지</title>
</head>
<body>
<link rel="stylesheet" href="resources/css/Login.css">
<div id="wrap" class="wrap naverid">
<header class="header" role="banner">
    <div class="header_subindex">

    <!--로고/Mypage-->
    <div class="gnb_area">
        <a href="https://www.naver.com/" >
            <span class="blind">네이버</span>
        </a>
        <a href="" class="gnb_title" >
            <h1 class="text"><span class="blind">MYpage</span></h1>
        </a>
    </div>
    <!--프로필-->
    <div class="profile_area">
        <div class="profile_inner">
            <div class="profile">
                <p class="useid">정영회</p>
                <p class="usemail">dudghl530@naver.com</p>
            </div>
        </div>
    </div>
    <div id="headerLeft" class="header_left" aria-hidden="false">
        <ul class="left_menu" role="menu">
            <li>
                <a href="/user2/help/myInfoV2?m=viewProfile&amp;lang=ko_KR" class="left_item" role="menuitem" onclick="nclk(this,'lnb.info','','',event)" aria-current="true">
                    <div class="menu_text ">내정보</div>
                </a>
            </li>
            <li>
                <a href="/user2/help/myInfoV2?m=viewSecurity&amp;lang=ko_KR" class="left_item" role="menuitem" onclick="nclk(this,'lnb.protect','','',event)" aria-current="">
                    <div class="menu_text on">반려동물 정보</div>
                </a>
            </li>
        </ul>
    </div>
</header>
    <div id="container" class="container">
        <!-- container -->
        <div id="content" class="content">
            <div class="subindex_wrap" role="main">
                <div id="headerTop" class="path_area" aria-hidden="false"></div>
            </div>
                <!--기본보안설정-->
<div class="subindex_item">
    <div class="head_title">
        <h2 class="subindex_title">비밀번호 설정</h3>
     </div>
    <div class="subindex_greenbox">
        <ul class="subindex_row">
            <li>
                <div class="row_item step">
                    <form action="">
                        <input type="password" placeholder="비밀번호 입력">
                        <button type="button" class="btn_accent">
                            <span class="text">
                                    설정
                            </span>
                        </button>
                    </form>
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
                   <a href=""><span class="item_text">작성 글 확인</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>

<div class="subindex_item">
    <div class="head_title">
        <h2 class="subindex_title">Q&A</h2>
    </div>
    <div class="subindex_greenbox">
        <ul class="subindex_row">
            <li>
                <div class="row_item other">
                    <a href=""><span class="item_text">작성 글 확인</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>

<div class="subindex_item">
    <div class="head_title">
        <h2 class="subindex_title">체험단</h2>
    </div>
    <div class="subindex_greenbox">
        <ul class="subindex_row">
            <li>
                <div class="row_item other">
                    <a href=""><span class="item_text">체험 신청 글 확인</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>

<footer class="footer" role="contentinfo">
    <div class="footer_home">
        <ul class="guide_link">
            <li>
                <a href="javascript:;" onclick="logout()" class="guide_item">
                    <span class="footer_text">로그아웃</span>
                </a>
            </li>
        </ul>
        <div class="footer_logo"><span class="logo"><span class="blind">네이버</span></span></div>
    </div>
</footer>

	<%-- <p>로그인성공
	
	<p>아이디 : ${ id } 입니다!!
	
	<c:forEach items="${ petName }" var="pet">
		<a href="<c:url value="/login/petcard?petid=${pet.petId}"/>"  class="bte bte-secondary" role="button">나의 반려동물 : ${ pet.petName }</a>
	</c:forEach>
	
	<br>
	<a class="btn btn-Secondary" role="button" href= "./login/update?id=${ id }">회원수정 &raquo;</a>
	<a class="btn btn-Secondary" role="button" id="delete" href= "./login/delete?id=${ id }">회원삭제 &raquo;</a>
	<a class="btn btn-Secondary" role="button" href= "./pet?id=${ id }">반려동물 정보입력 &raquo;</a>
	
</body>
<script>
    document.getElementById('delete').addEventListener("click", function(e){
        if(!confirm("정말로 회원을 삭제하시겠습니까??")){
            e.preventDefault();
        }
    }); --%>
</script>
</html>