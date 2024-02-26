<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.springmvc.domain.userinfo" %>
<!DOCTYPE html>
<html>
<head>
<!-- scc -->
<link rel="stylesheet" href="resources/css/Login.css">
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
	*{
	font-family: 'KCC-Ganpan';
}

@font-face {
    font-family: 'KCC-Ganpan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/KCC-Ganpan.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
</style>
</head>
<body>
<% 
userinfo user = userinfo.getInstance(); 
String type = user.getType();
System.out.println("싱글톤 : " + type);
%>
	<%@  include file="./module/headerdark.jsp" %>

	<div class="jumbotron">
		<div class="container">
			<h2>로그인 페이지</h2>
		</div>
	</div>

	
	<div class="container">
		<div class="container col-md-5">
			<div class="text-center">
				<h4>아이디 / 비밀번호 입력해주세요</h4>
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
			
			<br>
			<div class="col-md-12 justify-content-center" style="display: flex;">

				<a href="./login/Allmember" class="col-md-4 btn btn-outline-danger p-2 m-1" id="allmember">통합회원가입</a>
				<a href="./managerlogin/AllLog" class="col-md-4 btn btn-outline-info p-2 m-1" id="managerlogin">관리자 로그인</a>

			</div>
		</div>
	</div>


	<%@  include file="./module/footer.jsp" %>
</body>
<!-- js -->
<script src="./resources/js/Login.js"></script>
</html>