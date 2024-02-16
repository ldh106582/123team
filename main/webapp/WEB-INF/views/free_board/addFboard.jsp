<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 등록 페이지</h1>
	<form:form modelAttribute="board" method="POST">
		제목 : <form:input path="title" name="title"/>
		내용 : <form:input path="context" name="context"/>
		<input type="submit" value="등록">
	</form:form>
</body>
</html>