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
<!-- header -->
<nav class="navbar navbar-expand navbar-dark bg-danger">
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
				    <c:when test="${not empty managerId and (managerId.type eq 'p' or managerId.type == 'p')}">
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
            </div>
        </div>
    </nav>
 <!-- header end -->
    
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
				<c:forEach items="${listOfOrder}" var="order">
				    <tr>
				        <td class="shop border-right align-self-center">${order.productName}</td>
				        <td class="shop border-right align-self-center">${order.amount}</td>
				        <td class="shop border-right align-self-center">${order.productPrice}</td>
				        <td class="shop border-right align-self-center">${order.totalPrice}</td>
				    </tr>
				</c:forEach>
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