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
	<%@ include file="../module/memberheader.jsp" %>
	
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