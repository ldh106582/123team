<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>통합관리자 회원가입 페이지</title>
</head>
<body>
    <nav class="navbar navbar-expand navbar-dark bg-dark p-3">
        <div class="container ">
            <div class="navbar-header">
                <a class="navbar-brand" href="./">Home</a>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" href="./hospital">병원</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./product">동물상품</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Fboards">게시판</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./login">로그인</a>
                </li>
            </div>
        </div>
    </nav>

    <div class="jumbotron">
        <div class="container">
            <h4> 관리자를 위한 회원가입 페이지 입니다.</h4>
        </div>
    </div>

    <br><br><br><br><br><br>
    
        <div class="mt-5" >
            <div class="col ">
                <div class="col-12 row m-0 text-center justify-content-center">
                    <a href="/managerlogin/Member?type=h" class="p-4  border border-dark col-5 m-1 bg-info text-white rounded" id="hopital">병원관리자 회원가입</a>
                    <a href="/123team/managerlogin/Member?type=p" class="p-4  border border-dark col-5 m-1 bg-danger text-white rounded" id="product">상품관리자 회원가입</a>
                </div>
                
                <div class="col row m-0 text-center justify-content-center">
                    <a class="p-4  border border-dark col-5 m-1 bg-success text-white rounded" id="exprience">체험단관리자 회원가입</a>
                    <a href="/managerlogin/Member?type=all" class="p-4  border border-dark col-5 m-1 rounded" id="allmember">통합관리자 회원가입</a>
                </div>
            </div>
        </div>
</body>
<!-- js -->
<script src="../resources/js/AllManager.js"></script>
</html>