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
	<h1>게시판 페이지</h1>
	<a>공지사항</a> || <a href="Fboards">자유게시판</a> || <a>체험단</a>
	<br>
	
	<c:forEach items="${FBoardlist}" var="fboard">
		<li>
			<a href="Fboards/Fboard?boardId=${fboard.boardId}">
			번호 : ${fboard.num}
			제목 : ${fboard.title}
			작성자 : ${fboard.personName}
			등록일 : ${fboard.registDay}
			조회수 : ${fboard.hit}
			
			</a>
		</li>
	</c:forEach>
	<br>
	<form action="Fboards/select">
		<input type="text" name="title" placeholder="제목입력"/>
		<button type="submit">검색</button>
	</form>
	
</body>
</html>