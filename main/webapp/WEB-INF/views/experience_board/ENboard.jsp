<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
						inputD.setAttribute("type","datetime-local");
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
						
						var button = document.createElement("button");
						var buttonText = document.createTextNode("취소");
						button.appendChild(buttonText);

						button.addEventListener('click', function(event) {
						  event.preventDefault(); // 기본 이벤트 동작을 막습니다.
						  container.removeChild(form); // 폼을 삭제합니다.
						  container.appendChild(delp); //신청버튼 다시생성
						});
						
						form.appendChild(button);
						container.appendChild(form);
					}
</script>
</head>
<body>		

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
	
	<%
		request.setAttribute("loginId", session.getAttribute("personId"));
	%>
 			
	<div class="container my-3">
        <h1>체험글 상세 페이지</h1>
        <a href="/123team/ENboards">돌아가기</a>
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
                <c:if test="${loginId != null}">
	                <div id="container">
						<button id="delp" onclick="bookform('${board.title}','${board.animal}','${board.experience}','${board.personId}')" class="btn btn-primary">체험신청</button>
					</div>			
				</c:if>
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

<%-- 
	<c:if test="${board.personId == loginId}">

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