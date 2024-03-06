<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>통합관리자 회원가입 페이지</title>
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
    <div class="jumbotron">
        <div class="container">
            <h4> 관리자를 위한 회원가입 페이지 입니다.</h4>
        </div>
    </div>

    <br><br><br><br><br>
    
        <div class="mt-5" >
            <div class="col ">
                <div class="col-12 row m-0 text-center justify-content-center">
                    <a href="/123team/managerlogin/Member?type=h" class="p-4  border border-dark col-5 m-1 bg-info text-white rounded" id="hopital">병원관리자 회원가입</a>
                    <a href="/123team/managerlogin/Member?type=p" class="p-4  border border-dark col-5 m-1 bg-danger text-white rounded" id="product">상품관리자 회원가입</a>
                </div>
                
                <div class="col row m-0 text-center justify-content-center">
                    <a href="/123team/managerlogin/Member?type=e" class="p-4  border border-dark col-5 m-1 bg-success text-white rounded" id="exprience">체험단관리자 회원가입</a>
                    <a href="/123team/login/add?type=c" class="p-4  border border-dark col-5 m-1 rounded" id="customer">일반 회원가입</a>
                </div>
            </div>
        </div>
	
	<%@ include file="../module/footer.jsp" %>
</body>
<!-- js -->
<script>
document.addEventListener("DOMContentLoaded", function(){
	 
	var hopital = document.getElementById("hopital");
	var product = document.getElementById("product");
	var exprience = document.getElementById("exprience");
	var customer = document.getElementById("customer");
	
	if(hopital) {
		hopital.addEventListener("click", function(){
			alert("병원관리자 회원가입 페이지로 이동합니다.");
		});
	} 
	
	if(product) {
		product.addEventListener("click", function(){
			alert("상품관리자 회원가입 페이지로 이동합니다.")
		});
	} 
	
	if(exprience){
		exprience.addEventListener("click", function(){
			alert("체험단 회원가입 페이지로 이동합니다.");
		});
	}
	
	if(customer){
		customer.addEventListener("click", function(){
			alert("일반 회원가입 페이지로 이동합니다.");
		})
	}
});
</script>
<
</html>