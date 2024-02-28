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
<form:form modelAttribute="hospital" method="POST">
	<p>
		병원 이름 : <form:input path="name" value="${hospital.name}"/>
		<p>
		병원 주소 : <form:input path="addr" value="${hospital.addr}"/>
		<p>
		전화번호 : <form:input path="number" value="${hospital.number}"/>
		<p>
		진료시간 : <form:input path="runtime" value="${hospital.runtime}"/>
		<p>
		설명 : <form:input path="description" value="${hospital.description}"/>
		<p>
		주차정보 : <form:input path="parking" value="${hospital.parking}"/>
		<p>
		사진 : <form:input path="image" value="${hospital.image}"/>
		<p>
		<input type="hidden" value="${hospital.hid}">
		<input type="submit" value="수정완료">
	</form:form>
</body>
</html>