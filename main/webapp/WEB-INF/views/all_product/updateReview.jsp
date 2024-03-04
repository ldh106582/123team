<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로덕트 리뷰 수정</title>
</head>
<body>

<form:form modelAttribute="productURE" method="post">
제목 : <form:input type="text" path="title" value="${productReviewRE.title}" />
<p>
현재 점수 : ${productReviewRE.reviewScore}점
<form:radiobutton path="reviewScore" value="1"/>1점
<form:radiobutton path="reviewScore" value="2"/>2점
<form:radiobutton path="reviewScore" value="3"/>3점
<form:radiobutton path="reviewScore" value="4"/>4점
<form:radiobutton path="reviewScore" value="5"/>5점
</p>
설명 : <form:textarea path="context" value="${productReviewRE.context}"/>

<input type="file"/>
<input  type="submit" value="리뷰제출">

</form:form>

</body>
</html>