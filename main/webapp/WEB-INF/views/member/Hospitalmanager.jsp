<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.springmvc.domain.*" %>
<%@ page import="com.springmvc.controller.*" %>
<!DOCTYPE html>
<html>
<head>
	<!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="EUC-KR">
<title>병원관리자 회원가입 페이지</title>
</head>
<body>
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

    <div class="jumbotron">
        <div class="container">
            <legend id="id"><h2>병원관리자 회원가입 페이지입니다.</h2></legend>
        </div>
    </div>
    <div class="container">
     <form:form modelAttribute="hospitalMember" action="./addmanager?type=${type}" method="post" enctype="multipart/form-data">
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
           <label class="col-sm-2 control-label">  생년월일 </label>
		   <div class="col-4">
			  <form:input type="text" path="personBirth" class="control-label"/>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 control-label"> 주소 </label>
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
            <label class="col-sm-2 control-label"> 동물병원명  </label>  
            <div class="col-4">
                <form:input type="text" path="hospitalName" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
              <label class="col-sm-2 control-label"> 병원주소 </label>  
            <div class="col-4">
                <form:input type="text" path="hospitalAddress" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 병원번호 </label>  
            <div class="col-4">
                <form:input type="text" path="hospitalPhone" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 사업자등록증 </label>  
            <div class="col-4">
                <input type="file" name="s_image" class="control-label" required="required"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 의사면허증 </label>  
            <div class="col-4">
                <input type="file" name="h_image" class="control-label" required="required"/>
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
                System.out.println("jsp페이지 : " + type);
                session.setAttribute("type", type);
        %>
        
        <div class="form-group row">
            <input type="submit" class="btn btn-primary"/>
        </div> 
		</div>
    </fieldset>
    </form:form>
</body>
</html>