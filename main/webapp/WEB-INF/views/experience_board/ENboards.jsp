<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
 <%@  include file="../module/headersuccess.jsp" %>
 
	<%
		request.setAttribute("loginId", session.getAttribute("personId"));
	%>
	
	<div class="container my-3">
        <h1><img width="64" height="64" src="https://img.icons8.com/pastel-glyph/64/customer-insight.png" alt="customer-insight"/>체험단</h1>
        <div class="d-flex justify-content-between mb-3">
            <div>
                <a href="/123team/Nboards" class="btn btn-secondary mr-2">공지사항</a>
                <a href="/123team/Fboards" class="btn btn-secondary mr-2">자유게시판</a>
                <a href="/123team/ENboards" class="btn btn-secondary mr-2">체험단</a>
                <a href="ENboards/manageapps" class="btn btn-secondary mr-2">신청 관리</a>
            </div>
            <div>
	            <c:if test="${loginId != null}">
					<a href="/123team/ENboards/applist" class="btn btn-primary">내 체험단 신청 목록</a>
				</c:if>
            	<a href="ENboards/add" class="btn btn-primary">게시글 작성</a>
            </div>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                    <th scope="col">조회수</th>
                </tr>
            </thead>
            <tbody>
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
                <c:forEach items="${ENBoardlist}" var="enboard" varStatus="status">
   					<%
						++pagenum;
						request.setAttribute("pagenum", pagenum);
					%>
	                <c:if test="${status.index >= start && status.index < end}"> <!-- 현재 페이지에 해당하는 게시글만 표시 -->
	                    <tr>
	                        <th scope="row">${pagenum}</th>
	                        <td class="col-7"><a href="/123team/ENboards/ENboard?boardId=${enboard.boardId}">${enboard.title}</a></td>
	                        <td>${enboard.personId}</td>
	                        <td>${enboard.registDay}</td>
	                        <td>${enboard.hit}</td>
	                    </tr>
	                </c:if>
                </c:forEach>
            </tbody>
        </table>
        <div>
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
            <ul class="pagination justify-content-center">
                <c:forEach begin="1" end="${totalPages}" var="pageNum"> 
                    <li class="page-item "><a href="/123team/ENboards?page=${pageNum}">[${pageNum}]</a></li>
                </c:forEach>
            </ul>
        </div>
        
        <form action="/123team/ENboards/selectbytitle" class="form-inline my-2 justify-content-center ">
            <input type="text" name="title" placeholder="제목입력" class="form-control mr-3" />
            <button type="submit" class="btn btn-success">검색</button>
        </form>
    </div>
	
	
</body>
</html>
