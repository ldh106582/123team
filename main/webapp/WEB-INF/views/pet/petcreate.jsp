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
	<%@  include file="../module/headerdark.jsp" %>
	
    <div class="jumbotron">
        <div class="container">
            <legend><h2>소중한 반려동물 회원가입 페이지 입니다.</h2></legend>
        </div>
    </div>

    <div class="container">
		<form action="./pet/creatpet?personId=${personId}" method="POST">
		<input type="hidden" name="personId" />
		<input type="hidden" name="petName" />
		<input type="hidden" name="petType" />
		<input type="hidden" name="petVarity1" />

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
                    <select id="petVarity" name="petVarity">
                        <option value="dog">강아지</option>
                        <option value="cat">고양이</option>
                        <option value="bird" >새</option>
                        <option value="rabbit" >토끼</option>
                        <option value="guineapig" >기니피그</option>
                        <option value="reptile">파충류</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">반려동물 종족 :
                <div class="col-4">
                    <!-- 강아지 종류 -->
                    <select name="dogType" id="dog">  
                        <option value="Retriever">리트리버</option>
                        <option value="Poodle">푸들</option>
                        <option value="Beagle">비글</option>
                        <option value="Bulldog">불독</option>
                        <option value="Mix">믹스견</option>
                        <option value="ShihTzu">시츄</option>
                        <option value="Pomeranian">포메라니안</option>
                        <option value="Koreadog">진돗개</option>
                        <option value="Shiba">시바</option>
                        <option value="Etc">기타</option>
                    </select>
                
                    <!-- 고양이 종류-->
                    <select name="catType" id="cat">
                        <option value="Persian">페르시안</option>
                        <option value="Siamese">시암 </option>
                        <option value="Maine">메인쿤</option>
                        <option value="RussianBlue">러시안블루</option>
                        <option value="Ragdoll">래그돌</option>
                        <option value="Scottish">스코티시</option>
                        <option value="Abyssinian">아비시니안</option>
                        <option value="Chantilly">샴</option>
                        <option value="Bengal">벵갈</option>
                        <option value="Etc">기타</option>
                    </select>
    
                    <!-- 새 종류 -->
                    <select name="birdType" id="bird">
                        <option value="Canary">캔터베리</option>
                        <option value="Parake">잉꼬</option>
                        <option value="Budgerigar">버드나무새</option>
                        <option value="Peachfaced">피치페이스</option>
                        <option value="Cockat">칵투스</option>
                        <option value="BlueJay">파랑새</option>
                        <option value="AfricanGrey">아프리칸그레이</option>
                        <option value="Cockatiel">콕카틸</option>
                        <option value="SunConure" >선앵무</option>
                        <option value="Etc">기타</option>
                    </select>
        
                    <!-- 토끼 -->
                    <select name="rabbitType" id="rabbit">
                        <option value="NetherlandDwarf">네덜란드드와프</option>
                        <option value="Lionhead">라이언헤드</option>
                        <option value="MiniRex">미니렉스</option>
                        <option value="Lop">미니로프</option>
                        <option value="BelgianHare">벨지안헤어</option>
                        <option value="FlemishGiant">플레미쉬자이언트</option>
                        <option value="Angora">앵고라토끼</option>
                        <option value="CashmereLop">캐시미어로프</option>
                        <option value="Chinchilla" >체틀랜드</option>
                        <option value="Etc">기타</option>
                    </select>
                    <!-- 기니피그 -->
                    <select name="guineapigType" id="guineapig">
                        <option value="AmericanGuineaPig">아메리칸</option>
                        <option value="AbyssinianGuineaPig">아비시니안</option>
                        <option value="PeruvianGuineaPig">페루비안 </option>    
                        <option value="SilkieGuineaPig">실키</option>
                        <option value="TexelGuineaPig">텍셀</option>
                        <option value="CoronetGuineaPig">코로넷</option>
                        <option value="AlpacaGuineaPig">알파카</option>
                        <option value="SheltieGuineaPig">셸티</option>
                        <option value="BaldwinGuineaPig">발드윈</option>
                        <option value="Etc">기타</option>
                    </select>
                    <!--파충류-->
                    <select name="reptileType" id="reptile">
                        <option value="Lizards" >도마뱀</option>
                        <option value="Spiders" >거미</option>
                        <option value="Snakes" >뱀</option>
                        <option value="Turtles" >거북이</option>
                        <option value="Etc">기타</option>
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
				    <input type="date" name="petBirth"/>
                </div>
            </div>

			<div class="form-group row">
				<div >
					<input type="submit" class="btn btn-primary"  onclick="getSelectedValue()"/>
				</div>
			</div>
		</form>
    </div>

	<%@ include file="../module/footer.jsp" %>
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