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
                        <img src="" alt="병원 이미지" class="border rounded">
                    </div>
                    <div class="section_home">
                        <h4 class="section_header">${hospital.name}</h4>
                        <div class="section_info">
                            <p>${hospital.description}</p>
                            <p>${hospital.addr}</p>
                            <p>${hospital.number}</p>
                            <p>${hospital.runtime}</p>
                            <p>${hospital.parking}</p>
                        </div>
                    </div>
                    <br>
                    <c:if test="${loginId ==  hospital.personId}">
	                    <div class="col-md-12">
	                        <a href="update?hid=${hospital.hid}" class="btn btn-primary">수정하기</a>
	                        <a href="delete?hid=${hospital.hid}" class="btn btn-danger">삭제하기</a>
	                        <a href="addbook?hid=${hospital.hid}" class="btn btn-success">예약하기</a>
	                    </div>   
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    
    <%@ include file="../module/footer.jsp" %>
<%-- 
<c:if test="${loginId ==  hospital.personId}">
<a href="update?hid=${hospital.hid}">병원수정</a>
<a href="delete?hid=${hospital.hid}">병원삭제</a>
</c:if>
<c:if test="${loginId != null}">
<a href="addbook?hid=${hospital.hid}">병원예약</a>
</c:if>	
<br>
<h3>reviews</h3>
<c:if test="${loginId != null}">
<a href="addreview?hid=${hospital.hid}">리뷰작성</a>
</c:if>

<c:forEach items="${reviews}" var="review">
<p>
	등록일 : ${review.registDay}
	<p>
	제목 : ${review.title}
	<p>
	리뷰 점수 : ${review.reviewScore}
	<p>
	사진 : ${review.reviewImage}
	<p>
	내용 : ${review.context}
	<p>
	<c:if test="${loginId ==  review.personId}">
	<a href="editreview?reviewId=${review.reviewId}">리뷰수정</a> || <a href="deletereview?reviewId=${review.reviewId}">리뷰삭제</a>
	</c:if>
</c:forEach>
 --%>
</body>
</html>