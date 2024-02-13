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
	
	<div class="jumbotron">
        <div class="container">
            <legend><h2>소중한 반려동물 회원가입 페이지 입니다.</h2></legend>
        </div>
    </div>
	<div class="container">
	<form:form modelAttribute="Newmember" action="./add?${ _csrf.parameterName }=${ _csrf.token }" method="post">
	<fieldset> 
		<div class="form-group row"> 아이디 : 
			<div class="col-4">
				<form:input type="text" path="personId" class="control-label"/>
			</div>
		</div>
		<div class="form-group row"> 비밀번호 :
			<div class="col-4">
				<form:input type="password" path="personPw" class="control-label"/>
			</div>
		</div>
		<div class="form-group row"> 이메일[선택] :
			<div class="col-4">
				<form:input type="email" path="personEmail" class="control-label" />
			</div>
		</div>
		<div class="form-group row"> 이름 :
			<div class="col-4">
			<form:input type="text" path="personName" class="control-label"/>
			</div>
		</div>
		<div class="form-group row"> 생년월일 :
			<div class="col-4">
				<form:input type="text" path="personBirth" class="control-label"/>
			</div>
		</div>
		<div class="form-group row"> 주소 :
			<div class="col-4">
				<form:input type="text" path="personAddress" class="control-label"/>
			</div>
		</div>
		<div class="form-group row"> 전화번호 :
			<div class="col-4">
				<form:input type="text" path="personPhone" class="control-label"/>
			</div>
		</div>
		
		<div class="form-group row">
			<div class="col-4">
				<form:radiobutton path="personSex" value="남자" class="col-md-3"/>남자
				<form:radiobutton path="personSex" value="여자" class="col-md-3"/>여자
			</div>
		</div>
	
		<div class="form-group row">
			<div class="">
				<input type="submit" class="btn btn-primary"/>
			</div>
		</div>	
	</fieldset>
	</form:form>
	</div>
</body>
</html>