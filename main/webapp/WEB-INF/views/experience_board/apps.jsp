<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.springmvc.domain.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
<script type="text/javascript">
	function changed(eid,registday) {
			var container = document.getElementById("container"+eid);
			var delp = document.getElementById("willdelete"+eid);
			var addp = document.getElementById("addp"+eid);
			
			console.log(eid);
			container.removeChild(delp);
			container.removeChild(addp);
			
			var form = document.createElement("form");
			form.setAttribute("action","/123team/ENboards/updateapp");
			form.setAttribute("method","POST");
			
			var inputT = document.createElement("input");
			inputT.setAttribute("type","hidden");
			inputT.setAttribute("name","eid");
			inputT.setAttribute("value",eid);
			
			var inputD = document.createElement("input");
			inputD.setAttribute("type","datetime-local");
			inputD.setAttribute("name","registDay");
			inputD.setAttribute("value",registday);
			
			var inputO = document.createElement("input");
			inputO.setAttribute("type","hidden");
			inputO.setAttribute("name","originday");
			inputO.setAttribute("value",registday);
			
			var inputs = document.createElement("input");
			inputs.setAttribute("type","submit");
			inputs.setAttribute("value","변경하기");
			
			var button = document.createElement("button");
			button.setAttribute("onclick",cancelForm());
			var buttonText = document.createTextNode("취소");
			button.appendChild(buttonText);
			
			form.appendChild(inputT);
			form.appendChild(inputD);
			form.appendChild(inputs);
			form.appendChild(inputO);
			form.appendChild(button);
			
			container.appendChild(form);
	}
	function cancelForm() {
         var form = document.querySelector("form");
         if (form) {
             form.remove();
         }
     }
</script>
</head>
<body>


 <%@  include file="../module/header.jsp" %>
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
 
 <div class="container">
    <h2 class="my-3">내 체험단 예약현황</h2>
    <a href="/123team/ENboards" class="btn btn-primary mb-3">체험단 공고글 목록으로 돌아가기</a>

    <c:forEach items="${applist}" var="app">
        <div class="card mb-3">
            <div class="card-body" id="container${app.eid}">
                <h5 class="card-title">${app.title}</h5>
                <p class="card-text">${app.experience}</p>
                <p class="card-text">${app.animal}</p>
                <p class="card-text">${app.state}</p>
                <p class="card-text" id="willdelete${app.eid}">예약일 : <span >${app.registDay}</span></p>
              	<button class="btn btn-primary" onclick="changed('${app.eid}','${app.registDay}')" id="addp${app.eid}" >날짜 변경</button>
            </div>
            <div class="card-body" >
            <a href="deleteapp?eid=${app.eid}" class="btn btn-danger">예약 삭제</a>
            </div>
            
        </div>
    </c:forEach>
</div>

	<%@ include file="../module/footer.jsp" %>
 <%-- 
=======
   <nav class="navbar navbar-expand navbar-dark bg-success">
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
>>>>>>> fa9e400f8ceb5c1826ec622c185d981968432be3
	<h2>내 체험단 예약현황</h2>
	<a href="/123team/ENboards">체험단 공고글 목록으로 돌아가기</a>
	<p>
	-------------------------------------------------------------------------------
	<c:forEach items="${applist}" var="app">
			<p>
			체험 제목 :${app.title}
			<p>
			체험 :${app.experience}
			<p>
			동물 :${app.animal}
			<p>
			처리상태 :${app.state}
			
		<div id="container">
			<b id="willdelete${app.eid}">예약일 : ${app.registDay}</b>
			<button onclick="changed('${app.eid}','${app.registDay}')" id="addp${app.eid}" >날짜 변경</button>
		</div>
		<p>
		<a href="deleteapp?eid=${app.eid}"><button>예약 삭제</button></a>
		<p>
		-------------------------------------------------------------------------------
	</c:forEach>
	 --%>
	
</body>
</html>