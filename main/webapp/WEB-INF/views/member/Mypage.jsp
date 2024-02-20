<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.springmvc.domain.Person"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공 페이지</title>
</head>
<body>

	<p>로그인성공
	
	<p>아이디 : ${ id.personId } 입니다!!
	
	<c:forEach items="${ petName }" var="pet">
		<a href="<c:url value="/login/petcard?petid=${pet.petId}"/>"  class="bte bte-secondary" role="button">나의 반려동물 : ${ pet.petName }</a>
	</c:forEach>


	<br>
	<a class="btn btn-Secondary" role="button" href= "./login/update?personId=${ personId }">회원수정 &raquo;</a>
	<a class="btn btn-Secondary" role="button" id="delete" href= "./login/delete?id=${ personId }">회원삭제 &raquo;</a>
	<a class="btn btn-Secondary" role="button" href= "./pet?id=${ personId }">반려동물 정보입력 &raquo;</a>
	<% if(session.getAttribute("personId") != null) { %>
		<a class="btn btn-Secondary" role="button" href="/123team/login" id="logout"  >로그아웃 &raquo;</a>
		
	<%}%>
</body>
<!-- js -->
<script>

document.getElementById('delete').addEventListener("click", function(e){
    if(!confirm("정말로 회원을 삭제하시겠습니까??")){
        e.preventDefault();
    }
});

document.getElementById('logout').addEventListener("click", function(e){
	if(!confirm("로그아웃 하시겠습니까??")){
		e.preventDefault();
	}
});
</script>
</html>