<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<<<<<<< HEAD
	<a href="create">병원추가</a>
	<a href="search">병원검색</a>
	<a href="update">병원수정</a>
	<a href="delete">병원삭제</a>
	<a href="booking">병원예약</a>
	
	<nav class="navbar navbar-expand navbar-dark bg-primary">
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

    <div class="container my-3">
        <div class="d-flex justify-content-between">
            <div>
                <h1><img width="50" height="50" src="https://img.icons8.com/ios/50/hospital.png" alt="hospital"/>병원목록</h1>
            </div>
            <div class="justify-content-end">
                <a href="#" class="btn btn-success ">병원 추가</a>
                <a href="#" class="btn btn-danger ">병원 삭제</a> 
            </div>
        </div>
        <br>
        <div class="row" >
            <c:forEach>
                <div class="col">
                    <div class="border border-secondary rounded" style="width: 350px; height: 300px;">
                        <div class="detail-box">
                            <div class="options">
                                <a href="">
                                <img src="img/O8p-ejkKrjHyRj-WFMBNVXq-MkwfQNTGliUOWGrueWkwKT0Deqz5V7AsTA-X1b7QHrgJTUyy3joO053YGDEY1UgyGXJ-EN12PN7iDrO9MBMcycdmvo4AUuQnr_T7P8SZnkK32rOS54WfWOLT68svzQ.webp" alt="" width="100%" height="210">
                                </a>
                            </div>
                            <a href="#" class="text-decoration-none">
                                <h5>${hospital.name}</h5>
                                <p>${hospital.context}</p>
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
           
        <br>
        <form action="search" class="form-inline my-2 justify-content-center ">
            <input type="text" name="title" placeholder="제목입력" class="form-control mr-3" />
            <button type="submit" class="btn btn-success">검색</button>
        </form>
    </div>
=======
 <%@  include file="../module/headerinfo.jsp" %>
<a href="hospitals/create">병원추가</a>

<c:forEach items="${hospitals}" var="hospital">
	<p> 이미지 : ${hospital.image}
	<p> 병원 이름 : ${hospital.name}
	<p> 병원 설명 : ${hospital.description}
	<a href="hospitals/hospital?hid=${hospital.hid}"><button>상세보기</button></a>
	<p>
	======================================
</c:forEach>	
<p>
<a href="search">병원검색</a>	
>>>>>>> origin/hanui
</body>
</html>