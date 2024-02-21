<%@page import="com.springmvc.domain.userinfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

				<script type="text/javascript">
					function editform(comment,commentId){
						
						var container = document.getElementById(commentId);
						console.log(commentId);
						var dew = "willdelete"+commentId;
						var willdelete = document.getElementById(dew);
						
						console.log(dew);
						container.removeChild(willdelete);
						
						var form = document.createElement("form");
						form.setAttribute("action","/123team/Fboards/updatecomment");
						form.setAttribute("method","POST");
						
						var inputh = document.createElement("input");
						inputh.setAttribute("type","hidden");
						inputh.setAttribute("name","commentId");
						inputh.setAttribute("value",commentId);
						
						var inputt = document.createElement("input");
						inputt.setAttribute("type","text");
						inputt.setAttribute("name","comment");
						inputt.setAttribute("value",comment);
						
						var inputs = document.createElement("input");
						inputs.setAttribute("type","submit");
						inputs.setAttribute("value","수정하기");
						
						form.appendChild(inputh);
						form.appendChild(inputt);
						form.appendChild(inputs);
						
						container.appendChild(form);
						
						
					}
				</script>
</head>
<body>		
 <%@  include file="../module/header.jsp" %>
 			<%
 				request.setAttribute("loginId", userinfo.getInstance().getPersonId());
 			%>
 			<c:if test="${board.personId == loginId}">
			<a href="update?boardId=${board.boardId}">게시글 수정</a>
			<a href="delete?boardId=${board.boardId}">게시글 삭제</a>
			&emsp;&emsp;&emsp; </c:if>
			<a href="/123team/Fboards">돌아가기</a>
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
				
				<div id="${comments.commentId}">
					<b id="willdelete${comments.commentId}">${comments.comment}</b>
				</div>
				<c:if test="${comments.personId == loginId}">
				<button onclick="editform('${comments.comment}','${comments.commentId}')">댓글 수정</button>
				<a href="deletecoment?commentId=${comments.commentId}&boardId=${board.boardId}"><button>댓글 삭제</button></a>
				</c:if>
				<br>
				--------------------------------------------------------------------------------
			</c:forEach>
				
			<br>
			====================================================================================
			<c:if test="${loginId != null}">
			<h5>댓글 작성</h5>
			
			<form action="ENboard" method="POST">
				<input type="hidden" name="boardId" value="${board.boardId}">
				<input type="text" name="comment">
				<input type="submit" value="등록">
			</form>
			</c:if>
			
</body>
</html>