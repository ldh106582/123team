<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			제목 : ${board.title}
			작성자 : ${board.personName}
			내용 : ${board.context}
			<br>
			<a href="update?boardId=${board.boardId}">수정</a>
			<a href="delete?boardId=${board.boardId}">삭제</a>
</body>
</html>