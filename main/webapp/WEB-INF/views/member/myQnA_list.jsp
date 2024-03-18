<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<%
	int i=0;
%>
	${nothing} <!-- 작성한 QNA없을때 출력할 문구 -->
	<c:forEach items="${QNA}" var="list">
	<div>
	QNA내용
		${list.productname}
		${list.title}
		${list.context}
		${list.registDay}
		${list.image}
		<br>
	답변
		<c:forEach items="${list.commentlist}" var="list2">
		${list2.comment}
		${list2.registDay}
		${nothing+i}<!-- 답변이 없을때 출력할 문구 -->
		<%
			i++;
		%>
		</c:forEach>
	</div>
	</c:forEach>
</body>
</html>