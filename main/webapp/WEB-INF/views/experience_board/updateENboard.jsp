<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
 <%@  include file="../module/header.jsp" %>
 
	<h1>공지글 수정 페이지</h1>
	<form:form modelAttribute="updateBoard" action="update?boardId=${board.boardId}" method="POST">
		제목 : <form:input path="title" name="title" value="${board.title}"/>
		내용 : <form:input path="context" name="context" value="${board.context}"/>
		동물 : <form:input path="animal" value="${board.animal}"/>
		체험 : <form:input path="experience" value="${board.experience}"/>
		<input type="submit" value="완료">
	</form:form>
</body>
</html>