<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                  <a class="nav-link " href="/123team/hospital">병원</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/product">동물상품</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/Fboards">게시판</a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="/123team/login">로그인</a>
                </li>
            </div>
        </div>
    </nav>
    <div class="container my-3">
        <h1>게시판 페이지</h1>
        <div class="d-flex justify-content-between mb-3">
            <div>
                <a href="#" class="btn btn-secondary mr-2">공지사항</a>
                <a href="Fboards" class="btn btn-secondary mr-2">자유게시판</a>
                <a href="#" class="btn btn-secondary mr-2">체험단</a>
            </div>
            <a href="Fboards/add" class="btn btn-primary">게시글 작성</a>
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
                <c:forEach items="${FBoardlist}" var="fboard" varStatus="status">
                <%
                    int pagenum =0;
                    ++pagenum;
                    request.setAttribute("pagenum", pagenum);
                %>
                <c:if test="${status.index >= start && status.index < end}"> <!-- 현재 페이지에 해당하는 게시글만 표시 -->
                    <tr>
                        <th scope="row">${pagenum}</th>
                        <td class="col-10"><a href="Fboards/Fboard?boardId=${fboard.boardId}">${fboard.title}</a></td>
                        <td>${fboard.personId}</td>
                        <td>${fboard.registDay}</td>
                        <td>${fboard.hit}</td>
                    </tr>
                </c:if>
                </c:forEach>
            </tbody>
        </table>
        <div>
            <ul class="pagination justify-content-center">
                <c:forEach begin="1" end="${totalPages}" var="pageNum"> 
                    <li class="page-item "><a href="Fboards?page=${pageNum}" class="page-link">[${pageNum}]</a></li>
                </c:forEach>
            </ul>
        </div>
        <form action="/123team/Fboards/select" class="form-inline my-2 justify-content-center ">
            <input type="text" name="title" placeholder="제목입력" class="form-control mr-3" />
            <button type="submit" class="btn btn-success">검색</button>
        </form>
    </div>
</body>
</html>
