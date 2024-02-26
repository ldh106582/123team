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
 <%@  include file="../module/header.jsp" %>
 
 <div class="container my-3">
        <h1>체험 신청관리 페이지</h1>
        <c:forEach items="${applists}" var="app">
	        <div class="row">
	            <div class="col-md-12">
	                <h1 class="mt-4">${app.title}</h1>
	                <hr>
	                <div class="col-md-12">
	                	<h5> 신청자 ID : ${app.personId} &emsp;&emsp; 예약일 : ${app.registDay}</h5>
	                </div>
	                <hr>
	                <div class="col-md-12" style="height: 200px;">
	                    <p class="">${board.context}</p>
	                </div>
	                <hr>
	                <a href="decision?dec=승인&eid=${app.eid}"class="btn btn-primary">승인</a>
	                <a href="decision?dec=거부&eid=${app.eid}"class="btn btn-danger">거부</a>
	            </div>
	        </div>
        </c:forEach>
        ${nothing}
	</div>
 	
 	<%@ include file="../module/footer.jsp" %>
 	
 	<%-- 
	<h2>체험 신청관리 페이지</h2>
	<c:forEach items="${applists}" var="app">
		<div>
			<p>
	 	신청자 ID : ${app.personId}
	 	<p>
	 	신청한 체험 제목 : ${app.title}
	 	<p>
	 	예약일 : ${app.registDay}
	 	<p>
	 	<a href="decision?dec=승인&eid=${app.eid}"><button>승인</button></a> || <a href="decision?dec=거부&eid=${app.eid}"><button>거부</button></a>
		</div>
	</c:forEach>
	 --%>
	
</body>
</html>