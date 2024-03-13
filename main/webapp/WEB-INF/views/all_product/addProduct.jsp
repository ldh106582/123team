<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>상품 추가 페이지</title>
</head>
<body>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./resources/js/refreshing.js"></script>

	<div id="header">
		<%@  include file="../module/header.jsp" %>
	</div>

    <div class="container-fluid page-body-wrapper">
 <%@  include file="../module/leftheader.jsp" %>
 
        <div class="content-wrapper d-flex align-items-center auth px-0">
            <div class="row w-100 mx-0">
               <div class="col-lg-6 mx-auto">
                  <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                       <div class="content-wrapper">
                       <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body">
                             <h4 class="card-title">상품등록</h4>
                             <form:form modelAttribute="product" method="POST" enctype="multipart/form-data">
                                <div class="form-group">
                                    <h4 class="col-md-12 p-0" style="color: rgb(140, 58, 179);">상품명 </h4>  
                                    <form:input class="form-control form-control-lg" type="text" path="productName" />
                                </div>
                                <div class="form-group">
                                    <h4 class="col-md-12 p-0" style="color: rgb(140, 58, 179);">카테고리 </h4>   
                                    <form:input class="form-control form-control-lg" type="text" path="productCategory"/>
                                </div>
                                <div class="form-group">
                                  <h4 class="col-md-12 p-0" style="color: rgb(140, 58, 179);">상품가격 </h4>  
                                  <form:input type="text" path="productPrice" class="form-control form-control-lg" />
                                </div>
                                <div class="form-group">
                                    <h4 class="col-md-12 p-0" style="color: rgb(140, 58, 179);">상품설명 </h4>  
                                    <form:input type="text" path="productDescribe" class="form-control form-control-lg" />
                                  </div>
                                <div class="form-group">
                                    <h4 class="col-md-12 p-0" style="color: rgb(140, 58, 179);">상품재고수 </h4>  
                                    <form:input type="text" path="productUnitStock" class="form-control form-control-lg" />
                                </div>
                                <div class="form-group">
                                    <h4 class="col-md-12 p-0" style="color: rgb(140, 58, 179);">이미지 </h4>  
                                    <input type="file" name="s_file" class="form-control form-control-lg" />
                                </div>

                                <div class="mt-3">
                                    <input type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn mt-3" value="상품등록"/>
                                </div>
                             </form:form>
                            </div>
                          </div>
                       </div>
                     </div>
                  </div>
               </div>
            </div>
        </div>
    </div>
 <%@ include file="../module/footer.jsp" %>
<!--  <h1>상품추가 페이지</h1>
 <form:form modelAttribute="product" method="POST" enctype="multipart/form-data">
 	<p>
 	상품명 : <form:input path="productName"/>
 	<p>
 	카테고리 : <form:input path="productCategory"/>
 	<p>
 	상품가격 :<form:input path="productPrice"/>
 	<p>
 	상품설명 : <form:input path="productDescribe"/>
 	<p>
 	<!-- 멀티파츠 추가해야함 -->
 	상품사진 : <form:input path="productImage"/>
 	<p>
 	상품재고수 : <form:input path="productUnitStock"/>
 	<p>
 	이미지 : <input type="file" name="p_image" value="productImage">
 	<p>
 	등록하기 : <input type="submit">
 	
 </form:form>
  -->

</body>
</html>