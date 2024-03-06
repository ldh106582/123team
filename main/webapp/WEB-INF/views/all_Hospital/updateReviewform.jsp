<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <%@  include file="../module/headerinfo.jsp" %>
	 <div class="container my-3">
       <h1>리뷰 등록 페이지</h1>
       <form:form modelAttribute="review" method="POST">
          <div class="form-group">
            <label for="title">제목 :</label>
            <form:input path="title" class="form-control" value="${review.title}"/>
          </div>
          <div class="form-group">
            <p> 별점
                1   <form:radiobutton path="reviewScore" value="1"/>
                2	<form:radiobutton path="reviewScore" value="2"/>
                3	<form:radiobutton path="reviewScore" value="3"/>
                4	<form:radiobutton path="reviewScore" value="4"/>
                5	<form:radiobutton path="reviewScore" value="5"/>
                <p>
          </div>
          <div class="form-group">
            <label for="context">내용 :</label>
            <form:input path="context" class="form-control" value="${review.context}"/>
          </div>
          <div class="form-group">
            <label for="title">이미지 :</label>
            <form:input path="reviewImage" type="file" value="${review.reviewImage}" />
          </div>
          <button type="submit" class="btn btn-primary">등록</button>
          <a href="" class="btn btn-danger">삭제</a>
        </form:form>
      </div>
	 <%-- 
	 리뷰수정 페이지
	 <form:form modelAttribute="review" method="POST">
	 	제목 : <form:input path="title" value="${review.title}"/>
  		<p> 별점
		 1	<form:radiobutton path="reviewScore" value="1"/>
		 2	<form:radiobutton path="reviewScore" value="2"/>
		 3	<form:radiobutton path="reviewScore" value="3"/>
		 4	<form:radiobutton path="reviewScore" value="4"/>
		 5	<form:radiobutton path="reviewScore" value="5"/>
		 <p>
	 	사진 : <form:input path="reviewImage" value="${review.reviewImage}"/>
	 	내용 : <form:input path="context" value="${review.context}"/>
	 	<input type="hidden" value="${review.hid}"/>
	 	<input type="hidden" value="${review.reviewId}"/>
	 	<input type="submit" value="작성완료"/>
	 </form:form>
	  --%>
	 
</body>
</html>