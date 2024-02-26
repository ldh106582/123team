<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/ddd0a6fba1.js" crossorigin="anonymous"></script>
<!-- js -->
<link href="<c:url value="/resources/js/PetCardUpdate.js"/>" rel="stylesheet">
<meta charset="UTF-8">
<title>펫카드 수정페이지</title>
<style type="text/css">
	*{
	font-family: 'KCC-Ganpan';
	background-color()
}

@font-face {
    font-family: 'KCC-Ganpan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/KCC-Ganpan.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
</style>
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
						<a class="nav-link" href="/123team/hospital"><img width="24" height="24" src="https://img.icons8.com/doodle/48/hospital--v1.png" alt="hospital--v1"/>병원</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/123team/products"><img width="24" height="24" src="https://img.icons8.com/external-photo3ideastudio-lineal-color-photo3ideastudio/24/external-pet-shop-pet-shop-photo3ideastudio-lineal-color-photo3ideastudio.png" alt="external-pet-shop-pet-shop-photo3ideastudio-lineal-color-photo3ideastudio"/>동물상품</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/123team/Fboards"><img width="24" height="24" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/24/external-board-police-flaticons-lineal-color-flat-icons-2.png" alt="external-board-police-flaticons-lineal-color-flat-icons-2"/>게시판</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
   <div class="container mt-3">
	    <h2>나의 동물 진료 현황</h2>
	    
    <table class="table" border="1">
        <tbody>
            <tr>
                <div class="border">
                    <tr>
                    <p><span> 이름 : ${pet.petName} </span></p>
				    </div>
	           	    <p> 종 : ${pet.petVarity} </p>
	                <p id="petbirth"> 생년월일 : ${pet.petBirth} (나이 : <b id="petAge"> </b>)</p>
					<div class="btn btn-success border border-dark mr-2 " style="padding-right:15px;">
						<a class="text-white" href="/123team/login/back?petid=${ pet.petId }">기록수정완료 </a> 	             	
					</div>
             	</div>

	            <br><br>
	            <td>
	                <div> 
	                    <h4> 동물 진찰 기록부 </h4>
	                </div>
	            </td>
	            </tr>
		            <tr>
		              <td>
	                      <h4 class="d-flex align-self-center" id="ChartName">나의 동물 몸무게</h4>
	                      <button type="button" class="bg-info text-white rounded" id="ChartButton0" onclick="toggleDisplay('ChartDetails0', 'ChartButton0')">펼치기</button>
	                      <div id="ChartDetails0"  style="display: none;">
						       <c:forEach items="${listOfPetWeight}" var="petWeight">
								    <form action="/123team/login/petcardupdate?num=${petWeight.petWeightNum}&petId=${petWeight.petId}" method="post" >
								        <input type="hidden" name="type" value="weight" />
								        <div class="border m-2" style=" position: relative;">
								            <input type="hidden" name="petId" value="${pet.petId}" />
								            <p class="m-2"> 몸무게 기록 : <input type="date" name="petWeightDate" value="${petWeight.petWeightDate}" /></p> 
								            <p class="m-2"> 몸무게 : <input type="text" name="petWeight" value="${petWeight.petWeight}" maxlength="3" /> </p> 
								        </div>
								        <input class="btn btn-success border-3 border-dark mt-2 mb-2" type="submit" value="수정완료"/>
								    </form>
								    <div class="col-sm-1" style="position: absolute; top: 35%; transform: translateX(980%);">
                                    	<a href="${pageContext.request.contextPath}/login/deleteWeghit?petId=${petid.petId}&petWeightNum=${petWeight.petWeightNum}" class="p-3 border text-secondary"> <i class="fa-solid fa-trash-can"></i> </a>
                                	</div>
								</c:forEach>
	                       </div>
					   </td>
	                 </tr>
	
	 	            <tr>
		              <td>
						<h4 class="d-flex align-self-center" id="ChartName">진료</h4>
						<button type="button" class="bg-info text-white rounded" id="ChartButton1" onclick="toggleDisplay('ChartDetails1', 'ChartButton1')">펼치기</button>
						<div id="ChartDetails1" style="display: none;">
							  <c:forEach items="${listOfPetChard}" var="petcard" varStatus="status">
							    <form action="/123team/login/petcardupdate?num=${petcard.petChartNum}&petId=${petcard.petId}" method="post" >
							    	<div class="border m-2" style=" position: relative;">
									      <input type="hidden" name="type" value="chart" />
									      <p>진료일자: <input id="editDateField${status.index}" type="date" name="petChartDate" value="${petcard.petChartDate}"/> 
									      <p>진료명: <input id="editName${status.index}" type="text" name="petChart" value="${petcard.petChart}"/> </p>
									      <p>진료내용: <input id="editContentField${status.index}" type="text" name="petChartContent" value="${petcard.petChartContent}"/></p>
								    </div>
							     <input class="btn btn-success border-3 border-dark mt-2 mb-2" type="submit" value="수정완료"/>
							 </form>
							    <div class="col-sm-1" style="position: absolute; top: 35%; transform: translateX(980%);">
                                    <a href="${pageContext.request.contextPath}/login/deletetPetChart?petId=${petid.petId}&petChartNum=${petcard.petChartNum}" class="p-3 border text-secondary" ><i class="fa-solid fa-trash-can"></i></a>
                                </div>
							  </c:forEach>
						</div>
	                    </td>
	                </tr>
	                <tr>
	                    <td>
						<h4 class="d-flex align-self-center" id="Vaccination">예방접종</h4>
						<button type="button" class="bg-info text-white rounded" id="ChartButton2" onclick="toggleDisplay('ChartDetails2', 'ChartButton2')">펼치기</button>
						
						<div id="ChartDetails2" style="display: none;">
						  <c:forEach items="${listOfpetVaccination}" var="petcard" varStatus="status">
							 <form action="/123team/login/petcardupdate?num=${petcard.petVaccinationNum}&petId=${petcard.petId}" method="post" >
							    <div class="border m-2"  style="position: relative;">
							      <input type="hidden" name="type" value="vaccin" />
							      <p>예방접종일자: <input id="editDateField${status.index}" type="date" name="petVaccinationDate" value="${petcard.petVaccinationDate}"/> </p>
							      <p>예방접종명: <input id="editName${status.index}" type="text" name="petVaccination" value="${petcard.petVaccination}"/> </p>
							      <p>예방접종내용: <input id="editContentField${status.index}" type="text" name="petVaccinationCotent" value="${petcard.petVaccinationCotent}"/> </p>
							    </div>
							    <input class="btn btn-success border-3 border-dark mt-2 mb-2" type="submit" value="수정완료"/>
						  	</form>
						  	
						  </c:forEach>
						</div>
	                    </td>
	                </tr>
	                <tr>
	                    <td>
	                        <h4 class="d-flex align-self-center" id="Surgery">수술</h4>
							<button type="button" class="bg-info text-white rounded" id="ChartButton3" onclick="toggleDisplay('ChartDetails3', 'ChartButton3')">펼치기</button>
							
							<div id="ChartDetails3" style="display: none;">
							  <c:forEach items="${listOfPetSurgery}" var="petcard" varStatus="status">
								 <form action="/123team/login/petcardupdate?num=${petcard.petSurgeryNum}&petId=${petcard.petId}" method="post" >
								    <div class="border m-2" style=" position: relative;">
								      <input type="hidden" name="type" value="surgery" />
								      <p>수술날짜: <input id="editDateField4${status.index}" type="date" name="petSurgeryDate" value="${petcard.petSurgeryDate}"/> </p>
								      <p>수술명: <input id="editName4${status.index}" type="text" name="petSurgeryName" value="${petcard.petSurgeryName}"/> </p>
								      <p>수술내용: <input id="editContentField4${status.index}" type="text" name="petSurgeryContent" value="${petcard.petSurgeryContent}"/> </p>
								    </div>
								    <input class="btn btn-success border-3 border-dark mt-2 mb-2" type="submit" value="수정완료"/>
							  	  </form>
							  </c:forEach>
							</div>
	                    </td>
	                </tr>
	                <tr>
	                    <td>
	                        <h4 class="d-flex align-self-center" id="SurgeryAfter">수술경과</h4>
						<button type="button" class="bg-info text-white rounded" id="ChartButton4" onclick="toggleDisplay('ChartDetails4', 'ChartButton4')">펼치기</button>
						
						<div id="ChartDetails4" style="display: none;">
						 <c:forEach items="${listOfPetSurgeryAfter}" var="petcard" varStatus="status">
							 <form action="/123team/login/petcardupdate?num=${petcard.petSurgeryAfterNum}&petId=${petcard.petId}" method="post" >
							    <div class="border" style=" position: relative;">
							      <input type="hidden" name="type" value="sergeryAfter" />
							      <p class="mt-2">수술 후 기록일자: <input id="editDateField5${status.index}" type="date" name="petSurgeryAfterDate" value="${petcard.petSurgeryAfterDate}"/> </p>
							      <p>수술 후 진료내용: <input id="editContentField5${status.index}" type="text" name="petSurgeryAfterContent" value="${petcard.petSurgeryAfterContent}"/> </p>
							    </div>
							    <input class="btn btn-success border-3 border-dark m-2" type="submit" value="수정완료"/>
							  </form>
						  </c:forEach>
						</div>
	                </tr>
            </tbody>
        </table>
	 </div>
</body>
<script>
window.onload = function(){
	var birthday = new Date("${pet.petBirth}");
	var age = calculateAge(birthday);
	document.getElementById('petAge').innerText = age;
};

function calculateAge(birthday){
    var diff_ms = Date.now() - birthday.getTime();
    var age_dt = new Date(diff_ms);
    return Math.abs(age_dt.getUTCFullYear()-1970);
}

function toggleDisplay(contentId, buttonId) {
	   var element = document.getElementById(contentId);
	   var button = document.getElementById(buttonId);
	   if (element.style.display === 'none') {
	       element.style.display = 'block';
	       button.innerText = '내용 닫기';
	   } else {
	       element.style.display = 'none';
	       button.innerText = '펼치기';
	   }
	}
</script>
</html>