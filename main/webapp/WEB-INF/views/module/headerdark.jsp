<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
<style type="text/css">
	*{
	font-family: 'omyu_pretty';
	background-color()
}

@font-face {
    font-family: 'omyu_pretty';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
</style>
</head>
<body>
	<%
		request.setAttribute("loginId", session.getAttribute("personId"));
		request.setAttribute("type", session.getAttribute("type"));
		
	%>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/123team">Home</a>
			</div>
			<div class="collapse navbar-collapse justify-content-end" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="/123team/hospitals"><img width="24" height="24" src="https://img.icons8.com/doodle/48/hospital--v1.png" alt="hospital--v1"/>병원</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/123team/products"><img width="24" height="24" src="https://img.icons8.com/external-photo3ideastudio-lineal-color-photo3ideastudio/24/external-pet-shop-pet-shop-photo3ideastudio-lineal-color-photo3ideastudio.png" alt="external-pet-shop-pet-shop-photo3ideastudio-lineal-color-photo3ideastudio"/>동물상품</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/123team/Fboards"><img width="24" height="24" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/24/external-board-police-flaticons-lineal-color-flat-icons-2.png" alt="external-board-police-flaticons-lineal-color-flat-icons-2"/>게시판</a>
					</li>
					<c:choose>
						<c:when test="${loginId == null}">
							<li class="nav-item">
								<a class="nav-link" href="/123team/login"><img width="24" height="24" src="https://img.icons8.com/stickers/24/unlock.png" alt="unlock"/>로그인</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="nav-item">
								<a class="nav-link" href="/123team/login/mypage"><img width="24" height="24" src="https://img.icons8.com/external-filled-outline-icons-maxicons/24/external-member-borrow-book-filled-outline-filled-outline-icons-maxicons.png" alt="external-member-borrow-book-filled-outline-filled-outline-icons-maxicons"/>마이페이지</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>