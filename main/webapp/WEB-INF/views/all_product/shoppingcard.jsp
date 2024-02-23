<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/8759f784cf.js" crossorigin="anonymous"></script>
<!-- css -->
<link rel="stylesheet" href="../resources/css/shoppingcart.css">
<meta charset="UTF-8">
<style>
	 #alldelete{
	 	backgound-color : black;
	 }
</style>
<title>장바구니 페이지</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-danger">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/123team">Home</a>
			</div>
			<div class="collapse navbar-collapse justify-content-end" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="/123team/hospital"><img width="24" height="24" src="https://img.icons8.com/doodle/48/hospital--v1.png" alt="hospital--v1"/>병원</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/123team/products"><img width="24" height="24" src="https://img.icons8.com/external-photo3ideastudio-lineal-color-photo3ideastudio/24/external-pet-shop-pet-shop-photo3ideastudio-lineal-color-photo3ideastudio.png" alt="external-pet-shop-pet-shop-photo3ideastudio-lineal-color-photo3ideastudio"/>동물상품</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/123team/Fboards"><img width="24" height="24" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/24/external-board-police-flaticons-lineal-color-flat-icons-2.png" alt="external-board-police-flaticons-lineal-color-flat-icons-2"/>게시판</a>
					</li>
					
					<li class="nav-item">
						<a class="nav-link" href="/123team/login"><img width="24" height="24" src="https://img.icons8.com/stickers/24/unlock.png" alt="unlock"/> 마이페이지</a>
					</li>
					
					<li class="nav-item">
						<a class="nav-link" href="/123team/login"><img width="24" height="24" src="https://img.icons8.com/stickers/24/unlock.png" alt="unlock"/>로그인</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="jumbotron">
		<div class="contianer">
			<h2 class="dislpay-2"> <i class="fa-solid fa-truck-fast"></i> 내 장바구니 목록</h2>
		</div>
	</div>
	
 	<div class="container">
 		<div class="float-right mb-2">
 			<a href="#" class="btn btn-info mr-5">주문하기</a>
 		</div>
 		<div>
 			<a href="/123team/products/alldelete?shoppingcartId=${shoppingCart.get(0).shoppingCartId}" class="btn border border-dark ml-5" id="alldelete" >전체삭제</a>
 		</div>
 	
		<div class="">
			<table class="table text-center">
				<tr>
				  <th class="border-right">카테고리
				  <th class="border-right">이미지
				  <th class="border-right">상품명
				  <th class="border-right">수량
				  <th class="border-right">단가
				  <th class="border-right">총금액
				  <th >비고
				</tr>
				<c:forEach items="${shoppingCart}" var="cart" >
				 <tr>
				   <td class="shop border-right">${cart.productCategory}</td>
				   <td class="shop border-right align-self-center">img</td>
				   <td class="shop border-right align-self-center">${cart.productName}</td>
				   <td class="shop border-right col-sm-1">
				   	 <form action="/123team/prodcuts/addcart" method="post">	  
				   	    <input id="amount" class="col-md-12 " type="number" name="amount" value="${cart.amount}" />
				   	 </form>
				   </td>
				   <td class="shop border-right text-right">${cart.productPrice} 원</td>
				   <td class="shop border-right text-right">${cart.amount * cart.productPrice} 원</td>
				   <td class="form-group">
				   	  <button id="addButton" class="btn btn-info btn-sm" type="submit" onclick="idDuplicateCheck(event)" data-shoppingCartId="${shoppingCart.get(0).shoppingCartId}">추가하기</button>
				   	  <br>
				      <a class="btn btn-danger btn-sm" href="#">삭제하기</a>
				   </td>
				 </tr>
				</c:forEach>
				<tr>
					<td colspan="4">전체 금액 (배송비2,500원 + 총 금액)</td>
	      			<td id="subtotal" class="border-left" colspan="3"> 2500원 <span> (배송비 포함)</span></td>
				</tr>
				<tr>
					<td colspan="4">
					<td colspan="2">
					<td>
				<tr>
			</table>
		</div>
	</div>
</body>
<!-- js -->
<script src="../resources/js/shoppingcart.js"></script>
</html>