<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<nav class="navbar navbar-expand navbar-dark bg-dark">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/123team">Home</a>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link " href="/123team/hospital">병원</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/product">동물상품</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/Fboards">게시판</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/login">로그인</a>
                </li>
            </div>
        </div>
    </nav>
    <div class="jumbotron">
        <div class="container">
            <legend><h2>소중한 반려동물 회원가입 페이지 입니다.</h2></legend>
        </div>
    </div>

    <div class="container">
		<form action="/percreate" method="POST">

			<div class="form-group row"> 반려동물 아이디 :
                <div class="col-4">
				    <input class="control-label" type="text" name="petId" placeholder="반려동물 아이디"/>
                </div>
            </div>
			<div class="form-group row"> 반려동물이름 : 
                <div class="col-4">
                    <input type="text" name="petName" placeholder="반려동물 이름"/>
                </div>
            </div>

            <div class="form-group row"> 반려동물 종류 :
                <div class="col-4">
                    <select id="pet">
                        <option name="dog" value="dog" />강아지
                        <option name="cat" value="cat" />고양이
                        <option name="birth" value="bird" />새
                        <option name="rabbit" value="rabbit" />토끼
                        <option name="guineapig" value="guineapig" />기니피그
                        <option name="reptile" value="reptile"/>파충류
                    </select>
                </div>
            </div>

            <div class="form-group row">반려동물 종족 :
                <div class="col-4">
                    <!-- 강아지 종류 -->
                    <select name="petType" id="dog">  
                        <option value="Retriever" />리트리버
                        <option value="Poodle" />푸들
                        <option value="Beagle" />비글
                        <option value="Bulldog" />불독
                        <option value="Mix" />믹스견
                        <option value="ShihTzu" />시츄
                        <option value="Pomeranian" />포메라니안
                        <option value="Koreadog" />진돗개
                        <option value="Shiba" />시바
                        <option value="Etc" />기타
                    </select>
                
                    <!-- 고양이 종류-->
                    <select name="petType" id="cat">
                        <option value="Persian" />페르시안 
                        <option value="Siamese" />시암 
                        <option value="Maine" />메인쿤
                        <option value="RussianBlue" />러시안블루
                        <option value="Ragdoll" />래그돌
                        <option value="Scottish" />스코티시
                        <option value="Abyssinian" />아비시니안
                        <option value="Chantilly" />샴
                        <option value="Bengal" />벵갈
                        <option value="Etc" />기타
                    </select>
    
                    <!-- 새 종류 -->
                    <select name="petType" id="bird">
                        <option value="Canary" />캔터베리
                        <option value="Parake" />잉꼬
                        <option value="Budgerigar" />버드나무새
                        <option value="Peachfaced" />피치페이스
                        <option value="Cockat" />칵투스
                        <option value="BlueJay" />파랑새
                        <option value="AfricanGrey" />아프리칸그레이
                        <option value="Cockatiel" />콕카틸
                        <option value="SunConure" />선앵무
                        <option value="Etc" />기타
                    </select>
        
                    <!-- 토끼 -->
                    <select name="petType" id="rabbit">
                        <option value="NetherlandDwarf" />네덜란드드와프
                        <option value="Lionhead" />라이언헤드
                        <option value="MiniRex" />미니렉스
                        <option value="Lop" />미니로프
                        <option value="BelgianHare" />벨지안헤어
                        <option value="FlemishGiant" />플레미쉬자이언트
                        <option value="Angora" />앵고라토끼
                        <option value="CashmereLop" />캐시미어로프
                        <option value="Chinchilla" />체틀랜드
                        <option value="Etc" />기타
                    </select>
                    <!-- 기니피그 -->
                    <select name="petType" id="guineapig">
                        <option value="AmericanGuineaPig" />아메리칸
                        <option value="AbyssinianGuineaPig" />아비시니안
                        <option value="PeruvianGuineaPig" />페루비안                
                        <option value="SilkieGuineaPig" />실키
                        <option value="TexelGuineaPig" />텍셀
                        <option value="CoronetGuineaPig" />코로넷
                        <option value="AlpacaGuineaPig" />알파카
                        <option value="SheltieGuineaPig" />셸티
                        <option value="BaldwinGuineaPig" />발드윈
                        <option value="Etc" />기타
                    </select>
                    <!--파충류-->
                    <select name="petType" id="reptile">
                        <option value="Lizards" />도마뱀
                        <option value="Spiders" />거미
                        <option value="Snakes" />뱀
                        <option value="Turtles" />거북이
                        <option value="Etc" />기타
                    </select>
                </div>
			</div>
			
            <div class="form-group row"> 반려동물성별 :
                <div class="col-4">
				    <input class="col-3" type="radio" name="petSex" value="남자"/>남자
                    <input class="col-3" type="radio" name="petSex" value="여자"/>여자
                </div>
            </div>

			<div class="form-group row"> 반려동물생일 :
                <div class="col-4">
				    <input type="date"  path="petBirth"/>
                </div>
            </div>

			<div class="form-group row">
				<div >
					<input type="submit" class="btn btn-primary"/>
				</div>
			</div>
		</form>
    </div>

</body>
<script type="text/javascript">

window.onload = function() {
    document.getElementById('cat').style.display = "none";
    document.getElementById('bird').style.display = "none";
    document.getElementById('rabbit').style.display = "none";
    document.getElementById('guineapig').style.display = "none";
    document.getElementById('reptile').style.display = "none";
}

document.getElementById('pet').addEventListener('change', function(){
    document.getElementById('dog').style.display = "none";
    document.getElementById('cat').style.display = "none";
    document.getElementById('bird').style.display = "none";
    document.getElementById('rabbit').style.display = "none";
    document.getElementById('guineapig').style.display = "none";
    document.getElementById('reptile').style.display = "none";

if (this.value == "dog") {
    document.getElementById('dog').style.display = "block";
} else if(this.value == "cat"){
    document.getElementById('cat').style.display = "block";
} else if(this.value == "bird") {
    document.getElementById('bird').style.display = "block";
} else if (this.value == "rabbit"){
    document.getElementById('rabbit').style.display = "block";
} else if(this.value == "guineapig"){
    document.getElementById('guineapig').style.display = "block";
} else if(this.value == "reptile") {
    document.getElementById('reptile').style.display = "block";
}
});

document.getElementById('pet').addEventListener('change', function () {
    ['dog', 'cat', 'bird', 'rabbit', 'guineapig', 'reptile'].forEach(function(id) {
        document.getElementById(id).style.display = 'none';
    });
    document.getElementById(this.value).style.display = 'block';
});
</script>
</html>