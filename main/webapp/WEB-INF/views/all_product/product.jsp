<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세정보 페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script>

</script>
</head>
<body>
	<%
		request.setAttribute("type", session.getAttribute("type"));
		request.setAttribute("checktype", "p");
	%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./resources/js/refreshing.js"></script>

<div id="header">
		<%@  include file="../module/header.jsp" %>
	</div>
 
    <div class="container-fluid page-body-wrapper">
 <%@  include file="../module/leftheader.jsp" %>
 
        <div class="content-wrapper">
          <div class="card mx-auto " style="width: 80rem;">
  
            <c:choose>
              <c:when test="${not empty product.productImage}">
                <img class="col-md-6 mt-2" src="<c:url value='/resources/images/${product.productImage}'/> alt="상품이미지">
              </c:when>
              <c:otherwise>
                  <img class="col-md-6 mt-2" src="https://i.ibb.co/VDkQhqH/pexels-mart-production-8434641.jpg" alt="상품이미지" border="0">
              </c:otherwise>
            </c:choose>


                <div class="card-body col-md-12">
                    <h5 class="card-title col-md-12 p-0" style="font-size: 2vw;">${product.productName}</h5>
                    <p class="card-text" style="font-size: 1vw;">${product.productPrice}</p>
                    <p class="card-text" style="font-size: 1vw;">${product.productCategory}</p>
                    <p class="card-text" style="font-size: 1vw;"> ${product.productUnitStock}</p>
                    <p class="card-text" style="font-size: 1vw;"> ${product.productDescribe}</p>

                    <div class="col-md-12 row p-0">
					<form:form modelAttribute="product" action="/123team/products/creatCart" method="post" enctype="Multipart/form-data">
		            <input type="hidden" name="productId"  value="${product.productId}">
		            <input type="hidden" name="productName" value="${product.productName}" >
		            <input type="hidden" name="productPrice" value="${product.productPrice}">
		            <input type="hidden" name="productCategory" value="${product.productCategory}" >
		            <input type="hidden" name="productImage" value="${product.productImage}" >

                     <div class="col-md-6 p-0"> 
                         <input type="submit" class="btn btn-outline-primary m-0" value="장바구니추가"/>
                     </div>
                    </form:form>
                    
                        <c:if test="${loginId == product.personId}">
                            <div class="col-md-6 row p-0 " style="  justify-content: flex-end;">
                                <a href="update?productId=${product.productId}" class="btn btn-outline-info mr-1">상품수정</a>
                                <a href="delete?productId=${product.productId}" class="btn btn-outline-danger ">상품삭제</a>
                            </div>
                        </c:if>

                    </div>

                    <c:if test="${loginId ==  product.personId}">
                        <a class="btn btn-outline-info btn-sm float-right border border-dark mt-3" href="/123team/products/p_review?personId=${product.personId}">리뷰작성</a>
                 	</c:if>
                 	   <div class="col-md-12 row mt-5 p-0" style="justify-content: center;">
                        <c:forEach items="${listOfProductReview}" var="review">
                        <%
                            int i = 0;
                        if(i%2==0){
                        %>
                        <div class="col-md-6 p-0">
                            <div class="review1 card mb-3" style="max-width: 540px;">
                                <div class="row no-gutters form-group">
                                    <div class="col-md-4">
                                        <c:choose>
                                            <c:when test="${not empty review.reviewImage}">
                                              <img class="col-md-12  rounded-lg" src="<c:url value='/resources/images/${review.reviewImage}'/>" height="120"  alt="리뷰이미지">
                                            </c:when>
                                            <c:otherwise>
                                              <img class="col-md-12  rounded-lg" src="https://i.ibb.co/wyMqmJp/pexels-980859.jpg" alt="pexels-980859" border="0" alt="리뷰이미지" height="160" border="0">
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body ">
                                            <h5 class="card-title">${review.title}</h5>
                                            <p class="card-text">${review.context}</p>
                                            <p class="card-text text-muted"> ${review.reviewScore}</p>
                                        </div>
                                        <div class="col-md-12 px-0">
                                            <c:if test="${loginId ==  review.personId}">
                                                <a class="btn btn-outline-info btn-sm mr-1" href="u_review?personId=${review.personId}&reviewId=${review.reviewId}">리뷰수정</a> 
                                                <a class="btn btn-outline-info btn-sm mr-1" href="d_review?reviewId=${review.reviewId}">리뷰삭제</a>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                        }else {
                        %>
                        <div class="col-md-6 p-0">
                            <div class="review1 card mb-3" style="max-width: 540px;">
                                <div class="row no-gutters form-group">
                                    <div class="col-md-4">
                                        <c:choose>
                                            <c:when test="${not empty review.reviewImage}">
                                              <img class="col-md-12  rounded-lg" src="<c:url value='/resources/images/${review.reviewImage}'/>" height="120"  alt="리뷰이미지">
                                            </c:when>
                                            <c:otherwise>
                                              <img class="col-md-12  rounded-lg" src="https://i.ibb.co/wyMqmJp/pexels-980859.jpg" alt="pexels-980859" border="0" alt="리뷰이미지" height="160" border="0">
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body ">
                                            <h5 class="card-title">${review.title}</h5>
                                            <p class="card-text">${review.context}</p>
                                            <p class="card-text text-muted"> ${review.reviewScore}</p>
                                        </div>
                                        <div class="col-md-12 px-0">
                                            <c:if test="${loginId ==  review.personId}">
                                                <a class="btn btn-outline-info btn-sm mr-1" href="u_review?personId=${review.personId}&reviewId=${review.reviewId}">리뷰수정</a> 
                                                <a class="btn btn-outline-info btn-sm mr-1" href="d_review?reviewId=${review.reviewId}">리뷰삭제</a>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                        i++;
                        }
                        %>
                    </c:forEach>

                        <div class="col-md-12 text-center">
                            <a href="">1</a>
                        </div>
        
                        <table class="col-md-12 text-center border p-0">
                            <thead>
                                <td class="col-md-12 row">
                                    <th class="border col-md-2">번호</th>
                                    <th class="border col-md-6">제목</th>
                                    <th class="border col-md-2">작성자</th>
                                    <th class="border col-md-2">작성일</th>
                                </td>
                            </thead>
                            <tbody>
                                <td>
                                    <td class="border col-md-2">1</td>
                                    <td class="border col-md-6">이게 궁금합니다.</td>
                                    <td class="border col-md-2">이도현</td>
                                    <td class="border col-md-2">2024-03-10</td>
                                </td>
                            </tbody>
                        </table>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>



	<%@ include file="../module/footer.jsp" %>



 	<!--    <form:form modelAttribute="product" action="/123team/products/creatCart" method="post" enctype="Multipart/form-data">
 	   <input type="hidden" name="productId"  value="${product.productId}">
	   <input type="hidden" name="productName" value="${product.productName}" >
	   <input type="hidden" name="productPrice" value="${product.productPrice}">
	   <input type="hidden" name="productCategory" value="${product.productCategory}" >
	   <input type="hidden" name="productImage" value="${product.productImage}" >
	
			 <c:choose>
                 <c:when test="${product.productImage == null} ">
                     <div class="myphoto">
                         <img src="https://ibb.co/kmbdwzQ" width="56" height="56" alt="내 프로필 이미지">
                     </div>
                    </c:when>
                   <c:otherwise>
                     <div class="myphoto">
                         <img src="<c:url value="/resources/images/ ${product.productImage}"/>" height="56" alt="상품 이미지">
                     </div>
                   </c:otherwise>
             </c:choose>
		 	<p>
			상품ID : ${product.productId}
			<p>
			상품명 : ${product.productName}
			<p>
			카테고리 : ${product.productCategory}
			<p>
			가격 : ${product.productPrice}
			<p>
			등록일 : ${product.releaseDate}
			<p>
			상품설명 : ${product.productDescribe}

			<p>
			재고수 : ${product.productUnitStock}
			<p>
			<c:if test="${loginId != null && type != checktype}">
				<input type="submit" value="장바구니추가"/>
			</c:if>
  	   </form:form>
  	<c:if test="${loginId == product.personId}">
	<a href="update?productId=${product.productId}"><button>상품수정</button></a>  <a href="delete?productId=${product.productId}"><button>상품삭제</button></a>
	</c:if>
	<c:if test="${loginId != null && type != checktype}">
	<a class="btn btn-success" href="/123team/products/readcart">내 장바구니</a>
	<a class="btn btn-success" aria-labelledby="exampleModalLabel" href="/123team/products/p_review?personId=${product.personId}">리뷰쓰기</a>
	</c:if>
	 -->

</body>
</html>