<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
   <nav class="navbar navbar-expand navbar-dark bg-danger">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/123team">Home</a>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="/123team/hospital">병원</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/products">동물상품</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/Fboards">게시판</a>
                </li>
 				<c:choose>             
	            <c:when test="${not empty managerId }">
	                	
	                <li class="nav-item">
	                  <a class="nav-link" href="/123team/managerlogin/manager_page?personId=${managerId.personId}">마이페이지</a>
	                </li>
	                
	            </c:when>
	               	<c:otherwise>
		                <li class="nav-item">
		                  <a class="nav-link" href="/123team/login">로그인</a>
		                </li>
	                </c:otherwise>
                </c:choose>
                
            </div>
        </div>
    </nav>
    
	<h1>공지사항 페이지</h1>
	
	<a href="/123team/Nboards"><button>공지사항</button></a> || <a href="/123team/Fboards"><button>자유게시판</button></a> || <a href="/123team/ENboards"><button>체험단</button></a>&emsp; <a href="Nboards/add"><button>게시글 작성</button></a>
	<br>
	<% 
		int size = (Integer) request.getAttribute("size");
		request.setAttribute("sise", size);
	%>
	<c:set var="pageSize" value="${sise}" /> <!-- 한 페이지에 표시할 게시글 수 -->
	<c:set var="currentPage" value="${param.page ne null ? param.page : 1}" /> <!-- 현재 페이지 번호 -->
	<c:set var="start" value="${(currentPage - 1) * pageSize}" /> <!-- 페이지의 시작 인덱스 -->
	<c:set var="end" value="${currentPage * pageSize}" /> <!-- 페이지의 끝 인덱스 -->
	<%
			int pagenum =0;
			int totalPages=0;
			int count = 0;
		%>
		
		<c:forEach items="${NBoardlist}" var="nboard" varStatus="status">
		<%
			++pagenum;
			request.setAttribute("pagenum", pagenum);
		%>
		<c:if test="${status.index >= start && status.index < end}"> <!-- 현재 페이지에 해당하는 게시글만 표시 -->
			<li>
				<a href="/123team/Nboards/Nboard?boardId=${nboard.boardId}">
				(${pagenum})
				제목 : ${nboard.title}
				&emsp;
				등록일 : ${nboard.registDay}
				조회수 : ${nboard.hit}
				</a>
			</li>
		</c:if>
	</c:forEach>
	<br>
	
	<%
		if(pagenum%5>0){
			++totalPages;
		}
	
		totalPages = totalPages+(pagenum/5);
		
		if(size>5){
			--totalPages;
		}
		request.setAttribute("totalPages", totalPages);
	%>
	
	<c:forEach begin="1" end="${totalPages}" var="pageNum"> <!-- 페이지 번호 출력 -->
		<a href="/123team/Nboards?page=${pageNum}"> [${pageNum}] </a>
	</c:forEach>
	
	<br>
	
	<form action="/123team/Nboards/selectbytitle">
		<input type="text" name="title" placeholder="제목입력"/>
		<button type="submit">검색</button>
	</form>
	
</body>
</html>
