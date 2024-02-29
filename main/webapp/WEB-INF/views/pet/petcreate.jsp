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
	<%@  include file="../module/headerdark.jsp" %>
	
    <div class="jumbotron">
        <div class="container">
            <legend><h2>소중한 반려동물 회원가입 페이지 입니다.</h2></legend>
        </div>
    </div>

    <div class="container">
		<form:form modelAttribute="pet_create" action="./pet/creatpet?personId=${personId}" method="POST">
		<input type="hidden" name="personId1" />
		<input type="hidden" name="petName1" />
		<input type="hidden" name="petType1" />
		<input type="hidden" name="petVarity1" />

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
                    <form:select id="petVarity" path="petVarity">
                        <form:option value="dog">강아지</form:option>
                        <form:option value="cat">고양이</form:option>
                        <form:option value="bird" >새</form:option>
                        <form:option value="rabbit" >토끼</form:option>
                        <form:option value="guineapig" >기니피그</form:option>
                        <form:option value="reptile">파충류</form:option>
                    </form:select>
                </div>
            </div>

            <div class="form-group row">반려동물 종족 :
                <div class="col-4">
                    <!-- 강아지 종류 -->
                    <form:select path="petType" id="dog">  
                        <form:option value="Retriever">리트리버</form:option>
                        <form:option value="Poodle">푸들</form:option>
                        <form:option value="Beagle">비글</form:option>
                        <form:option value="Bulldog">불독</form:option>
                        <form:option value="Mix">믹스견</form:option>
                        <form:option value="ShihTzu">시츄</form:option>
                        <form:option value="Pomeranian">포메라니안</form:option>
                        <form:option value="Koreadog">진돗개</form:option>
                        <form:option value="Shiba">시바</form:option>
                        <form:option value="Etc">기타</form:option>
                    </form:select>
                
                    <!-- 고양이 종류-->
                    <form:select path="petType" id="cat">
                        <form:option value="Persian">페르시안</form:option>
                        <form:option value="Siamese">시암 </form:option>
                        <form:option value="Maine">메인쿤</form:option>
                        <form:option value="RussianBlue">러시안블루</form:option>
                        <form:option value="Ragdoll">래그돌</form:option>
                        <form:option value="Scottish">스코티시</form:option>
                        <form:option value="Abyssinian">아비시니안</form:option>
                        <form:option value="Chantilly">샴</form:option>
                        <form:option value="Bengal">벵갈</form:option>
                        <form:option value="Etc">기타</form:option>
                    </form:select>
    
                    <!-- 새 종류 -->
                    <form:select path="petType" id="bird">
                        <form:option value="Canary">캔터베리</form:option>
                        <form:option value="Parake">잉꼬</form:option>
                        <form:option value="Budgerigar">버드나무새</form:option>
                        <form:option value="Peachfaced">피치페이스</form:option>
                        <form:option value="Cockat">칵투스</form:option>
                        <form:option value="BlueJay">파랑새</form:option>
                        <form:option value="AfricanGrey">아프리칸그레이</form:option>
                        <form:option value="Cockatiel">콕카틸</form:option>
                        <form:option value="SunConure" >선앵무</form:option>
                        <form:option value="Etc">기타</form:option>
                    </form:select>
        
                    <!-- 토끼 -->
                    <form:select path="petType" id="rabbit">
                        <form:option value="NetherlandDwarf">네덜란드드와프</form:option>
                        <form:option value="Lionhead">라이언헤드</form:option>
                        <form:option value="MiniRex">미니렉스</form:option>
                        <form:option value="Lop">미니로프</form:option>
                        <form:option value="BelgianHare">벨지안헤어</form:option>
                        <form:option value="FlemishGiant">플레미쉬자이언트</form:option>
                        <form:option value="Angora">앵고라토끼</form:option>
                        <form:option value="CashmereLop">캐시미어로프</form:option>
                        <form:option value="Chinchilla" >체틀랜드</form:option>
                        <form:option value="Etc">기타</form:option>
                    </form:select>
                    <!-- 기니피그 -->
                    <form:select path="petType" id="guineapig">
                        <form:option value="AmericanGuineaPig">아메리칸</form:option>
                        <form:option value="AbyssinianGuineaPig">아비시니안</form:option>
                        <form:option value="PeruvianGuineaPig">페루비안 </form:option>    
                        <form:option value="SilkieGuineaPig">실키</form:option>
                        <form:option value="TexelGuineaPig">텍셀</form:option>
                        <form:option value="CoronetGuineaPig">코로넷</form:option>
                        <form:option value="AlpacaGuineaPig">알파카</form:option>
                        <form:option value="SheltieGuineaPig">셸티</form:option>
                        <form:option value="BaldwinGuineaPig">발드윈</form:option>
                        <form:option value="Etc">기타</form:option>
                    </form:select>
                    <!--파충류-->
                    <form:select path="petType" id="reptile">
                        <form:option value="Lizards" >도마뱀</form:option>
                        <form:option value="Spiders" >거미</form:option>
                        <form:option value="Snakes" >뱀</form:option>
                        <form:option value="Turtles" >거북이</form:option>
                        <form:option value="Etc">기타</form:option>
                    </form:select>
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

			<div class="form-group row">
				<div >
					<input type="submit" class="btn btn-primary" onclick="getform:selectedValue()"/>
				</div>
			</div>
		</form:form>
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

document.getElementById('pet').addEventListener('change', function() {
    document.getElementById('dog').style.display = "none";
    document.getElementById('cat').style.display = "none";
    document.getElementById('bird').style.display = "none";
    document.getElementById('rabbit').style.display = "none";
    document.getElementById('guineapig').style.display = "none";
    document.getElementById('reptile').style.display = "none";

    if (this.value == "dog") {
        document.getElementById('dog').style.display = "block";
    } else if (this.value == "cat") {
        document.getElementById('cat').style.display = "block";
    } else if (this.value == "bird") {
        document.getElementById('bird').style.display = "block";
    } else if (this.value == "rabbit") {
        document.getElementById('rabbit').style.display = "block";
    } else if (this.value == "guineapig") {
        document.getElementById('guineapig').style.display = "block";
    } else if (this.value == "reptile") {
        document.getElementById('reptile').style.display = "block";
    }
});

document.getElementById('pet').addEventListener('change', function() {
    ['dog', 'cat', 'bird', 'rabbit', 'guineapig', 'reptile'].forEach(function(id) {
        document.getElementById(id).style.display = 'none';
    });
    document.getElementById(this.value).style.display = 'block';
});

// 선택된 값 가져오기
function getSelectedValue() {
    var selectedValue = document.getElementById("pet").value;
    console.log("선택된 값:", selectedValue);
}

</script>
</html>