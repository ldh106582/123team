<%@ page import="com.springmvc.domain.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>소비자 회원가입</title>
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
     
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
            <div class="col-lg-6 mx-auto">
                <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                    <div class="brand-logo">
                        <img src="resources/images/logo.jpg" alt="logo">
                    </div>
                    <form:form modelAttribute="Newmember" action="./add?${ _csrf.parameterName }=${ _csrf.token }" method="post">
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="personId"  placeholder="아이디" />
                        </div>
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="password" path="personPw"  placeholder="비밀번호"/>
                        </div>
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="email" path="personEmail"  placeholder="이메일"/>
                        </div>
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="personName"  placeholder="이름"/>
                        </div>
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="personBirth"  placeholder="생년월일"/>
                        </div>
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="personAddress" placeholder="주소"/>
                        </div>
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="personPhone" placeholder="전화번호"/>
                        </div>
                        <div class="form-group">
                            <form:radiobutton path="personSex" value="남자" class="col-sm-1"/>남성
				            <form:radiobutton path="personSex" value="여자" class="col-sm-1"/>여성
                        </div>
                        <div class="mt-3">
                            <input type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" value="로그인" id="login"/>
                        </div>
                        <div class="text-center mt-4 font-weight-light">
                            <a href="./login/Allmember" class="text-primary">회원가입</a>
                    </form:form>
                </div>
            </div>
        </div>
   	 </div>
          
        
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>   
    <!-- page-body-wrapper ends -->
  </div>

    <%@ include file="../module/footer.jsp" %>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
var IdCheck = false;

function idDuplicateCheck(event) {
    event.preventDefault(); // 폼의 기본 동작 방지

    var userId = document.getElementById("userId").value;

    if (userId === "") {
        alert("아이디를 입력해주세요.")
        return;
    }

    $.ajax({
        type: 'get',
        url: '/123team/login/join/memberid',
        contentType: 'application/json',
        dataType: 'text',
        data: {
            "userId": userId

        },
        success: function (result) {
            if (result == "true") {
                isIdCheck = true; 
                alert("사용 가능한 아이디 입니다.")
            } else {
                isIdCheck = false;
                alert("이미 사용중인 아이디입니다.")
            }
        },
        error: function (request, status, error) {
            console.log(request);
        }
    });
}

</script>
</html>