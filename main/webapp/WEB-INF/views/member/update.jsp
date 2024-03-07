<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<%@page import="com.springmvc.domain.Person"%>
<!--  부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>회원수정 페이지</title>
</head>
<body>

 <%@  include file="../module/header.jsp" %>
	<div class="container-fluid page-body-wrapper">
 		<%@  include file="../module/leftheader.jsp" %>
     
	          <div class="content-wrapper d-flex align-items-center auth px-0">
				<div class="row w-100 mx-0">
		            <div class="col-lg-6 mx-auto">
		                <div class="auth-form-light text-left py-5 px-4 px-sm-5">
		                    <div class="brand-logo">
		                        <img src="resources/images/logo.jpg" alt="logo">
		                    </div>
		     				<form:form modelAttribute="addmemberupdate" action="/123team/login/update" method="post">
		     					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		                        <div class="form-group">
		                            <form:input class="form-control form-control-lg" type="text" path="personId"  value="${u_person.personId}"/>
		                        </div>
		                        <div class="form-group">
		                            <form:input class="form-control form-control-lg" type="password" path="personPw"  placeholder="비밀번호"/>
		                        </div>
		                        <div class="form-group">
		                            <form:input class="form-control form-control-lg" type="email" path="personEmail" value="${fn:trim(u_person.personEmail)}"/>
		                        </div>
		                        <div class="form-group">
		                            <form:input class="form-control form-control-lg" type="text" path="personName"  value="${fn:trim(u_person.personName)}"/>
		                        </div>
		                        <div class="form-group">
		                            <form:input class="form-control form-control-lg" type="text" path="personBirth"  value=" ${fn:trim(u_person.personBirth)}"/>
		                        </div>
		                        <div class="form-group">
		                            <form:input class="form-control form-control-lg" type="text" path="personAddress" value="${fn:trim(u_person.personAddress)}"/>
		                        </div>
		                        <div class="form-group">
		                            <form:input class="form-control form-control-lg" type="text" path="personPhone" value="${fn:trim(u_person.personPhone)}"/>
		                        </div>
		                        <div class="form-group">
		                            <form:radiobutton path="personSex" value="남자" class="col-sm-1"/>남성
						            <form:radiobutton path="personSex" value="여자" class="col-sm-1"/>여성
		                        </div>
		                        <div class="mt-3">
		                            <input type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" value="수정" />
		                        </div>
		                    </form:form>
		                </div>
		            </div>
		        </div>
	        </div>
		</div>
	</div>
	
	<%@ include file="../module/footer.jsp" %>
     
         
          
     
</body>
</html>