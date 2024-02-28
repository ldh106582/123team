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
		
	String type = (String) session.getAttribute("personId");
	request.setAttribute("type", type);
		
%>
	<%@ include file="../module/memberheader.jsp" %>
	
	<c:choose>
		<c:when test="${type eq 'p' }" >
		
		    <div class="jumbotron">
		        <div class="container">
		            <legend id="id"><h2>관리자 회원수정 페이지 입니다.</h2></legend>
		        </div>
		    </div>
		    
		    <div class="container">
			<form:form modelAttribute="managerupdate" action="/123team/managerlogin/managerudpate" method="post">
	    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<fieldset>
				<div class="form-group row">
			   		<label class="col-sm-2 control-label"> 아이디  </label>
			   		<div class="col-5"> ${productMember.personId}
					    <form:hidden path="personId" value="${productMember.personId}" class="rounded"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 비밀번호 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="password" path="personPw" value="${productMember.personPw}"/>
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 이메일 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="email" path="personEmail" value="${productMember.personEmail}"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 이름 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personName" value="${productMember.personName}"/>
					</div>
				</div>
	
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 개인번호 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personPhone"  value=" ${productMember.personPhone}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 회사명 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="companyName" value="${productMember.companyName}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 회사주소 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="companyAddress" value="${productMember.companyAddress}" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 회사번호 </label>
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="companyPhone" value="${productMember.companyPhone}" />
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
		
		<!-- 병원 관리자 update -->
		<c:otherwise>
			    <div class="jumbotron">
		        <div class="container">
		            <legend id="id"><h2>병원 의사선생님 회원수정 페이지 입니다.</h2></legend>
		        </div>
		    </div>
		    
		    <div class="container">
			<form:form modelAttribute="hospitalupdate" action="/123team/managerlogin/managerudpate" method="post">
	    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<fieldset>
			
				<div class="form-group row">
			   		<label class="col-sm-2 control-label"> 아이디  </label>
			   		<div class="col-5"> ${hospitalMember.personId}
					    <form:hidden path="personId" value="${hospitalMember.personId}" class="rounded"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 비밀번호 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="password" path="personPw" value="${hospitalMember.personPw}"/>
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 이메일 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="email" path="personEmail" value="${hospitalMember.personEmail}"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 이름 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personName" value="${hospitalMember.personName}"/>
					</div>
				</div>
	
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 개인번호 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personPhone"  value=" ${hospitalMember.personPhone}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 생년월일 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="date" path="personBirth"  value=" ${hospitalMember.personBirth}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 성별 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="personSex"  value=" ${hospitalMember.personSex}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 병원명 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="hospitalName" value="${hospitalMember.hospitalName}" />
					</div>
				</div>
				
				<div class="form-group row"> 
					<label class="col-sm-2 control-label"> 병원주소 </label> 
					<div class="col-4">
						<form:input class="border border-success rounded" path="hospitalAddress" value="${hospitalMember.hospitalAddress}" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 병원번호 </label>
					<div class="col-4">
						<form:input class="border border-success rounded" type="text" path="hospitalPhone" value="${hospitalMember.hospitalPhone}" />
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 control-label"> 사업자등록증 </label>
					<div class="col-4">
						<input class="border border-success rounded" type="file" name="s_image" />
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