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
		<%
		request.setAttribute("type", session.getAttribute("type"));
		request.setAttribute("checktype", "p");
	%>
	
 <%@  include file="../module/header.jsp" %>
 
      <!-- partial -->
    <div class="container-fluid page-body-wrapper">
    
      	<%@  include file="../module/leftheader.jsp" %>
      
 	<c:if test="${type == checktype }">
		<a href="products/add">상품추가</a>
	</c:if>
    <div class="contianer">
        <div class="show-gird no-gutters">
            <div class="col-md-12 border border-dark no-gutters">
                <div class="col-md-10 row no-gutters" style="margin: 0 auto;">
                    <div class="col-md-7 border border-dark ">
                        <div style="border-left: 3px solid red; margin-left: 3%;"> <h4 style="margin-left: 2%;"> 123 상점 상품 보기 </h4>
                        </div>
                        <br>
                        
                        <h5 style="border-left: 3px solid #FF7EA0; margin-left: 3%; margin-bottom: 3%;">강아지 상품</h5>
                        
                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>

                        <h5 style="border-left: 3px solid #FFA07A; margin: 3%;">고양이 상품</h5>

                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>

                        <h5 style="border-left: 3px solid #FFCD63; margin: 3%;">토끼 상품</h5>

                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>

                        <h5 style="border-left: 3px solid #D5CABD; margin: 3%;">기니피그 상품</h5>

                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>

                        <h5 style="border-left: 3px solid #65BAA9; margin: 3%;">파충류 상품</h5>

                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>

                        <h5 style="border-left: 3px solid #1E0764; margin: 3%;">기타 반려동물 상품</h5>

                        <div class="col-md-12 no-gutters row card-group">
                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>

                            <div class="col-md-4 row no-gutters card">
                                <img class="card-img-top">상품이미지 들어가는 공간
                                <div class="col-md-12 card-body">
                                    <p class="card-title">상품명 : </p>
                                    <p class="card-text"> 가격 : </p>
                                    <p class="card-text">상품설명 : </p>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</div>
 
 	<%@ include file="../module/footer.jsp" %>
</body>
</html>