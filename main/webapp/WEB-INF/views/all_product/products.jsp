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
	<%@  include file="../module/headerdanger.jsp" %>
	<c:if test="${type == checktype }">
		<a href="products/add">상품추가</a>
	</c:if>
    <div class="show-gird no-gutters">
        <img src="https://cdn.pet-friends.co.kr/resources/pc/img/background.png" alt="" style="position: absolute; width: 160;">
        <div class="row no-gutters">
            <div class="col-md-2 border border-dark">
            </div>
            <div class="col-md-5 border border-dark no-gutters">
                <div class="row mt-5 no-gutters">
                    <h4 class="col-md-12 border border-dark">123상점</h4>
                    <div class="col-md-12 border border-dark no-gutters">
                        <h3 class="mt-3 border border-dark">반려동물 웹 쇼핑 1위
                            123프렌즈 샵
                        </h3>
                        <div class="mt-4 col-md-7 row">
                            <img src="https://cdn.pet-friends.co.kr/resources/pc/img/button-search%402x.png" class="img1 col-md-12" style="width: 130%; height: 150%; position: absolute
                            ; ">
                            <form class="col-md-8 row" >
                                <input style="left: 20.1%; top: 23%; border: 1px solid white;" class="col-12  row" type="text" placeholder="찾는 물건을 검색해보세요"></input>
                            </form>
                        </div>
                        <div>
                            <br>
                            <h5 class="col-12 no-gutters">전체 상품</h5>
                        </div>
                        <!-- 여기서 복붙 시작-->
                        <div class="col-12 row m-1 no-gutters card-group">
                            <div class="col-md-3 no-gutters card rounded m-1" >
                               <c:forEach items="${productList}" var="product">
                                  <c:choose>
							         <c:when test="${product.productImage == null} ">
							             <div class="myphoto">
							                 <a href="https://ibb.co/kmbdwzQ"><img src="https://i.ibb.co/kmbdwzQ/image.jpg" alt="image" border="0"></a>
							             </div>
							            </c:when>
							           <c:otherwise>
							             <div class="myphoto">
							                 <img src="<c:url value="/resources/images/ ${product.productImage}"/>" height="56" alt="상품 이미지">
							             </div>
							           </c:otherwise>
							       </c:choose>
							       
	                                <div class="col-md-12 no-gutters">
	                                    <h6 class="col-md-12 ">상품 : ${product.productName}</h6>
	                                    <h6 class="col-md-12 ">상품  카테고리 : ${product.productCategory}</h6>
	                                    <h6 class="col-md-12 ">동물  카테고리 : ${product.animalCategory}</h6>
	                                    <h6 class="col-md-12 ">가격 : ${product.productPrice}</h6>
	                                </div>
                                
								<a href="products/product?productId=${product.productId}"><button>상세정보</button></a>  <c:if test="${loginId != null && type != checktype}"><a href="#"><button>상품주문</button></a></c:if> 
								</c:forEach>
                            </div>
                        </div>
                        <!--복붙끝-->
                    </div>
                </div>
            </div>

            <div class="col-md-3  no-gutters" style="background-color: white;">
                <div class="row mt-2 no-gutters ml-2">
                    <h3 class="col-md-12 ml-1">
                    강아지상품
                    <p style="font-size: medium;">버튼을 누르면 원하시는 상품을 보실 수 있습니다.</p>
                    </h3> 
                    
                    <p style="height: 50%;" class="dog col-3 border rounded-pill mr-1 ml-2"># 사료</p>
                    <p style="height: 50%;" class="dog col-3 border rounded-pill mr-1 ml-2"># 간식</p>
                    <p style="height: 50%;" class="dog col-3 border rounded-pill mr-1 ml-2"># 산책</p>
                    <p style="height: 50%;" class="dog col-3 border rounded-pill mr-1 ml-2"># 배변</p>
                    <br><br>
                    <p style="height: 50%;" class="dog col-3 border rounded-pill mr-1 ml-2"># 미용</p>
                    <p style="height: 50%;" class="dog col-3 border rounded-pill mr-1 ml-2"># 옷</p>
                    <p style="height: 50%;" class="dog col-3 border rounded-pill mr-1 ml-2"># 집</p>
                    <p style="height: 50%;" class="dog col-3 border rounded-pill mr-1 ml-2"># 기타</p>
                </div>
                <hr>
                <div class="row mt-2 no-gutters ml-2">
                    <h3 class=" col-md-12 ml-1">
                        고양이상품
                    <p style="font-size: medium;">버튼을 누르면 원하시는 상품을 보실 수 있습니다.</p>
                    </h3>

                    <p style="height: 50%;" class="cat col-2 border rounded-pill mr-1 ml-2"># 사료</p>
                    <p style="height: 50%;" class="cat col-2 border rounded-pill mr-1 ml-2"># 간식</p>
                    <p style="height: 50%;" class="cat col-2 border rounded-pill mr-1 ml-2"># 톳밥</p>
                    <p style="height: 50%;" class="cat col-2 border rounded-pill mr-1 ml-2"># 장난감</p>
                    <br><br>
                    <p style="height: 50%;" class="cat col-2 border rounded-pill mr-1 ml-2"># 미용</p>
                    <p style="height: 50%;" class="cat col-2 border rounded-pill mr-1 ml-2"># 옷</p>
                    <p style="height: 50%;" class="cat col-2 border rounded-pill mr-1 ml-2"># 집</p>
                    <p style="height: 50%;" class="cat col-2 border rounded-pill mr-1 ml-2"># 기타</p>
                </div>
                <hr>
                <div class="row mt-2 no-gutters ml-2">
                    <h3 class="col-md-12 ml-1">
                        기니피그 상품
                        <p style="font-size: medium;">버튼을 누르면 원하시는 상품을 보실 수 있습니다.</p>
                    </h3>
                    <p style="height: 50%;"class="gini col-2 border rounded-pill mr-1 ml-2"># 사료</p>
                    <p style="height: 50%;"class="gini col-2 border rounded-pill mr-1 ml-2"># 간식</p>
                    <p style="height: 50%;"class="gini col-2 border rounded-pill mr-1 ml-2"># 산책</p>
                    <p style="height: 50%;"class="gini col-2 border rounded-pill mr-1 ml-2"># 배변</p>
                    <br><br>
                    <p style="height: 50%;"class="gini col-2 border rounded-pill mr-1 ml-2"># 미용</p>
                    <p style="height: 50%;"class="gini col-2 border rounded-pill mr-1 ml-2"># 장난감</p>
                    <p style="height: 50%;"class="gini col-2 border rounded-pill mr-1 ml-2"># 집</p>
                    <p style="height: 50%;"class="gini col-2 border rounded-pill mr-1 ml-2"># 기타</p>
                </div>
                <hr>
                <div class="row mt-2 no-gutters ml-2">
                    <h3 class="col-md-12 ml-1">
                        토끼상품
                        <p style="font-size: medium;">버튼을 누르면 원하시는 상품을 보실 수 있습니다.</p>
                    </h3>
                    <p style="height: 50%;"class="rabbit col-2 border rounded-pill mr-1 ml-2"># 사료</p>
                    <p style="height: 50%;"class="rabbit col-2 border rounded-pill mr-1 ml-2"># 간식</p>
                    <p style="height: 50%;"class="rabbit col-2 border rounded-pill mr-1 ml-2"># 산책</p>
                    <p style="height: 50%;"class="rabbit col-2 border rounded-pill mr-1 ml-2"># 배변</p>
                    <br><br>
                    <p style="height: 50%;"class="rabbit col-2 border rounded-pill mr-1 ml-2"># 미용</p>
                    <p style="height: 50%;"class="rabbit col-2 border rounded-pill mr-1 ml-2"># 장난감</p>
                    <p style="height: 50%;"class="rabbit col-2 border rounded-pill mr-1 ml-2"># 집</p>
                    <p style="height: 50%;"class="rabbit col-2 border rounded-pill mr-1 ml-2"># 기타</p>
                </div>
                <hr>
                <div class="row mt-2 no-gutters no-gutters">
                    <h3 class=" col-md-12 ml-1">
                        파충류 상품
                        <p style="font-size: medium;">버튼을 누르면 원하시는 상품을 보실 수 있습니다.</p>
                    </h3>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2"># 사료</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2"># 간식</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2"># 집게</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2"># 배변</p>
                    <br><br>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2"># 영양제</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2"># 물통</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2"># 집</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2"># 기타</p>
                </div>
                <hr>
                <div class="row mt-2 no-gutters no-gutters">
                    <h3 class=" col-md-12 ml-1">
                        기타상품
                        <p style="font-size: medium;">버튼을 누르면 원하시는 상품을 보실 수 있습니다.</p>
                    </h3>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2">사료</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2">간식</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2">산책</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2">배변</p>
                    <br><br>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2">미용</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2">옷</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2">집</p>
                    <p style="height: 50%;"class="col-2 border rounded-pill mr-1 ml-2">기타</p>
                </div>
                
            </div>
            <div class="col-md-2 border border-dark"></div>
        </div>
    </div>
 
 	<%@ include file="../module/footer.jsp" %>
</body>
</html>