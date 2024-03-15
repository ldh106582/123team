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
	<c:forEach items="${mylist}" var="list">
		<br>
		상품 이름 : ${list.productName}
		상품 ID : ${list.productId}
		주문 갯수 : ${list.amount}
		상품 가격 : ${list.price}
		총 가격  : ${list.totalPrice}
		주문자 이름 : ${list.personId}
		배송지 주소 : ${list.personAddress}
		주문일 : ${list.orderDate}
		상태 : ${list.state}
	</c:forEach>
</body>
</html>