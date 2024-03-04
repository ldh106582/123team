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

	<%
		request.setAttribute("type", session.getAttribute("type"));
		request.setAttribute("checktype", "h");
	%>
	
	<%@  include file="../module/headerinfo.jsp" %>

    <div class="container my-3">
        <div class="d-flex justify-content-between">
            <div>
                <h1><img width="50" height="50" src="https://img.icons8.com/ios/50/hospital.png" alt="hospital"/>병원목록</h1>
            </div>
            <c:if test="${type == checktype}">
            <div class="justify-content-end">
                <a href="hospitals/create" class="btn btn-success ">병원 추가</a>
                <a href="hospitals/manageapps">모든신청보기</a>
            </div>
            </c:if>
            <c:if test="${loginId != null && type!=checktype}">
            	<a href="hospitals/mybookList?personId=${loginId}">내 예약 보기</a>            
            </c:if>
        </div>
        <br>
        <div class="row" >
            <c:forEach items="${hospitals}" var="hospital">
                <div class="col" style="padding: 15px;">
                    <div class="border border-secondary rounded " style="width: 350px; height: 300px;">
                        <div class="detail-box">
                            <div class="options">
                                <a href="hospitals/hospital?hid=${hospital.hid}">
                                <img src="${hospital.image}" alt="" width="100%" height="210">
                                </a>
                            </div>
                            <a href="hospitals/hospital?hid=${hospital.hid}" class="text-decoration-none">
                                <h5>${hospital.name}</h5>
                                <p>${hospital.description}</p>
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        </div>
        <br>
        <form action="/123team/hospitals/selectbytitle" class="form-inline my-2 justify-content-center ">
            <input type="text" name="title" placeholder="병원 이름 입력" class="form-control mr-3" />
            <button type="submit" class="btn btn-success">검색</button>
        </form>

	<%@ include file="../module/footer.jsp" %>
</body>
</html>