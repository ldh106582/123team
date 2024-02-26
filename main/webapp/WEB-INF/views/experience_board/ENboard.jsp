<%@page import="com.springmvc.domain.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
				
					function editform(comment,commentId){
						
						var container = document.getElementById(commentId);
						console.log(commentId);
						var dew = "willdelete"+commentId;
						var willdelete = document.getElementById(dew);
						console.log(dew);
						container.removeChild(willdelete);
						
						var form = document.createElement("form");
						form.setAttribute("action","/123team/Nboards/updatecomment");
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
					
					function bookform(title,animal,experience,mid){
						var container = document.getElementById("container");
						var delp = document.getElementById("delp");
						
						container.removeChild(delp);
						
						var form = document.createElement("form");
						form.setAttribute("action","/123team/ENboards/addapp");
						form.setAttribute("method","POST");
						
						var inputT = document.createElement("input");
						inputT.setAttribute("type","hidden");
						inputT.setAttribute("name","title");
						inputT.setAttribute("value",title);
						
						var inputA = document.createElement("input");
						inputA.setAttribute("type","hidden");
						inputA.setAttribute("name","animal");
						inputA.setAttribute("value",animal);

						var inputE = document.createElement("input");
						inputE.setAttribute("type","hidden");
						inputE.setAttribute("name","experience");
						inputE.setAttribute("value",experience);
						
						var inputD = document.createElement("input");
						inputD.setAttribute("type","date");
						inputD.setAttribute("name","registDay");
						inputD.setAttribute("required",true);
						
						
						var inputs = document.createElement("input");
						inputs.setAttribute("type","submit");
						inputs.setAttribute("value","신청하기");
						
						var inputM = document.createElement("input");
						inputM.setAttribute("type","hidden");
						inputM.setAttribute("name","mid");
						inputM.setAttribute("value",mid);
						
						form.appendChild(inputT);
						form.appendChild(inputA);
						form.appendChild(inputE);
						form.appendChild(inputD);
						form.appendChild(inputs);
						form.appendChild(inputM);
						
						container.appendChild(form);
					}
</script>
</head>
<body>		

	<%@  include file="../module/header.jsp" %>
	
	<%
		request.setAttribute("loginId", userinfo.getInstance().getPersonId());
	%>
 			
	<div class="container my-3">
        <h1>체험글 상세 페이지</h1>
        <div class="row">
            <div class="col-md-12">
                <h1 class="mt-4">${board.title}</h1>
                <hr>
                <div class="col-md-12">
                	<h5> 동물 : ${board.animal} &emsp;&emsp; 체험 : ${board.experience}</h5>
                </div>
                <hr>
                <div class="col-md-12" style="height: 200px;">
                    <p class="">${board.context}</p>
                </div>
                <hr>
                <a href="update?boardId=${board.boardId}"class="btn btn-primary">수정하기</a>
                <a href="delete?boardId=${board.boardId}"class="btn btn-danger">삭제하기</a>
            </div>
        </div>
        <hr>
        <div class="list-group">
		    <c:forEach items="${Commentlist}" var="comments">
		        <div class="list-group-item">
		            <div class="d-flex w-100 justify-content-between">
		                <h5 class="mb-1">${comments.comment}</h5>
		                <small>${comments.registDay}</small>
		            </div>
		            <p class="mb-1" id="${comments.commentId}">${comments.comment}</p>
		            <c:if test="${comments.personId == loginId}">
		                <button class="btn btn-primary" onclick="editform('${comments.comment}','${comments.commentId}')">댓글 수정</button>
		                <a href="deletecoment?commentId=${comments.commentId}&boardId=${board.boardId}" class="btn btn-danger">댓글 삭제</a>
		            </c:if>
		        </div>
		    </c:forEach>
	        <c:if test="${loginId != null}">
			    <h5 class="mb-3">댓글 작성</h5>
			    <form action="ENboard" method="POST" class="mb-3">
			        <input type="hidden" name="boardId" value="${board.boardId}">
			        <div class="form-group">
			            <textarea class="form-control" name="comment" rows="3"></textarea>
			        </div>
			        <button type="submit" class="btn btn-primary">등록</button>
			    </form>
			</c:if>
		</div>
	</div>

<%-- 
	<c:if test="${board.personId == loginId}">
=======
   <nav class="navbar navbar-expand navbar-dark bg-success">
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
 			<%
 				request.setAttribute("loginId", userinfo.getInstance().getPersonId());
 			%>
 			<c:if test="${board.personId == loginId}">
>>>>>>> fa9e400f8ceb5c1826ec622c185d981968432be3
			<a href="update?boardId=${board.boardId}">공고글 수정</a>
			<a href="delete?boardId=${board.boardId}">공고글 삭제</a>
			&emsp;&emsp;&emsp; </c:if>
			<a href="/123team/ENboards">돌아가기</a>
			<br>
			===================================================================================
			<br>
			<h5> 제목 : ${board.title}</h5>
			<h5> 동물 : ${board.animal} &emsp;&emsp; 체험 : ${board.experience}</h5>
			<h5>내용</h5>
			<div>${board.context}</div>
			<c:if test="${loginId != null}">
			<div id="container">
				<button id="delp" onclick="bookform('${board.title}','${board.animal}','${board.experience}','${board.personId}')">체험신청</button>
			</div>
			</c:if>
			<br>
			====================================================================================
			<h5> 댓글</h5>
			<c:forEach items="${Commentlist}" var="comments">
				<br>
				작성일 : ${comments.registDay}
				<div id="${comments.commentId}">
					<b id="willdelete${comments.commentId}">${comments.comment}</b>
				</div>
	 			<c:if test="${comments.personId == loginId}">
					<button onclick="editform('${comments.comment}','${comments.commentId}')">댓글 수정</button>
					
					<a href="deletecoment?commentId=${comments.commentId}&boardId=${board.boardId}"><button>댓글 삭제</button></a>
				</c:if>
				<br>
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
			 --%>
			
</body>
</html>