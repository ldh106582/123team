<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.springmvc.domain.*" %>
<%@ page import="com.springmvc.controller.*" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="UTF-8">
<title>상품관리자 회원가입 페이지입니다.</title>
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
            <legend id="id"><h2>상품관리자 회원가입 페이지입니다.</h2></legend>
        </div>
    </div>
    <div class="container">
     <form:form modelAttribute="productMember" action="./productmanager?${ _csrf.parameterName }=${ _csrf.token }" method="post" enctype="multipart/form-data">
     <fieldset>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 아이디 </label>  
            <div class="col-3">
                <form:input id="userId" type="text" path="personId" class="control-label"/>
            </div>
			<div id="confirm" class="col-2"> 
			    <button onclick="idDuplicateCheck(event)" id="idConfirmBtn" class="btn btn-secondary">중복확인</button>
			</div>
        </div>    
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 비밀번호 </label>  
            <div class="col-4">
                <form:input type="password" path="personPw" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
             <label class="col-sm-2 control-label"> 이메일 </label>  
            <div class="col-4">
                <form:input type="text" path="personEmail" class="control-label" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 이름 </label>  
            <div class="col-4">
                <form:input type="text" path="personName" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 생년월일 </label>  
            <div class="col-4">
                <form:input type="Date" path="personBirth" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 집주소 </label>  
            <div class="col-4">
                <form:input type="text" path="personAddress" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 개인번호 </label>  
            <div class="col-4">
                <form:input type="text" path="personPhone" class="control-label"/>
            </div>
        </div>
        
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 회사명  </label>  
            <div class="col-4">
                <form:input type="text" path="companyName" class="control-label"/>
            </div>
        </div>

        <div class="form-group row">
              <label class="col-sm-2 control-label"> 회사주소 </label>  
            <div class="col-4">
                <form:input type="text" path="companyAddress" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 회사번호 </label>  
            <div class="col-4">
                <form:input type="text" path="companyPhone" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 사업자등록증 </label>  
            <div class="col-4">
                <input type="file" name="s_file" class="control-label" required="required"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 ccontrol-label"> 성별 </label>
			<div class="col-4">
				<form:radiobutton path="personSex" value="남자" class="col-sm-1"/>남자
				<form:radiobutton path="personSex" value="여자" class="ml-3"/>여자
			</div>
		</div>
        <%
        	String type = request.getParameter("type");
            System.out.println("manager 회원가입 jsp페이지 : " + type);
            session.setAttribute("type", type);
        %>
        
        <div class="form-group row">
            <input type="submit" class="btn btn-primary"/>
        </div> 
		</div>
    </fieldset>
    </form:form>
    
    <%@ include file="../module/footer.jsp" %>

</body>
<!-- js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function idDuplicateCheck(event){
	 event.preventDefault();
	 
	var userId = document.getElementById("userId").value;
	console.log("userId");
	
	if(userId === "") {
		alert("아이디를 입력해주세요");
		return;
	}
	
	$.ajax({
		type: 'get',
		url: '/123team/managerlogin',
		contentType: 'application/json;',
		dataType: 'text',
		data: {
			"userId":userId, 
		},
		success : function(result) {
			if(result === "true"){
			isIdCheck = true;
			alert("사용 가능한 아이디 입니다.")
			} else {
				isIdCheck = false;
				alert("이미 사용중인 아이디 입니다.")
			}
		},
		error : function(request, status, error){
			console.log(request);
		}
	});
}
</script>

</html>
