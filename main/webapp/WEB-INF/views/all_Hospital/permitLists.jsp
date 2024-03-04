<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

 	<%@  include file="../module/headerinfo.jsp" %>

 	<div class="container my-3">
        <h1>병원 예약 관리 페이지</h1>
        <c:forEach items="${applists}" var="app">
	        <div class="row">
	            <div class="col-md-12">
	                <div class="col-md-12">
	                	<h5> 신청자 ID : ${app.personId} &emsp;&emsp; 예약일 : ${app.registDay}</h5>
						<c:set var="petId" value="${app.petId}" />
						<% 
						    String petId = (String)pageContext.getAttribute("petId");
							String[] petnamelist = petId.split(",");
							for(int i=0;i<petnamelist.length;i++)
							{
								request.setAttribute("pet", petnamelist[i]);
						%>
								<a href="/123team/login/petcard?petid=${pet}">${pet} 정보 보기</a>
								<p>
						<%
							}
						%>
	                	<a></a>
	                </div>
	                <hr>
	                <div class="col-md-12" style="height: 200px;">
	                    <p class="">${app.context}</p>
	                </div>
	                <hr>
	                <a href="decision?dec=승인&bid=${app.bid}"class="btn btn-primary">승인</a>
	                <a href="decision?dec=거부&bid=${app.bid}"class="btn btn-danger">거부</a>
	            </div>
	        </div>
        </c:forEach>
        ${nothing}
	</div>
 	
 	<%@ include file="../module/footer.jsp" %>
	
</body>
</html>