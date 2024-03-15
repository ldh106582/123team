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
<body><%-- 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./resources/js/refreshing.js"></script>

<div id="header">
		<%@  include file="../module/header.jsp" %>
	</div>
<div class="container-fluid page-body-wrapper">
 		<%@  include file="../module/leftheader.jsp" %> --%>
 		내 병원 수 : ${count} ${donthavehospital}
 		<br>
 		${nothing}
		오늘 예약자 : ${donthavetoday}
		<c:forEach items="${todaybooklist}" var="list">
		<br>
		병원 이름 : ${list.hospitalName}
		예약 번호 : ${list.bid}
		예약 시간 : ${list.registDay}
		예약자 ID : ${list.personId}
		<c:set var="petId" value="${list.petId}" />
	       <% 
	           String petId = (String)pageContext.getAttribute("petId");
	           String[] petnamelist = petId.split(",");
	           for(int i=0;i<petnamelist.length;i++)
	           {
	               request.setAttribute("pet", petnamelist[i]);
	       %>
	       <td>
	           <a href="/123team/login/petcard?petid=${pet}">${pet} 정보 보기</a>   
	       </td>
	       <%
	           }
	       %>
		<a href="decision?dec=승인&num=${list.bid}">승인</a>
		<a href="decision?dec=거절&num=${list.bid}">거절</a>
	</c:forEach>
	<br>
	전체 진료 내역 : ${donthavebooklist}
	<c:forEach items="${allbooklist}" var="list">
		<br>
		예약 시간 : ${list.registDay}
		예약자 ID : ${list.personId}
		병원 이름 : ${list.hospitalName}
		병원 이름 : ${list.context}
	</c:forEach>
<!-- </div> -->
</body>
</html>