<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.springmvc.domain.*" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!-- css -->
<link rel="stylesheet" href="../resources/css/Mypage.css">
<meta charset="UTF-8">
<title>manager My page</title>
</head>
<body>
<<<<<<< HEAD

   <%@  include file="../module/headerdark.jsp" %>
   
=======
   <!-- header start -->
   <nav class="navbar navbar-expand navbar-dark bg-dark">
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
	            <c:when test="${not empty managerId }">
	                	
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
>>>>>>> fa9e400f8ceb5c1826ec622c185d981968432be3
  <%
    HttpSession sessions = request.getSession();
    String type = (String) session.getAttribute("type");
    System.out.println("mypage type : " + type);
   %>
   
<!-- 관리자 구분 -->
   <div id="wrap" class="wrap naverid ">
      <header class="header" role="banner">
          <div class="header_subindex">
              <!--로고/Mypage-->
              <div class="gnb_area">
                  <a href="#" class="text-decoration-none" >
                      <h2 class="">ManagerPage</h2>
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
                      <p class="useid">${ productMember.personId } 님 </p>
                      <p class="usemail">${productMember.companyName } 사장님</p>
                  </div>
              </div>
          </div>
          
          <div id="headerLeft" class="header_left" aria-hidden="false">
              <ul class="left_menu" role="menu">
                  <li>
                     <a href="" class="left_item" role="menuitem">
                         <div class="menu_text">내정보</div>
                     </a>
                  </li>
                  <li>
      
                     <a href="./login/petcard" class="left_item" role="menuitem" >
                         <div class="menu_text ">펫 카드</div>
                     </a>
      
                      <a href="login/petcard" class="left_item" role="menuitem" >
                          <div class="menu_text ">펫 카드</div>
                      </a>
      
                  </li>
                  <li>
                     <a href="./pet?id=${ productMember.personId }" class="left_item" role="menuitem" >
                         <div class="menu_text ">반려동물 회원가입</div>
                     </a>
                  </li>
                  <li>
                     <a href="../login/logout" class="left_item" role="menuitem" >
                         <div class="menu_text " id="logout">로그아웃</div>
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
                       <h2 class="subindex_title">내 정보 수정</h2>
                   </div>
               </div>
               <div class="subindex_greenbox">
                   <ul class="subindex_row">
                       <li>
                           <div class="row_item other">
                               <a href="/123team/managerlogin/managerudpate?personId=${ productMember.personId }" class="text-decoration-none"><span class="item_text">내 정보 수정</span></a>
                           </div>
                       </li>
                       <li>
                           <div class="row_item other">
                               <a href="/123team/managerlogin/ManagerDelete?managerid=${ productMember.personId }" class="text-decoration-none" id="delete"><span class="item_text">회원 탈퇴</span></a>
                           </div>
                       </li>
                   </ul>
               </div>
        
          		<hr>
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
	           
	          <!--상품관리자 상품 정보-->
	            <div class="subindex_item">
	                <div class="head_title">
	                    <h2 class="subindex_title">상품 관리</h2>
	                </div>
	                <div class="subindex_greenbox">
	                    <ul class="subindex_row">
	                        <li>
	                            <div class="row_item other">
	                                <a href="" class="text-decoration-none"><span class="item_text">상품 조회/수정</span></a>
	                            </div>
	                        </li>
	                        <li>
	                            <div class="row_item other">
	                                <a href="" class="text-decoration-none"><span class="item_text">상품등록</span></a>
	                            </div>
	                        </li>
	                        <li>
	                            <div class="row_item other">
	                                <a href="" class="text-decoration-none"><span class="item_text">주문 내역 조회</span></a>
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
	                          	 <a href="" class="text-decoration-none"><span class="item_text">작성 글 확인</span></a>
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
	                               <a href="" class="text-decoration-none"><span class="item_text">체험 신청 글 확인</span></a>
	                           </div>
	                       </li>
	                   </ul>
	               </div>
	           </div>
       		</div>
		</div>
</body>
<!-- js -->
<script src="../resources/js/Mypage.js"></script>

</html>