<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="UTF-8">
<title>로그인</title>
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
			<h2>로그인 페이지</h2>
		</div>
	</div>
	
	<div class="container">
		<div class="text-center">
			<h3>주인의 아이디 / 비밀번호 입력해주세요</h3>
		</div>

		<form:form class="form-signin mx-auto mt-5" modelAttribute="success" method="POST" style="max-width: 400px;">

			<div class="form-group text-center">아이디를 입력하세요
				<form:input class="form-control border border-dark " type="text" path="personId" id="id" />
			</div>
			<div class="form-group text-center mt-3">비밀번호를 입력하세요
				<form:input class="form-control border border-dark" type="password" path="personPw" id="pw"/>
			</div>
			<div class="form-group mt-3">
				<input type="submit" class="btn btn-lg btn-success btn-block" value="로그인" id="login"/>
			</div>
	
		</form:form>
	
		<div class="mt-5 text-center">
			<a href="#">아이디 찾기</a> | 
			<a href="#">비밀번호 찾기</a> | 
			<a href="./login/add">회원가입</a>
		</div>
	
		<div class="row justify-content-center mt-5">
			<a href="./login/Allmember" class="col-md-3 btn btn-outline-dark p-3">관리자회원가입</a>
		</div>
	</div>
	
</body>
<!-- js -->
<script>
var firstLoad = true;
document.getElementById("login").onsubmit = function(e){
	var id = document.getElementById('id').value;
	var pw = document.getElementById('pw').value;
	if(id == "" || pw == ""){
		alert("아이디와 비밀번호를 입력해주세요.")
		e.preventDefault();
	}
}
window.onload = function(){
	var error = "아이디와 비밀번호를 확인해주세요";
	
	if(error && !firstLoad){
		alert(error);
	}
	firstLoad = false;
}
</script>
</html>