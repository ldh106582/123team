<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<title>프로덕트 리뷰</title>
</head>
<body>
<h2>리뷰 작성페이지 입니다.</h2>

<form:form modelAttribute="productRE" method="post">
제목 : <form:input type="text" path="title" value="title" />
<p>
<form:radiobutton path="reviewScore" value="1"/>1점
<form:radiobutton path="reviewScore" value="2"/>2점
<form:radiobutton path="reviewScore" value="3"/>3점
<form:radiobutton path="reviewScore" value="4"/>4점
<form:radiobutton path="reviewScore" value="5"/>5점
</p>
설명 : <form:textarea value="context" path="context" />
<input type="file"/>
<input  type="submit" value="리뷰제출">

</form:form>

</body>
</html>