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


	<%@  include file="../module/headerinfo.jsp" %>

 <%
		request.setAttribute("loginId", session.getAttribute("personId"));
	%>
<a href="hospitals/create">병원추가</a>
<a href="hospitals/mybookList?personId=${loginId}">내 예약 보기</a>
<c:forEach items="${hospitals}" var="hospital">
      <c:choose>
         <c:when test="${hospital.getImage() == null }">
             <div>
                 <img src="https://static.nid.naver.com/images/web/user/default.png" width="100" height="56" alt="내 프로필 이미지">
             </div>
            </c:when>
           <c:otherwise>
             <div>
                 <img src="<c:url value="/resources/images/${ hospital.image }"/>" height="56" alt="내 프로필 이미지">
             </div>
           </c:otherwise>
     </c:choose>

	<p> 병원 이름 : ${hospital.name}
	<p> 병원 설명 : ${hospital.description}
	<a href="hospitals/hospital?hid=${hospital.hid}"><button>상세보기</button></a>
	<p>
	======================================
</c:forEach>	
<p>
<a href="search">병원검색</a>	

</body>
</html>