<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>상품관리자 회원가입 페이지입니다.</title>
</head>
<body>
	    <nav class="navbar navbar-expand navbar-danger bg-danger p-3">
	        <div class="container ">
	            <div class="navbar-header">
	                <a class="navbar-brandb text-white" href="./">Home</a>
	            </div>
	            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
	              <ul class="navbar-nav">
	                <li class="nav-item">
	                  <a class="nav-link active text-white" href="./hospital">병원</a>
	                </li>
	                <li class="nav-item">
	                  <a class="nav-link text-white" href="./product">동물상품</a>
	                </li>
	                <li class="nav-item">
	                  <a class="nav-link text-white" href="Fboards">게시판</a>
	                </li>
	                <li class="nav-item">
	                  <a class="nav-link text-white" href="./login">로그인</a>
	                </li>
	            </div>
	        </div>
	    </nav>
    
	    <div class="jumbotron">
	        <div class="container">
	            <legend><h2>상품관리자 회원가입 페이지입니다.</h2></legend>
	        </div>
	    </div>
        <div class="container">
	     <form:form modelAttribute="productMember" action="./productmanager?${ _csrf.parameterName }=${ _csrf.token }" method="post" enctype="multipart/form-data">
         <fieldset>
            <div class="form-group row">
               <label class="col-sm-2 control-label"> 아이디 </label>  
                <div class="col-4">
                    <form:input type="text" path="personId" class="control-label"/>
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
                <label class="col-sm-2 control-label"> 개인번호 </label>  
                <div class="col-4">
                    <form:input type="text" path="personphone" class="control-label"/>
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
                    <form:input type="text" path="companyphone" class="control-label"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 control-label"> 사업자등록증 </label>  
                <div class="col-4">
                    <input type="file" path="companyregistrationimg" class="control-label"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 control-label"> 통신판매신고증 </label>  
                <div class="col-4">
                    <input type="file" path="companybusinessreportimg" class="control-label"/>
                </div>
            </div>
            
            <div class="form-group row">
                <input type="submit" class="btn btn-primary"/>
            </div>  
        </fieldset>
	    </form:form>
	    </div>
</body>
</html>
