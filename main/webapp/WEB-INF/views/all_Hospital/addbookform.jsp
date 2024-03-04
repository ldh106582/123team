<%@page import="com.springmvc.domain.Pet"%>
<%@page import="java.util.List"%>
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
	<%
	List<Pet> petlist = (List<Pet>) session.getAttribute("petName");
	
	out.print(petlist.get(0).getPetName());
	%>
	<form:form modelAttribute="booking" method="POST">
		<p>
		예약가능시간 : ${hospital.runtime}
		<p>
		예약시간 : <input type="datetime-local" name="registDay">
		<p>
		설명 : <form:input path="context"/>
		<p>
		동물 :
		<% 
			for(int i=0;i<petlist.size();i++){
				request.setAttribute("name", petlist.get(i).getPetName());
				request.setAttribute("petId", petlist.get(i).getPetId());
				%>
				${name} <form:checkbox value="${petId}" path="petId"/>
		<%
			}
		%>
		<p>
		<input type="hidden" name="hospitalName" value="${hospital.name}">
		<input type="hidden" name="hid" value="${hospital.hid}">
		<input type="hidden" name="mid" value="${hospital.personId}">
		<input type="submit" value="예약완료">
	</form:form>
</body>
</html>