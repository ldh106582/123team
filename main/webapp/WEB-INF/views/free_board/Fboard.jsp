<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.springmvc.domain.*" %>
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
						form.setAttribute("action","/123team/ENboards/updatecomment");
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
		
	<%
		request.setAttribute("loginId", session.getAttribute("personId"));
	%>	
 <%@  include file="../module/header.jsp" %>
 
      <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="/123team/hospitals">
              <i class="fa-solid fa-hospital"></i>
              <span class="menu-title ml-3">반려동물 병원</span>
               <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/products" aria-expanded="false" aria-controls="ui-basic">
              <i class="fa-solid fa-gift"></i>
              <span class="menu-title ml-3">반려동물 상품</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
              <i class="fa-solid fa-cart-shopping"></i>
              <span class="menu-title ml-3">장바구니</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/ENboards" aria-expanded="false" aria-controls="charts">
              <i class="fa-solid fa-dog"></i>
              <span class="menu-title ml-3">체험단</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/Fboards" aria-expanded="false" aria-controls="tables">
              <i class="fa-solid fa-clipboard-question"></i>
              <span class="menu-title ml-3">자유게시판</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="fa-solid fa-user"></i>
              <span class="menu-title  ml-3">My Pages</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/Nboards" aria-expanded="false" aria-controls="error">
              <i class="fa-solid fa-clipboard"></i>
              <span class="menu-title ml-3">공지사항</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/123team/login">
              <i class="fa-solid fa-key"></i>
              <span class="menu-title ml-3">로그인</span>
              <i class="menu-arrow"></i>
            
              <i class="fa-solid fa-right-from-bracket"></i>
              <span class="menu-title ml-3">로그아웃</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
        </ul>
      </nav>
     
         <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                  <h3 class="font-weight-bold"> </h3>
                  <h6 class="font-weight-normal mb-0"></h6>
                </div>
                <div class="col-12 col-xl-4">
                 <div class="justify-content-end d-flex">
                  <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                  </div>
                 </div>
                </div>
              </div>
            </div>
          </div>
          
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021.  Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
          </div>
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Distributed by <a href="https://www.themewagon.com/" target="_blank">Themewagon</a></span> 
          </div>
        </footer> 
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>   
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

		 
    <div class="container my-3">
        <h1>게시글 상세 페이지</h1>
        <a href="/123team/Fboards">돌아가기</a>
        <div class="row">
            <div class="col-md-12">
                <h1 class="mt-4">${board.title}</h1>
                <hr>
                <div class="col-md-12" style="height: 200px;">
                    <p class="">${board.context}</p>
                </div>
                <hr>
                <c:if test="${loginId == board.personId}">
                <a href="update?boardId=${board.boardId}"class="btn btn-primary">수정하기</a>
                <a href="delete?boardId=${board.boardId}"class="btn btn-danger">삭제하기</a>
                </c:if>
            </div>
        </div>
        <hr>
        <div class="list-group">
        	<c:if test="${loginId != null}">
			    <h5 class="mb-3">댓글</h5>
			    <form action="ENboard" method="POST" class="mb-3">
			        <input type="hidden" name="boardId" value="${board.boardId}">
			        <div class="form-group">
			            <textarea class="form-control" name="comment" rows="3"></textarea>
			        </div>
			        <button type="submit" class="btn btn-primary">댓글 작성</button>
			    </form>
			</c:if>
			
		    <c:forEach items="${Commentlist}" var="comments">
		        <div class="list-group-item">
		            <div class="d-flex w-100 justify-content-between">
		            	<h5 class="mb-1">${comments.personId}</h5>
		                <small>${comments.registDay}</small>
		                
		                
		            </div>
		            <div class="d-flex w-100 justify-content-between" id="${comments.commentId}">
		            <p class="mb-1" id="willdelete${comments.commentId}">${comments.comment}</p>
		             </div>
		            <c:if test="${comments.personId == loginId}">
		                <button class="btn btn-primary" onclick="editform('${comments.comment}','${comments.commentId}')">댓글 수정</button>
		                <a href="deletecoment?commentId=${comments.commentId}&boardId=${board.boardId}" class="btn btn-danger">댓글 삭제</a>
		            </c:if>
		        </div>
		    </c:forEach>
	        
		</div>
	</div>
    
    
    <%@ include file="../module/footer.jsp" %>
			
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
			
 --%>
</body>
</html>