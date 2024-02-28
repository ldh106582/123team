<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">  
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%@  include file="../module/headerinfo.jsp" %>
	
	<div class="container my-3">
    <h1>병원 수정 페이지</h1>
   <form:form modelAttribute="hospital" method="POST">
      <div class="form-group">
        <label for="title">병원명 :</label>
        <form:input path="name" value="${hospital.name}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="title">병원 주소 :</label>
        <form:input path="addr" value="${hospital.addr}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="title">진료시간 :</label>
        <form:input path="runtime" value="${hospital.runtime}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="title">전화번호 :</label>
        <form:input path="number" value="${hospital.number}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="title">주차정보 :</label>
        <form:input path="parking" value="${hospital.parking}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="context">설명 :</label>
        <%-- <form:input path="description" class="form-control" style="height: 300px;" name="description" value="${board.description}"/> --%>
        <form:input path="description" value="${hospital.description}" class="form-control"/>
      </div>
      <div class="form-group">
        <label for="title">병원이미지 :</label>
        <form:input path="image" type="file" class="form-control"/>
      </div>
      <button type="submit" class="btn btn-primary">등록</button>
      <a href="/delete?boardId=${board.boardId}" class="btn btn-danger">삭제</a>
    </form:form>
  </div>
  
</body>
</html>