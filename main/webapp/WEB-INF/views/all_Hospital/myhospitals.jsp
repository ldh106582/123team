<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	내 병원 목록
	<c:forEach items="${hospitals}" var="hospital">
		${hospital.name}
		${hospital.addr}
		${hospital.number}
		${hospital.runtime}
		${hospital.parking}
		${hospital.description}
		${hospital.image}
		${hospital.reviewScore}
		${hospital.reviewCount}
		<a href="/123team/hospitals/update?hid=${hospital.hid}"">병원 수정</a> <a href="/123team/hospitals/delete?hid=${hospital.hid}" onclick="alert('정말 삭제 하시겠습니까?')">병원 삭제</a> 
		<br>
	</c:forEach>
	
</body>
</html>