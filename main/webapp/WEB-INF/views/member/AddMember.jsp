<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>주인 회원가입</title>
</head>
<body>
    <nav class="navbar navbar-expand navbar-dark bg-dark p-3">
        <div class="container ">
            <div class="navbar-header">
                <a class="navbar-brand" href="./">Home</a>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" href="./hospital">병원</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./product">동물상품</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Fboards">게시판</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./login">로그인</a>
                </li>
            </div>
        </div>
     </nav>
	
    <div class="jumbotron">
        <div class="container">
            <legend><h2>회원가입 페이지 입니다.</h2></legend>
        </div>
    </div>
    
	<div class="container">
	<form:form modelAttribute="Newmember" action="./add?${ _csrf.parameterName }=${ _csrf.token }" method="post">
	<fieldset> 

		<div class="form-group row">
            <label class="col-sm-1 control-label"> 아이디  </label> 
			<div class="col-sm-2">	
                <form:input type="text" path="personId" class="control-label"/>
            </div>
		</div>
        

		<div class="form-group row"> 
			<label class="col-sm-1 control-label"> 비밀번호 </label>
            <div class="col-sm-2">	
				<form:input type="password" path="personPw" class="control-label"/>
            </div>
		</div>

		<div class="form-group row"> 
			<label class="col-sm-1 control-label"> 이메일 </label>
            <div class="col-sm-2">
				<form:input type="email" path="personEmail" class="control-label" />
			</div>
		</div>

		<div class="form-group row"> 
			<label class="col-sm-1 control-label"> 이름 </label>
            <div class="col-sm-2">
			    <form:input type="text" path="personName" class="control-label"/>
			</div>
		</div>

		<div class="form-group row"> 
            <label class="col-sm-1 control-label"> 생년월일 </label>
			<div class="col-sm-2">
				<form:input type="text" path="personBirth" class="control-label"/>
			</div>
		</div>

		<div class="form-group row">
			<label class="col-sm-1 control-label"> 주소 </label>
            <div class="col-sm-2">
				<form:input type="text" path="personAddress" class="control-label"/>
			</div>
		</div>

		<div class="form-group row">
            <label class="col-sm-1 control-label"> 전화번호 </label>
			<div class="col-sm-2">
				<form:input type="text" path="personPhone" class="control-label"/>
			</div>
		</div>
		
		<div class="form-group row">
            <label class="col-sm-1 ccontrol-label"> 성별 </label>
			<div class="col-sm-2">
				<form:radiobutton path="personSex" value="남자" class="col-sm-1"/>남자
				<form:radiobutton path="personSex" value="여자" class="ml-3"/>여자
			</div>
		</div>
	
		<div class="form-group row">
			<div class="col-sm-2">
				<input type="submit" class="btn btn-primary"/>
			</div>
		</div>	
	</fieldset>
	</form:form>
	<hr>
    </div>
</body>
</html>