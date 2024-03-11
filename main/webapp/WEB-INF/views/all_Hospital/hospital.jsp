<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    
<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=peaxg064t9"></script>
<title>병원 상세보기 페이지</title>
</head>
<body>
	<%
	request.setAttribute("type", session.getAttribute("type"));
	request.setAttribute("checktype", "h");

	%>
	<%@  include file="../module/header.jsp"%>
    <div class="container-fluid page-body-wrapper">
			<%@  include file="../module/leftheader.jsp"%>
		<div class="content-wrapper"> <!-- ddd -->
			<div class="row no-gutters">
				<div class="show-gird col-md-12 row no-gutters">
					<div class="col-md-6">
						<c:choose>
							<c:when test="${not empty hospital.image}">
								<img class="col-md-12"
									src="<c:url value='/resources/images/${hospital.image}'/>"
									height="200" width="150" alt="병원이미지">
							</c:when>
							<c:otherwise>
								<img class="col-md-12"
									src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg"
									alt="병원이미지" height="250" width="150" border="0">
							</c:otherwise>
						</c:choose>
					</div>
					<div class="col-md-6  no-gutters ">
						<h4 class="mt-5 col-md-12 ">병원명 : ${hospital.name}</h4>
						<p class="col-md-12">병원주소 : ${hospital.addr}</p>
						<p class="col-md-12">진료시간 : ${hospital.runtime}</p>
						<p class="col-md-12">전화번호 : ${hospital.number}</p>
						<p class="col-md-12">주차정보 : ${hospital.parking}</p>
					</div>
				</div>
	
				<div class="col-md-12 no-gutters row mt-2" style="display: flex;">
					
					<div class="col-md-4 mt-2 text-center">
						<p id="review" style="font-size: 20px;">리뷰보기</p>
					</div>
						<a class="col-md-4 text-center mt-1" href="/123team/hospitals/addbook?hid=${hospital.hid}" style="font-size: 20px;">예약하기</a>
				</div>
			</div>

		<div class="col-md-12 row no-gutters show-gird mt-5">
			<!--병원 지도이미지 가져오기-->
			<div id="parkmap"  class="col-md-12 no-gutters">
				<h2 class="col-md-12 no-gutters">지도 띄우기</h2>
			<div id="map" style="width:100%;height:400px;"></div>
					
					
					<script>
					var hospital = new naver.maps.LatLng(${hospital.y}, ${hospital.x}),
				    map = new naver.maps.Map('map', {
				        center: hospital.destinationPoint(0, 500),
				        zoom: 15
				    }),
				    marker = new naver.maps.Marker({
				        map: map,
				        position: hospital
				    });
					var contentString = [
				        '<div class="iw_inner">',
				        '   <h3>${hospital.name}',
				        '   <p>${hospital.addr}<br />',
				        '       <a href="hospital?hid=${hospital.hid}">상세보기</a>',
				        '   </p>',
				        '</div>'
				    ].join('');
	
					var infowindow = new naver.maps.InfoWindow({
					    content: contentString
					});
	
					naver.maps.Event.addListener(marker, "click", function(e) {
					    if (infowindow.getMap()) {
					        infowindow.close();
					    } else {
					        infowindow.open(map, marker);
					    }
					});
					infowindow.open(map, marker);
					</script>
			</div>
			<c:forEach items="${reviews}" var="review">
			<div id="reviewadd" class="col-md-6 mt-2">
				<c:choose>
					<c:when test="${not empty hospital.image}">
						<img class="col-md-12"
							src="<c:url value='/resources/images/${hospital.image}'/>"
							height="200" width="150" alt="리뷰이미지">
					</c:when>
					<c:otherwise>
						<img class="col-md-12"  src="https://i.ibb.co/wRMh3Nd/pexels-tranmautritam-2194261.jpg" height="300" width="300" alt="리뷰이미지" alt="pexels-tranmautritam-2194261" border="0">
					</c:otherwise>
				</c:choose>
			</div>
			
			<div id="reviewadd1" class="col-md-6 no-gutters" style="margin: 0 auto">
				<h5 class="mt-4">제목 : ${review.title}</h5>
				<p>리뷰 점수 : ${review.reviewScore}
				<p>내용 : ${review.context}
				<p>등록일 : ${review.registDay}
					<!-- 이부분 재확인 필요 -->
				<div class="col-md-12">
					<c:choose>
						<c:when test="${loginId != null}">
							<a href="addreview?hid=${hospital.hid}" style="font-size: 20px;">리뷰작성</a>
						</c:when>
					</c:choose>
					
					<c:if test="${loginId ==  review.personId}">
						<a href="editreview?reviewId=${review.reviewId}">리뷰수정</a> || 
						<a href="deletereview?reviewId=${review.reviewId}">리뷰삭제</a>
					</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>

<%@  include file="../module/footer.jsp" %>
	<%-- 
<c:if test="${loginId ==  hospital.personId}">


	<%@ include file="../module/footer.jsp" %>
  
<a href="/123team/hospitals">돌아가기</a>

<div>

 <%@  include file="../module/headerinfo.jsp" %>
<a href="/123team/hospitals">돌아가기</a>
	<%
		request.setAttribute("loginId", session.getAttribute("personId"));
		request.setAttribute("type", session.getAttribute("type"));
	%>

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

<c:if test="${hospital.personId==loginId}">


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

<c:if test="${loginId ==  hospital.personId}">
>>>>>>> origin/yeonghoe
<a href="update?hid=${hospital.hid}">병원수정</a>
<a href="delete?hid=${hospital.hid}">병원삭제</a>
</c:if>
<a href="addbook?hid=${hospital.hid}">병원예약</a>
</div>



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

<%@ include file="../module/footer.jsp" %>
<<<<<<< HEAD
=======
=======

	                    <div class="col-md-12">
	                    	<c:if test="${loginId ==  hospital.personId}">
	                        	<a href="update?hid=${hospital.hid}" class="btn btn-primary">수정하기</a>
	                        <a href="delete?hid=${hospital.hid}" class="btn btn-danger">삭제하기</a>
	                		</c:if>
	               			<c:if test="${loginId != null && type != checktype}">
	                        	<a href="addbook?hid=${hospital.hid}" class="btn btn-success">예약하기</a>
	                      	</c:if>
>>>>>>> origin/dohyeon
 --%>

</body>
<script src="../resources/js/hospital.js"></script>
</html>