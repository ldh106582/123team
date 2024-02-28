<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<meta charset="UTF-8">
<style>
	 #alldelete{
	 	backgound-color : black;
	 }
	 #a_num{
	 	width: 15%
	 }
	 
	 #num{
	 width:100%;
	 }
	 #amount{
	 
	 width: 100%;
	 }
	 
</style>
<title>장바구니 페이지</title>
</head>
<body>
<<<<<<< HEAD
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
	    
=======
 <%@  include file="../module/headerdanger.jsp" %>
	
>>>>>>> origin/hanui
	<div class="jumbotron">
		<div class="contianer">
			<h2 class="dislpay-2"> <i class="fa-solid fa-truck-fast"></i> 내 장바구니 목록</h2>
		</div>
	</div>

	
	
 	<div class="container">
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
			    <c:forEach items="${shoppingCart}" var="cart" varStatus="status">
   				<form id="form" action="/123team/orders/o_create" method="post">
	   				<input type="hidden" name="shoppingCartId" value="${cart.shoppingCartId}"> <!-- 카트 넘버 -->
			        <input type="hidden" name="productId" value="${cart.productId}"> <!-- 상품 아이디 -->
			        <input type="hidden" name="productName" value="${cart.productName}"> <!-- 상품이름 -->
			        <input type="hidden" name="amount" value="${cart.amount}"> <!-- 상품 양 -->
   		            <input type="hidden" name="productPrice" value="${cart.productPrice}"> <!-- 상품 가격 -->
			        <input type="hidden" name="personId" value="${cart.personId}"> <!-- 주문자 아이디 -->
					<!-- 여기 버튼을 눌러서 제출 -->
					<div class="float-right mb-2">
						<input class="btn btn-info btn-sm mr-4" type="submit" value="주문하기"></input>
					</div>
					<div>
						<a href="/123team/products/alldelete?personId=${shoppingCart.get(0).personId}" class="btn border border-dark ml-5 btn-sm" id="alldelete" >전체삭제</a>
					</div>
			        <tr>
			            <td class="shop border-right">${cart.productCategory}</td>
			            <td class="shop border-right align-self-center">img</td>
			            <td class="shop border-right align-self-center">${cart.productName}</td>
			            <td id="a_num" class="shop border-right">
			                <div id="num"> 
			                    <input id="amount_${status.index}" class="form-group col-sm-8" type="number" name="amount" value="${cart.amount}">
			                </div>
			            </td>
			            <td class="shop border-right text-right">${cart.productPrice} 원</td>
			            <td class="shop border-right text-right">${cart.amount * cart.productPrice} 원</td>
			            <td class="form-group">
			                                                                                               
			                <a class="btn btn-danger btn-sm" href="/123team/products/cartdelete?shoppingCartId=${cart.shoppingCartId}&personId=${cart.personId}">삭제하기</a>
			            </td>
			        </tr>
		        </form>
		        
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
	
	<%@ include file="../module/footer.jsp" %>
</body>

<script>
function redirectToOrder(index, productId, productName, amount, productPrice, personId) {
    var formData = {
        index: index,
        productId: productId,
        productName: productName,
        amount: amount,
        productPrice: productPrice,
        personId: personId
    };
    	    	$.ajax({
    	    		url : "/123team/orders/o_reading?",
    	    		type : "post",
    	    		data: formData
    	    		success: function(response){
    	    			consol.log("값입력", response);
    	    		},
    	    		error: function(xhr, status, error){
    	    			console.error("ajax요청", error);
    	    		}
    	    		
    	    	});
    	    });
    	});
    	
    
</script>

</html>