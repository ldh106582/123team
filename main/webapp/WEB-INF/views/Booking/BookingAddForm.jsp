<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 페이지</title>
</head>
<body>
 <%@  include file="../module/headerinfo.jsp" %>
	
	<div class="container my-3">
		<h1>예약 페이지</h1>
		<form:form modelAttribute="booking" method="POST">
			<div class="form-group">
				<label for="title">반려동물 이름 :</label>
				<form:input path="petname"  class="form-control"/>
			</div>
			<div class="form-group">
				<label for="title">품종 :</label>
				<form:input path="petbreed"  class="form-control"/>
			</div>
			<div class="form-group">
				<label for="title">나이 :</label>
				<form:input path="age"  class="form-control"/>
			</div>
			<div class="form-group">
				<label for="title">성별 :</label>
				<form:input path="petgender"  class="form-control"/>
			</div>
			<div class="form-group">
				<label for="title">예약자명 :</label>
				<form:input path="name"  class="form-control"/>
			</div>
			<div class="form-group">
				<label for="title">연락처 :</label>
				<form:input path="phone"  class="form-control"/>
			</div>
				<div class="form-group">
				<label for="context">진료받을 내용 :</label>
				<form:input path="text" class="form-control"/>
			</div>
			<button type="submit" class="btn btn-primary">예약하기</button>
		</form:form>
	</div>
	
	<%@ include file="../module/footer.jsp" %>
</body>
</html>