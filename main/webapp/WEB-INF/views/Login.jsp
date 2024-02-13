<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<div class="jumbotron">
		<div class="container">
			<h2>로그인 페이지</h2>
		</div>
	</div>
	
	<div class="container col-md-4">
		<div class="text-center">
			<h3>주인의 아이디 / 비밀번호 입력해주세요</h3>
		</div>

	<form:form class="form-signin" modelAttribute="success" method="POST">
		<div class="form-group row col-12 text-center"> 아이디 : 
			<form:input class="form-control" type="text" path="personId" />
		</div>

		<div class="form-group row col-12"> 비밀번호 : 
			<form:input class="form-control" type="password" path="personPw"/>
		</div>

		
		<div class="form-group row col-12">
			<input type="submit" class="btn btn-lg btn-success btn-block"/>
		</div>
		<a class="p-2 col-md-2 float-right" href="./login/add"> 회원가입		
		<a class="p-2 col-md-2 " href="#">아이디 찾기 </a> <a class="p-2 col-md-2"  href="#">비밀번호 찾기</a>
		</form:form>
	</div>

</body>
</html>