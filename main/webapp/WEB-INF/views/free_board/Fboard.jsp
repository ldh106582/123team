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
</head>
<body>	
<%-- 	
 <%@  include file="../module/header.jsp" %>
  --%>		
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
        <h1>게시글 상세 페이지</h1>
        <div class="row">
            <div class="col-md-12">
                <h1 class="mt-4">${board.title}</h1>
                <hr>
                <div class="col-md-12" style="height: 200px;">
                    <p class="">${board.context}</p>
                </div>
                <hr>
                <button class="btn btn-primary">수정하기</button>
                <button class="btn btn-danger">삭제하기</button>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h2 class="mt-4">댓글 작성하기</h2>
                <form>
                    <div class="form-group">
                        <label for="commenterName">이름</label>
                        <input type="text" class="form-control" id="commenterName" placeholder="이름을 입력해주세요">
                    </div>
                    <div class="form-group">
                        <label for="commentContent">댓글 내용</label>
                        <textarea class="form-control" id="commentContent" rows="3" placeholder="댓글을 입력해주세요"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">댓글 작성</button>
                </form>
            </div>
        </div>
    </div>
    
    <%--  참고용 주석
			<a href="update?boardId=${board.boardId}">게시글 수정</a>
			<a href="delete?boardId=${board.boardId}">게시글 삭제</a>
			&emsp;&emsp;&emsp; <a href="/123team/Fboards">돌아가기</a>
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
				<button onclick="editform('${comments.comment}','${comments.commentId}')">댓글 수정</button>
				<a href="deletecoment?commentId=${comments.commentId}&boardId=${board.boardId}"><button>댓글 삭제</button></a>
				<br>
				--------------------------------------------------------------------------------
			</c:forEach>
			
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
			<br>
			====================================================================================
			<h5>댓글 작성</h5>
			
			<form action="Fboard" method="POST">
				<input type="hidden" name="boardId" value="${board.boardId}">
				<input type="text" name="comment">
				<input type="submit" value="등록">
			</form>
			 --%>
</body>
</html>