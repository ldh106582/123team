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

	    <div class="content-wrapper">
	      <div class="">
	        <div class="">
	          <div class="card mx-auto " style="width: 80rem;">
	            <c:choose>
	              <c:when test="${not empty hospital.image}">
	                <img class="col-md-12" src="<c:url value='/resources/images/${hospital.image}'/>" height="500" width="150" alt="병원이미지">
	              </c:when>
	              <c:otherwise>
	                <img class="col-md-12" src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg" alt="병원이미지" height="500" width="150" border="0">
	              </c:otherwise>
	            </c:choose>
	            <div class="card-body col-md-12">
	              <h5 class="card-title col-md-12 p-0" style="font-size: 2vw;">${hospital.name}</h5>
	              <p class="card-text" style="font-size: 1vw;"> ${hospital.description}</p>
	              <p class="card-text" style="font-size: 1vw;">${hospital.runtime}</p>
	              <p class="card-text" style="font-size: 1vw;">${hospital.number}</p>
	              <p class="card-text" style="font-size: 1vw;"> ${hospital.addr}</p>
	              <div class="col-md-12 text-center"> 
	                <a href="addbook?hid=${hospital.hid}" class="btn btn-primary ">예약하기</a>
	              </div>
	              
	              <div class="col-md-12 row mt-5 p-0" style="justify-content: center;">
					 <c:forEach items="${reviews}" var="review">
	              <%
	              	int i = 0;
	              if(i%2==0){
	              %>
		              <div class="col-md-6 p-0">
		                  <div class="review1 card mb-3" style="max-width: 540px;">
		                    <div class="row no-gutters form-group">
		                      <div class="col-md-4">
		                        <c:choose>
		                          <c:when test="${not empty hospital.image}">
		                            <img class="col-md-12  rounded-lg" src="<c:url value='/resources/images/${review.image}'/>" height="120"  alt="리뷰이미지">
		                          </c:when>
		                          <c:otherwise>
		                            <img class="col-md-12  rounded-lg" src="https://i.ibb.co/wyMqmJp/pexels-980859.jpg" alt="pexels-980859" border="0" alt="리뷰이미지" height="160" border="0">
		                          </c:otherwise>
		                        </c:choose>
		                      </div>
		                      <div class="col-md-8">
		                        <div class="card-body ">
		                          <h5 class="card-title">${review.title}</h5>
		                          <p class="card-text">${review.context}</p>
		                          <p class="card-text">${review.registDay}</p>
		                          <p class="card-text text-muted"> ${review.reviewScore}</p>
		                        </div>
		                        <div class="col-md-12 px-0">
		                          <c:if test="${loginId ==  review.personId}">
		                            <a class="btn btn-outline-info btn-sm mr-1" href="editreview?reviewId=${review.reviewId}">리뷰수정</a> 
		                            <a class="btn btn-outline-info btn-sm mr-1" href="deletereview?reviewId=${review.reviewId}">리뷰삭제</a>
		                          </c:if>
		                          <c:if test="${loginId ==  hospital.personId}">
		                            <a class="btn btn-outline-info  btn-sm" href="addreview?hid=${hospital.hid}">리뷰작성</a>
		                          </c:if>
		                        </div>
		                      </div>
		                    </div>
		                  </div>
		                </div>
					<%
	              }else {
					%>
		                <div class="col-md-6 p-0">
		                  <div class="review1 card mb-3" style="max-width: 540px;">
		                    <div class="row no-gutters form-group">
		                      <div class="col-md-4">
		                        <c:choose>
		                          <c:when test="${not empty hospital.image}">
		                            <img class="col-md-12  rounded-lg" src="<c:url value='/resources/images/${review.image}'/>" height="120"  alt="리뷰이미지">
		                          </c:when>
		                          <c:otherwise>
		                            <img class="col-md-12  rounded-lg" src="https://i.ibb.co/wyMqmJp/pexels-980859.jpg" alt="pexels-980859" border="0" alt="리뷰이미지" height="160" border="0">
		                          </c:otherwise>
		                        </c:choose>
		                      </div>
		                      <div class="col-md-8">
		                        <div class="card-body ">
		                          <h5 class="card-title">${review.title}</h5>
		                          <p class="card-text">${review.context}</p>
		                          <p class="card-text">${review.registDay}</p>
		                          <p class="card-text text-muted"> ${review.reviewScore}</p>
		                        </div>
		                        <div class="col-md-12 px-0">
		                          <c:if test="${loginId ==  review.personId}">
		                            <a class="btn btn-outline-info btn-sm mr-1" href="editreview?reviewId=${review.reviewId}">리뷰수정</a> 
		                            <a class="btn btn-outline-info btn-sm mr-1" href="deletereview?reviewId=${review.reviewId}">리뷰삭제</a>
		                          </c:if>
		                       </div>
	                    	</div>
	                 	 </div>
		               </div>
		             </div>
		           </div>
		           <%
		        	   i++;
		           }
		           %>
		           </c:forEach>
		          
	                        
	                          <c:if test="${loginId ==  hospital.personId}">
	                            <a class="btn btn-outline-info  btn-sm" href="addreview?hid=${hospital.hid}">리뷰작성</a>
	                          </c:if>
	                        </div>
		               
					<c:if test="${loginId ==  hospital.personId}">
						<a class="btn btn-outline-info  btn-sm" href="addreview?hid=${hospital.hid}">리뷰작성</a>
					</c:if>
	                <div>
	                  <a herf="">1</a>
	                </div>
	
	                <div class="col-md-12 text-center border p-0">
	                  <a class="btn">병원 위치 상세보기</a>
	                </div>
	
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