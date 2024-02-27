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
<<<<<<< HEAD
<!-- header start -->
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
         	   </ul>	  
            </div>
        </div>
    </nav>
 <!-- header end -->
	
=======
 <%@  include file="../module/headersuccess.jsp" %>
 
>>>>>>> origin/hanui
  <div class="container my-3">
    <h1>게시글 등록 페이지</h1>
    <form:form modelAttribute="board" method="POST">
      <div class="form-group">
        <label for="title">제목 :</label>
        <input type="text" class="form-control" id="title" name="title">
      </div>
      <div class="form-group">
        <label for="context">내용 :</label>
        <textarea class="form-control " id="context" name="context" style="height: 300px;"></textarea>
      </div>
      <button type="submit" class="btn btn-primary">등록</button>
    </form:form>
  </div>

	<%@ include file="../module/footer.jsp" %>
</body>
</html>