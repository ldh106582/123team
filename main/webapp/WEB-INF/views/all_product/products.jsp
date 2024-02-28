<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.springmvc.domain.type" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>products 페이지</title>
</head>
<body>

	<%@  include file="../module/headerdanger.jsp" %>

    <div class="con" style="display: flex;">
        <div class="left_container">
            <div class="left_container1" >
                <i class="fa-regular fa-paw" style="width: 15%; border: 1px solid red; text-align: right;"></i>
                <h2 style="width: 60%;">123상점</h2>
            </div>
            <div class="left_container2">
                <div class="left_ment" style="margin: 0 auto;">
                    <h2 style="margin: 2% 13%;">반려동물과 즐거운 시간</h2>
                </div>
                <div style="width: 100%;   position: relative;">
                    <img src="https://cdn.pet-friends.co.kr/resources/pc/img/button-search%402x.png" width="40%" height="
                    10%"  class="img1">
                    <form style="background-color: white;">
                        <input class="search" type="text" placeholder="찾는 상품을 검색해보세요">
                    </form>
                </div>
                <div class="product_1">
                    <h5 style="font-size: 1.5vw; margin: 2% 13% 0% 0%;">상품 모음</h5>
                </div>
                <div style="display: flex; margin: 0 auto; width: 100%; height: 10%;">
                    <div style="width: 25%; height: 10%; margin: 1%;">
                        <img src="https://i.ibb.co/7zqBWjZ/pexels-markus-winkler-3937657.jpg" alt="pexels-markus-winkler-3937657" style="width: 100%; height: 40%; border: 1px solid black;"/>
                        <h4>강아지 용품</h4>
                        <h6 style="width: 100%;"> 상품명 : 강아지 배변패트</h6>
                        <p style="margin: 0;">설명 : 이상품은 누구나 좋아하는 상품
                        <p style="margin: 0;">가격 : 15000원</p>
                    </div>
                    <div style="width: 25%; height: 10%; margin: 1%">
                        <img src="https://i.ibb.co/7zqBWjZ/pexels-markus-winkler-3937657.jpg" alt="pexels-markus-winkler-3937657" style="width: 100%; height: 40%; border: 1px solid black;"/>
                        <h4>강아지 용품</h4>
                        <h6 style="width: 100%;"> 상품명 : 강아지 배변패트</h6>
                        <p style="margin: 0;">설명 : 이상품은 누구나 좋아하는 상품
                        <p style="margin: 0;">가격 : 15000원</p>
                    </div>
                    <div style="width: 25%; height: 10%; margin: 1%">
                        <img src="https://i.ibb.co/7zqBWjZ/pexels-markus-winkler-3937657.jpg" alt="pexels-markus-winkler-3937657" style="width: 100%; height: 40%; border: 1px solid black;"/>
                        <h4>강아지 용품</h4>
                        <h6 style="width: 100%;"> 상품명 : 강아지 배변패트</h6>
                        <p style="margin: 0;">설명 : 이상품은 누구나 좋아하는 상품
                        <p style="margin: 0;">가격 : 15000원</p>
                    </div>
                    <div style="width: 25%; height: 10%; margin: 1%">
                        <img src="https://i.ibb.co/7zqBWjZ/pexels-markus-winkler-3937657.jpg" alt="pexels-markus-winkler-3937657" style="width: 100%; height: 40%; border: 1px solid black;"/>
                        <h4>강아지 용품</h4>
                        <h6 style="width: 100%; "> 상품명 : 강아지 배변패트</h6>
                        <p style="margin: 0;">설명 : 이상품은 누구나 좋아하는 상품
                        <p style="margin: 0;">가격 : 15000원</p>
                    </div>
                </div>
                 <!--고양이 용품-->
                 
            </div>
        </div>

        <div class="middle_container" style="background-color: azure;">
            <div>
                <h3>상품전체 보기</h3>
                <div>
                    <p>asdf</p>
                    <p>adsf</p>
                </div>
            </div>
            <div>
                <h3>강아지 상품 전체 보기</h3>
                <div>
                    <p>adsf</p>
                    <p>adf</p>
                </div>
            </div>
            <div>
                <h3>고양이 상품 전체 보기</h3>
                <div>
                    <p>adsf</p>
                    <p>asdf</p>
                </div>
            </div>
            <div>
                <h3>기니피그 상품 전체 보기</h3>
                <div>
                    <p>asdf</p>
                    <p>asdf</p>
                </div>
            </div>
            <div>
                <h3>파충류 상품 전체 보기</h3>
                <div>
                    <p>adsf</p>
                    <p>adf</p>
                </div>
            </div>
        </div>

        <div class="right_container">
        </div>
    </div>
    
 <h1>상품 페이지</h1>
 <a href="products/add"><button>상품추가</button></a>
 <c:forEach items="${productList}" var="product">
 	<p>
 	사진 : ${product.productImage}
 	<p>
 	이름 : ${product.productName}
 	<p>
 	가격 : ${product.productPrice}
 	<p>
 	카테고리 : ${product.productCategory}
 	<p> ${product.personId }
 	<a href="products/product?productId=${product.productId}"><button>상세정보</button></a>   <a href="#"><button>상품주문</button></a>

 </c:forEach>
 
 	<%@ include file="../module/footer.jsp" %>
</body>
</html>