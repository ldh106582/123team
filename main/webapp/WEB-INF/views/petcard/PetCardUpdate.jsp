<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/ddd0a6fba1.js" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>펫카드 수정페이지</title>
</head>
<body>
   <div class="container mt-3">
	    <h2>나의 동물 진료 현황</h2>
	    
    <table class="table" border="1">
        <tbody>
            <tr>
                <div class="border">
                    <tr>
                    <p><span> 이름 : ${pet.petName} </span></p>
                	<div class="float-right float-top btn btn-danger border border-dark mr-3 text-dark text-white" style="padding-right:15px;">
			        	<a class="text-white" href="/123team/pet/delete?petid=${pet.petId}" value="정보삭제">정보삭제 </a>
			    	</div>
				    <div class="float-right btn btn-success border border-dark mr-2 " style="padding-right:15px;">
				        <a class="text-white" href="/123team/pet/petread?petId=${pet.petId}" value="정보수정">정보수정 </a>
				    </div>
	           	    <p> 종 : ${pet.petVarity} </p>
	                <p id="petbirth"> 생년월일 : ${pet.petBirth} (나이 : <b id="petAge"> </b>)</p>

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
	                      <a class="btn btn-info border-2 border-dark text-white rounded" id="ChartButton0" onclick="toggleDisplay('ChartDetails0', 'ChartButton0')">펼치기</a>
	                      <div id="ChartDetails0"  style="display: none;">
	                      
	                       
		                       <c:forEach items="${listOfPetWeight}" var="petWeight">
		                      	 <form action="/123team/login/petWeightupdate?petWeightNum=${petWeight.petWeightNum}?petId=${pet.petId}" method="post" >
			                         <div class="border m-2" style=" position: relative;">
										<input type="hidden" name="petId" value="${pet.petId}" />
										<p class="m-2"> 몸무게 기록 : <input type="date" name="petWeightDate" value="${petWeight.petWeightDate}" /></p> 
										<p class="m-2"> 몸무게 : <input type="text" name="petWeight" value="${ petWeight.petWeight}"/> </p> 
			                		</div>
		                			<input class="btn btn-success border-3 border-dark mt-2 mb-2" type="submit" value="수정완료"/>
	                			</form>
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
							    <form action="/123team/login/petcardupdate?petChartNum=${petcard.petChartNum}&petId=${petcard.petId}" method="post" >
							    <div class="border m-2" style=" position: relative;">
							      <p>진료일자: <input id="editDateField${status.index}" type="date" name="petChartDate" value="${petcard.petChartDate}"/> 
							      <p>진료명: <input id="editName${status.index}" type="text" name="petChart" value="${petcard.petChart}"/> </p>
							      <p>진료내용: <input id="editContentField${status.index}" type="text" name="petChartContent" value="${petcard.petChartContent}"/></p>
							    </div>
							    <input class="btn btn-success border-3 border-dark mt-2 mb-2" type="submit" value="수정완료"/>
							 </form>
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
							 <form action="./login/petcardupdate?=" method="post" >
							    <div class="border m-2"  style=" position: relative;">
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
								 <form action="./login/petcardupdate?=" method="post" >
								    <div class="border m-2" style=" position: relative;">
								      <p>수술날짜: <input id="editDateField4${status.index}" type="date" name="PetSurgeryDate" value="${petcard.petSurgeryDate}"/> </p>
								      <p>수술명: <input id="editName4${status.index}" type="text" name="petSurgeryName" value="${petcard.petSurgeryName}"/> </p>
								      <p>수술내용: <input id="editContentField4${status.index}" type="text" name="PetSurgeryContent" value="${petcard.petSurgeryContent}"/> </p>
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
							 <form action="./login/petcardupdate?=" method="post" >
							    <div class="border" style=" position: relative;">
							      <p class="mt-2">수술 후 기록일자: <input id="editDateField5${status.index}" type="date" name="petSurgeryDateAfter" value="${petcard.petSurgeryAfterDate}"/> </p>
							      <p>수술 후 진료내용: <input id="editContentField5${status.index}" type="text" name="petSurgeryContentAfter" value="${petcard.petSurgeryAfterContent}"/> </p>
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