<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

</script>
</head>
<body>		
			<a href="update?boardId=${board.boardId}">게시글 수정</a>
			<a href="delete?boardId=${board.boardId}">게시글 삭제</a>
			<br>
			===================================================================================
			<br>
			<h5> 제목 : ${board.title} &emsp;&emsp;작성자ID : ${board.personId}</h5>
			<h5>내용</h5>
			<div>${board.context}</div>
			====================================================================================
			<h5> 댓글</h5>
			<c:forEach items="${Commentlist}" var="comments">
				<br>
				작성자ID : ${comments.personId}  &emsp; &emsp;  작성일 : ${comments.registDay}
				<div>
					${comments.comment}
				</div>
				<a href="updatecomment?commentId=${comments.commentId}">댓글 수정</a>
				<a href="deletecoment?commentId=${comments.commentId}&boardId=${board.boardId}">댓글 삭제</a>
				<br>
				--------------------------------------------------------------------------------
			</c:forEach>
			<br>
			====================================================================================
			<h5>댓글 작성</h5>
			
			<form action="Fboard" method="POST">
				<input type="hidden" name="boardId" value="${board.boardId}">
				<input type="text" name="comment">
				<input type="submit" value="등록">
			</form>
			
</body>
</html>