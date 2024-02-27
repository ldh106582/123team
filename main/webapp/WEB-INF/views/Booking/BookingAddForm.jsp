<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%@  include file="../module/headerinfo.jsp" %>
	<form:form modelAttribute="booking" method="post">
		<p>반려동물 이름 <form:input path="petname" name="petname"/>
		<p>품종 <form:input path="petbreed" name="petbreed" />
		<p>나이 <form:input path="age" name="age"/>
		<p>성별 <form:input path="petgender" name="petgender"/>
		<p>예약자명 <form:input path="name" name="name"/>
		<p>연락처 <form:input path="phone" name="phone"/>
		<p>진료받을 내용 <form:input path="text" name="text"/>
		<input type="submit" value="입력">
	</form:form>
</body>
</html>