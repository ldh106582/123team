<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>


  <%@  include file="../module/header.jsp" %>
  
	<div class="container my-3">
	    <h1>체험글 등록 페이지</h1>
	    <form:form modelAttribute="board" method="POST">
			<div class="form-group">
			  <label for="title">제목 :</label>
			  <form:input path="title" name="title" class="form-control"/>
			</div>
			<div class="form-group">
			  <label for="context">동물 :</label>
			  <form:input path="animal" class="form-control"/>
			</div>
			<div class="form-group">
			  <label for="context">체험 :</label>
			  <form:input path="experience" class="form-control"/>
			</div>
			<div class="form-group">
			  <label for="context">내용 :</label>
			  <textarea class="form-control " id="context" name="context" style="height: 300px;"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">등록</button>
		</form:form>
	</div>
<<<<<<< HEAD
	
	<%@ include file="../module/footer.jsp" %>
=======

    <nav class="navbar navbar-expand navbar-dark bg-success">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/123team">Home</a>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="/123team/hospital">병원</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/products">동물상품</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/Fboards">게시판</a>
                </li>
 				<c:choose>             
	            <c:when test="${not empty managerId }">
	                	
	                <li class="nav-item">
	                  <a class="nav-link" href="/123team/managerlogin/manager_page?personId=${managerId.personId}">마이페이지</a>
	                </li>
	                
	            </c:when>
	               	<c:otherwise>
		                <li class="nav-item">
		                  <a class="nav-link" href="/123team/login">로그인</a>
		                </li>
	                </c:otherwise>
                </c:choose>
                
	<h1>게시글 등록 페이지</h1>
	<form:form modelAttribute="board" method="POST">
		제목 : <form:input path="title" name="title"/>
		내용 : <form:input path="context" name="context"/>
		동물 : <form:input path="animal"/>
		체험 : <form:input path="experience"/>
		<input type="submit" value="등록">
	</form:form>

>>>>>>> 9fb6a4f45ca61789d8265263b57e4f177266bd0f
</body>
</html>
