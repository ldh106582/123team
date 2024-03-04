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
 	<%@  include file="../module/headerdanger.jsp" %>
 
 	   <form:form modelAttribute="product" action="/123team/products/creatCart" method="post" enctype="Multipart/form-data">
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
	<%@ include file="../module/footer.jsp" %>
</body>
</html>