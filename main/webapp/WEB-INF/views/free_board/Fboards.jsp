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
	<a>공지사항</a> || <a href="Fboards">자유게시판</a> || <a>체험단</a> {<a href="Fboards/add">게시글 작성</a>}
	<br>

	<c:set var="pageSize" value="5" /> <!-- 한 페이지에 표시할 게시글 수 -->
	<c:set var="currentPage" value="${param.page ne null ? param.page : 1}" /> <!-- 현재 페이지 번호 -->
	<c:set var="start" value="${(currentPage - 1) * pageSize}" /> <!-- 페이지의 시작 인덱스 -->
	<c:set var="end" value="${currentPage * pageSize}" /> <!-- 페이지의 끝 인덱스 -->
	<%
			int pagenum =0;
			int totalPages=0;
		%>
		
	<c:forEach items="${FBoardlist}" var="fboard" varStatus="status">
		<c:if test="${status.index >= start && status.index < end}"> <!-- 현재 페이지에 해당하는 게시글만 표시 -->
			<li>
				<a href="Fboards/Fboard?boardId=${fboard.boardId}">
				(${fboard.num})
				제목 : ${fboard.title}
				작성자ID : ${fboard.personId}
				등록일 : ${fboard.registDay}
				조회수 : ${fboard.hit}
				</a>
			</li>
		</c:if>
		<%
			++pagenum;
		%>
	</c:forEach>
	<br>
	
	<%
		if(pagenum%5>0){
			++totalPages;
		}
	
		totalPages = totalPages+(pagenum/5);
		
		request.setAttribute("totalPages", totalPages);
	%>
	
	<c:forEach begin="1" end="${totalPages}" var="pageNum"> <!-- 페이지 번호 출력 -->
		<a href="Fboards?page=${pageNum}">${pageNum}</a>
	</c:forEach>
	
	<br>
	
	<form action="Fboards/select">
		<input type="text" name="title" placeholder="제목입력"/>
		<button type="submit">검색</button>
	</form>
	
</body>
</html>
