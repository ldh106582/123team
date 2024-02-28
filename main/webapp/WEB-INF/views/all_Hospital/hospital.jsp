<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@  include file="../module/headerinfo.jsp" %>

	<div class="home_container">
        <div class="container my-3">
            <h1>병원 상세 정보</h1>
            <div class="row ">
                <div class="col-md-12">
                    <div class="text-center">
                        <img src="${hospital.image}" alt="병원 이미지" class="border rounded mx-auto" style="width: 720px; height: 420px;">
                    </div>
                    <div class="section_home">
                        <h4 class="section_header">${hospital.name}</h4>
                        <div class="section_info">
                        	<p>${hospital.addr}</p>
                        	<p>${hospital.runtime}</p>
                        	<p>${hospital.number}</p>
                        	<p>${hospital.parking}</p>
                            <p>${hospital.description}</p>
                        </div>
                    </div>
                    <br>
                    <div class="col-md-12">
                        <a href="update?hid=${hospital.hid}" class="btn btn-primary">수정하기</a>
                        <a href="delete?hid=${hospital.hid}" class="btn btn-danger">삭제하기</a>
                        <a href="/123team/booking" class="btn btn-success">예약하기</a>
                    </div>   
                </div>
            </div>
        </div>
    </div>
	
	
	<%@ include file="../module/footer.jsp" %>

<%--  
<a href="/123team/hospitals">돌아가기</a>
<div>
<p>
병원 사진 : ${hospital.image}
<p>
병원 이름 : ${hospital.name}
<p>
병원 주소 : ${hospital.addr}
<p>
전화번호 : ${hospital.number}
<p>
진료시간 : ${hospital.runtime}
<p>
주차정보 : ${hospital.parking}
<p>
설명 : ${hospital.description}
<p>
<a href="update?hid=${hospital.hid}">병원수정</a>
<a href="delete?hid=${hospital.hid}">병원삭제</a>
<a href="booking">병원예약</a>
</div>
 --%>
</body>
</html>