<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.springmvc.domain.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/ddd0a6fba1.js" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
   <nav class="navbar navbar-expand navbar-dark bg-dark">
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
           	

	<% // 오류있음 한의 확인할것 변경x
 		// request.setAttribute("loginId", userinfo.getInstance().getPersonId());
 	%>
	
	<% 
		int size = (Integer) request.getAttribute("size");
		request.setAttribute("sise", size);
	%>
	

	<%
		/* if(pagenum%5>0){
			++totalPages;
		}
	
		totalPages = totalPages+(pagenum/5);
		
		if(size>5){
			--totalPages;
		}
		request.setAttribute("totalPages", totalPages); */
	%>
	
	<c:forEach begin="1" end="${totalPages}" var="pageNum"> <!-- 페이지 번호 출력 -->
		<a href="Fboards?page=${pageNum}"> [${pageNum}] </a>
	</c:forEach>
	
	<br>


    <div class="container my-3">
        <h1><img width="66" height="66" src="https://img.icons8.com/ios/66/noticeboard.png" alt="noticeboard"/>자유게시판</h1>
        <div class="d-flex justify-content-between mb-3">
            <div>
                <a href="/123team/Nboards" class="btn btn-secondary mr-2">공지사항</a>
                <a href="/123team/Fboards" class="btn btn-secondary mr-2">자유게시판</a>
                <a href="/123team/ENboards" class="btn btn-secondary mr-2">체험단</a>
            </div>
            <div>
	            <c:if test="${loginId != null}">
					<a href="Fboards?myId=${loginId}" class="btn btn-primary">내 게시글만 보기</a>
				</c:if>
            	<a href="Fboards/add" class="btn btn-primary">게시글 작성</a>
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
            <c:set var="pageSize" value="${sise}" /> <!-- 한 페이지에 표시할 게시글 수 -->
			<c:set var="currentPage" value="${param.page ne null ? param.page : 1}" /> <!-- 현재 페이지 번호 -->
			<c:set var="start" value="${(currentPage - 1) * pageSize}" /> <!-- 페이지의 시작 인덱스 -->
			<c:set var="end" value="${currentPage * pageSize}" /> <!-- 페이지의 끝 인덱스 -->
			<%
				int pagenum =0;
				int totalPages=0;
				int count = 0;
			%>
                <c:forEach items="${FBoardlist}" var="fboard" varStatus="status">
   					<%
						++pagenum;
						request.setAttribute("pagenum", pagenum);
					%>
	                <c:if test="${status.index >= start && status.index < end}"> <!-- 현재 페이지에 해당하는 게시글만 표시 -->
	                    <tr>
	                        <th scope="row">${pagenum}</th>
	                        <td class="col-7"><a href="Fboards/Fboard?boardId=${fboard.boardId}">${fboard.title}</a></td>
	                        <td>${fboard.personId}</td>
	                        <td>${fboard.registDay}</td>
	                        <td>${fboard.hit}</td>
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
                    <li class="page-item "><a href="Fboards?page=${pageNum}" class="page-link">[${pageNum}]</a></li>
                </c:forEach>
            </ul>
        </div>
        
        <form action="/123team/Fboards/selectbytitle" class="form-inline my-2 justify-content-center ">
            <input type="text" name="title" placeholder="제목입력" class="form-control mr-3" />
            <button type="submit" class="btn btn-success">검색</button>
        </form>
    </div>
	
	
	<%@ include file="../module/footer.jsp" %>
</body>
</html>
