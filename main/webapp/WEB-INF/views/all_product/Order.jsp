<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/8759f784cf.js" crossorigin="anonymous"></script>
<!-- css -->
<link rel="stylesheet" href="../resources/css/shoppingcart.css">
<meta charset="EUC-KR">
<title>주문 페이지 입니다.</title>
</head>
<body>

 <%@  include file="../module/headerdanger.jsp" %>

    <div class="jumbotron">
	  <div class="contianer">
		 <h2 class="dislpay-2"> <i class="fa-solid fa-gift"></i> 주문 완료 페이지</h2>
	  </div>
	</div>
	
	<br>
 	<div class="container">
 		<br>
		<div class="">
			<table class="table text-center">
				<tr> 
				  <th class="border-right">상품명
				  <th class="border-right">수량
				  <th class="border-right">단가
				  <th class="">총금액
				</tr>
				    <tr>
				        <td class="shop border-right align-self-center">${order.productName}</td>
				        <td class="shop border-right align-self-center">${order.amount}</td>
				        <td class="shop border-right align-self-center">${order.price}</td>
				        <td class="align-self-center">${order.totalPrice}</td>
				    </tr>
				<div class="contianer">
					<h1 clss="alert alert-danger">주문해 주셔서 감사합니다.</h1>
			    	<h4>소중한 상품 안전하게 배송해 드리겠습니다.</h4>
			    	<p>주문 번호 : ${order.oderNum}
				</div> 
				<br><br>
			</table>
		</div>
	</div>
    
    <%@ include file="../module/footer.jsp" %>
</body>
</html>