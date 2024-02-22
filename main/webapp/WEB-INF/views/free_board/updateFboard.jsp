<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
          <li class="nav-item">
            <a class="nav-link" href="/123team/login">로그인</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container my-3">
    <h1>게시글 수정 페이지</h1>
    <form action="/update?boardId=${board.boardId}" method="POST">
      <div class="form-group">
        <label for="title">제목 :</label>
        <input type="text" class="form-control" id="title" name="title" value="${board.title}">
      </div>
      <div class="form-group">
        <label for="context">내용 :</label>
        <textarea class="form-control" id="context" name="context" style="height: 300px;">${board.context}</textarea>
      </div>
      <a href="/delete?boardId=${board.boardId}" class="btn btn-danger">삭제</a>
      <button type="submit" class="btn btn-primary">등록</button>
    </form>
  </div>
</body>
</html>