<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<%@page import="com.springmvc.domain.Person"%>
<head>
<meta charset="UTF-8">
<title>회원수정 페이지</title>
</head>
<body>

		<form:form modelAttribute="addmemberupdate" action="/123team/login/update" method="post">
    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<fieldset>
			<legend>회원수정 페이지 입니다.</legend>
			
			<div class="form-group row"> 아이디 : ${personId.personId}
			    <form:hidden path="personId" value="${fn:trim(personId.personId)}"/>
			</div>
			
			<div class="form-group row"> 비밀번호 : 
				<form:input type="password" path="personPw"/>
			</div>
			
			<div class="form-group row"> 이메일[선택] : 
				<form:input  type="email" path="personEmail" value="${fn:trim(personId.personEmail)}"/>
			</div>
			
			<div class="form-group row"> 이름 : 
				<form:input type="text" path="personName" value="${fn:trim(personId.personName)}"/>
			</div>

			<div class="form-group row"> 생년월일 : 
				<form:input type="text" path="personBirth"  value=" ${fn:trim(personId.personBirth)}" />
			</div>
			
			<div class="form-group row"> 주소 : 
				<form:input path="personAddress" value="${fn:trim(personId.personAddress)}" />
			</div>
			
			<div class="form-group row"> 성별 : ${fn:trim(personId.personSex)}
				<form:hidden  path="personSex"/>
			</div>
			
			<div class="form-group row"> 전화번호 : 
				<form:input type="text" path="personPhone" value="${fn:trim(personId.personPhone)}" />
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary"/>
				</div>
			</div>
			
		</fieldset>
		</form:form>
</body>
</html>