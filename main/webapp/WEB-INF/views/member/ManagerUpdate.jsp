<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@page import="com.springmvc.domain.*"%>
<!--  부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="UTF-8">
<title>관리자 회원 수정 페이지</title>
</head>
<body>
<%
		
	String type = (String) session.getAttribute("type");
	request.setAttribute("type", type);
		
%>
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
	<c:choose>
		<c:when test="${type eq 'p' }" >
		
		    <div class="jumbotron">
		        <div class="container">
		            <legend id="id"><h2>product 관리자 회원수정 페이지 입니다.</h2></legend>
		        </div>
		    </div>
		    
		    <div class="container">
			<form:form modelAttribute="managerupdate" action="/123team/login/update" method="post" enctype="Multipart/form-data">
	    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<fieldset>
				<div class="form-group row">
			   		<label class="col-sm-2 control-label"> 아이디  </label>
			   		<div class="col-5"> ${u_productMember.personId}
					    <form:hidden path="personId" value="${u_productMember.personId}" class="rounded"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 비밀번호 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="password" path="personPw" value="${u_productMember.personPw}"/>
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 이메일 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="email" path="personEmail" value="${u_productMember.personEmail}"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 이름 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personName" value="${u_productMember.personName}"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 주소 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personAddress" value="${u_productMember.personAddress}"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 날짜 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="date" path="personBirth" value="${u_productMember.personBirth}"/>
					</div>
				</div>
	
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 개인번호 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personPhone"  value=" ${u_productMember.personPhone}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 성별 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="personSex"  value=" ${u_productMember.personSex}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 회사명 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="companyName" value="${u_productMember.companyName}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 회사주소 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="companyAddress" value="${u_productMember.companyAddress}" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 회사번호 </label>
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="companyPhone" value="${u_productMember.companyPhone}" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 사업자등록증 </label>
					<div class="col-4">
						<input class="border border-success rounded" type="file" name="s_file" />
					</div>
				</div>
				
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-primary" value="회원정보수정"/>
					</div>
				</div>
				
			</fieldset>
			</form:form>
			</div>
			<hr>
			</c:when>
			
			<c:when test="${type eq 'e' }" >
			 <div class="jumbotron">
			    		<!-- 체험단 관리자 update -->
		        <div class="container">
		            <legend id="id"><h2>체험단 담당자님 회원수정 페이지 입니다.</h2></legend>
		        </div>
		    </div>
		    
		    <div class="container">
			<form:form modelAttribute="ex_manager" action="/123team/login/update" method="post" enctype="Multipart/form-data">
	    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<fieldset>
			
				<div class="form-group row">
			   		<label class="col-sm-2 control-label"> 아이디  </label>
			   		<div class="col-5"> ${ex_person.personId}
					    <form:hidden path="personId" value="${ex_person.personId}" class="rounded"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 비밀번호 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="password" path="personPw" value="${ex_person.personPw}"/>
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 이메일 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="email" path="personEmail" value="${ex_person.personEmail}"/>
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 주소 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personAddress" value="${ex_person.personAddress}"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 이름 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personName" value="${ex_person.personName}"/>
					</div>
				</div>
	
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 개인번호 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personPhone"  value="${ex_person.personPhone}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 생년월일 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="date" path="personBirth"  value=" ${ex_person.personBirth}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 성별 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="personSex"  value="${ex_person.personSex}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 체험단명 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="ex_Name" value="${ex_Manager.ex_Name}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 체험단주소 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="ex_Address" value="${ex_Manager.ex_Address}" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 체험단번호 </label>
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="ex_Phone" value="${ex_Manager.ex_Phone}" />
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 사업자등록증 </label>
					<div class="col-4">
						<input class="border border-success rounded" type="file" name="s_file" />
					</div>
				</div>
				
				
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-primary" value="회원정보수정"/>
					</div>
				</div>
			</fieldset>
			</form:form>
			</div>
			</c:when>

	
		<c:otherwise>
			    <div class="jumbotron">
			    		<!-- 병원 관리자 update -->
		        <div class="container">
		            <legend id="id"><h2>병원 의사선생님 회원수정 페이지 입니다.</h2></legend>
		        </div>
		    </div>
		    
		    <div class="container">
			<form:form modelAttribute="hospitalupdate" action="/123team/login/update" method="post" enctype="Multipart/form-data">
	    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<fieldset>
			
				<div class="form-group row">
			   		<label class="col-sm-2 control-label"> 아이디  </label>
			   		<div class="col-5"> ${u_hospitalMember.personId}
					    <form:hidden path="personId" value="${u_hospitalMember.personId}" class="rounded"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 비밀번호 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="password" path="personPw" value="${u_hospitalMember.personPw}"/>
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 이메일 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="email" path="personEmail" value="${u_hospitalMember.personEmail}"/>
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 주소 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personAddress" value="${u_hospitalMember.personAddress}"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 이름 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personName" value="${u_hospitalMember.personName}"/>
					</div>
				</div>
	
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 개인번호 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personPhone"  value="${u_hospitalMember.personPhone}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 생년월일 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="date" path="personBirth"  value=" ${u_hospitalMember.personBirth}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 성별 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="personSex"  value="${u_hospitalMember.personSex}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 병원명 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="hospitalName" value="${u_hospitalMember.hospitalName}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 병원주소 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="hospitalAddress" value="${u_hospitalMember.hospitalAddress}" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 병원번호 </label>
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="hospitalPhone" value="${u_hospitalMember.hospitalPhone}" />
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 사업자등록증 </label>
					<div class="col-4">
						<input class="border border-success rounded" type="file" name="s_file" />
					</div>
				</div>
				
				
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-primary" value="회원정보수정"/>
					</div>
				</div>
			</fieldset>
			</form:form>
			</div>
			<hr>
		</c:otherwise>
		</c:choose>
	<%@ include file="../module/footer.jsp" %>
</body>
</html>