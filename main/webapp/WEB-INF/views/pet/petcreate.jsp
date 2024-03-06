<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!-- js -->
<%-- <link href="<c:url value="/resources/js/petcreate.js"/>" rel="stylesheet"> --%>
<meta charset="UTF-8">
<title>반려동물 회원가입</title>
</head>
<body>
 <%@  include file="../module/header.jsp" %>
     <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="/123team/hospitals">
              <i class="fa-solid fa-hospital"></i>
              <span class="menu-title ml-3">반려동물 병원</span>
               <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/products" aria-expanded="false" aria-controls="ui-basic">
              <i class="fa-solid fa-gift"></i>
              <span class="menu-title ml-3">반려동물 상품</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
              <i class="fa-solid fa-cart-shopping"></i>
              <span class="menu-title ml-3">장바구니</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/ENboards" aria-expanded="false" aria-controls="charts">
              <i class="fa-solid fa-dog"></i>
              <span class="menu-title ml-3">체험단</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/Fboards" aria-expanded="false" aria-controls="tables">
              <i class="fa-solid fa-clipboard-question"></i>
              <span class="menu-title ml-3">자유게시판</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="fa-solid fa-user"></i>
              <span class="menu-title  ml-3">My Pages</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="/123team/Nboards" aria-expanded="false" aria-controls="error">
              <i class="fa-solid fa-clipboard"></i>
              <span class="menu-title ml-3">공지사항</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/123team/login">
              <i class="fa-solid fa-key"></i>
              <span class="menu-title ml-3">로그인</span>
              <i class="menu-arrow"></i>
            
              <i class="fa-solid fa-right-from-bracket"></i>
              <span class="menu-title ml-3">로그아웃</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
        </ul>
      </nav>
     
         <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                  <h3 class="font-weight-bold"> </h3>
                  <h6 class="font-weight-normal mb-0"></h6>
                </div>
                <div class="col-12 col-xl-4">
                 <div class="justify-content-end d-flex">
                  <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                  </div>
                 </div>
                </div>
              </div>
            </div>
          </div>
          
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021.  Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
          </div>
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Distributed by <a href="https://www.themewagon.com/" target="_blank">Themewagon</a></span> 
          </div>
        </footer> 
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>   
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
 	
    <div class="jumbotron">
        <div class="container">
            <legend><h2>소중한 반려동물 회원가입 페이지 입니다.</h2></legend>
        </div>
    </div>

    <div class="container">
		<form:form modelAttribute="pet_create" action="./creatpet?id=${id.personId}" method="POST" enctype="multipart/form-data">
		<form:hidden path="personId" value="${id}"/>
		<form:hidden path="personId" value="petImage"/>

			<div class="form-group row"> 반려동물 아이디 :
                <div class="col-4">
				    <form:input class="control-label" type="text" path="petId"/>
                </div>
            </div>
			<div class="form-group row"> 반려동물이름 : 
                <div class="col-4">
                    <form:input type="text" path="petName" />
                </div>
            </div>

			<div class="form-group row"> 반려동물 종류 :
                <div class="col-4">
                    <form:select id="petVarity" path="petType">
                        <form:option id="dog" value="dog">강아지</form:option>
                        <form:option id="cat" value="cat">고양이</form:option>
                        <form:option id="bird" value="bird">새</form:option>
                        <form:option id="rabbit" value="rabbit">토끼</form:option>
                        <form:option id="guineapig" value="guineapig">기니피그</form:option>
                        <form:option id="reptile" value="reptile">파충류</form:option>
                        <form:option id="Etc" value="reptile">기타</form:option>
                    </form:select>
                </div>
            </div>

            <div class="form-group row"> 반려동물 종 :
                <div class="col-4">
                	<form:input type="text" path="petVarity" />
                </div>
			</div>
			
            <div class="form-group row"> 반려동물성별 :
                <div class="col-4">
				    <form:radiobutton class="col-3" path="petSex" value="남자"/>남자
                    <form:radiobutton class="col-3" path="petSex" value="여자"/>여자
                </div>
            </div>

			<div class="form-group row"> 반려동물생일 :
                <div class="col-4">
				    <form:input type="date" path="petBirth"/>
                </div>
            </div>
            <div class="form-group row"> [선택] 반려동물이미지 : 
            	<div class="col-4">
            		<input type="file" name="pet_Image"/>
            	</div>
            </div>

			<div class="form-group row">
				<div >
					<input type="submit" class="btn btn-primary" onclick="getform:form:selectedValue()"/>
				</div>
			</div>
		</form:form>
    </div>

	<%@ include file="../module/footer.jsp" %>
</body>
<script type="text/javascript">
window.onload = function(){
    document.getElementById('dogtype').style.display = "none";
    document.getElementById('cattype').style.display = "none";
    document.getElementById('birdtype').style.display = "none";
    document.getElementById('rabbittype').style.display = "none";
    document.getElementById('guineapigtype').style.display = "none";
    document.getElementById('reptiletype').style.display = "none";
};

document.getElementById('petVarity').addEventListener("click", function(){
    var petVarity = this.value;

        if(petVarity == 'dog')
        {
            document.getElementById('dogtype').style.display = "block";
            document.getElementById('cattype').style.display = "none";
            document.getElementById('birdtype').style.display = "none";
            document.getElementById('rabbittype').style.display = "none";
            document.getElementById('guineapigtype').style.display = "none";
            document.getElementById('reptiletype').style.display = "none";
        }
        else if(petVarity == 'cat')
        {
            document.getElementById('dogtype').style.display = "none";
            document.getElementById('cattype').style.display = "block";
            document.getElementById('birdtype').style.display = "none";
            document.getElementById('rabbittype').style.display = "none";
            document.getElementById('guineapigtype').style.display = "none";
            document.getElementById('reptiletype').style.display = "none";
        }
        else if(petVarity == 'bird')
        {
            document.getElementById('dogtype').style.display = "none";
            document.getElementById('cattype').style.display = "none";
            document.getElementById('birdtype').style.display = "block";
            document.getElementById('rabbittype').style.display = "none";
            document.getElementById('guineapigtype').style.display = "none";
            document.getElementById('reptiletype').style.display = "none";
        }
        else if(petVarity == 'rabbit')
        {
            document.getElementById('dogtype').style.display = "none";
            document.getElementById('cattype').style.display = "none";
            document.getElementById('birdtype').style.display = "none";
            document.getElementById('rabbittype').style.display = "block";
            document.getElementById('guineapigtype').style.display = "none";
            document.getElementById('reptiletype').style.display = "none";
        }
        else if(petVarity == 'guineapig')
        {
            document.getElementById('dogtype').style.display = "none";
            document.getElementById('cattype').style.display = "none";
            document.getElementById('birdtype').style.display = "none";
            document.getElementById('rabbittype').style.display = "none";
            document.getElementById('guineapigtype').style.display = "block";
            document.getElementById('reptiletype').style.display = "none";
        }
        else if(petVarity == 'reptile')
        {
            document.getElementById('dogtype').style.display = "none";
            document.getElementById('cattype').style.display = "none";
            document.getElementById('birdtype').style.display = "none";
            document.getElementById('rabbittype').style.display = "none";
            document.getElementById('guineapigtype').style.display = "none";
            document.getElementById('reptiletype').style.display = "block";
        }
});
<<<<<<< HEAD

=======
>>>>>>> 8188671a50ff3db0dd77b7763abf02de62fb015a
</script>
</html>