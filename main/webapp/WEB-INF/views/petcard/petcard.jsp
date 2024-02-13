<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>나의 동물 현황</title>
</head>
<body>
	<div class="container mt-3">
	    <h2>나의 동물 진료 현황</h2>
	    
    <table class="table" border="1">
        <tbody>
            <tr>
                <div class="border">
                    <tr>
                    <p><span> 이름 : ${petid.petName} </span></p>
                	<div class="float-right float-top btn btn-danger border border-dark mr-3 text-dark text-white" style="padding-right:15px;">
			        	<a class="text-white" href="/123team/pet/delete?petid=${petid.petId}" value="정보삭제">정보삭제 </a>
			    	</div>
				    <div class="float-right btn btn-success border border-dark mr-2 " style="padding-right:15px;">
				        <a class="text-white" href="/123team/pet/petread?petId=${petid.petId}" value="정보수정">정보수정 </a>
				    </div>
	           	    <p> 종 : ${petid.petVarity}
	                <p> 생년월일 : ${petid.petBirth} (나이 :<b id="petAge"></b>)</p>
     
                	<form:form modelAttribute="petWeight" action="./petcard?petid=${petid.petId}" method="post">
                    
                    <c:forEach items="${listOfPetWeight}" var="petWeight">
                    	<p> 입력날짜 : ${ petWeight.petWeghitDate }
                    	<p> 몸무게 : ${ petWeight.petWeghit }
                    </c:forEach>
                    
                    <p> <form:input type="date" path="petWeghitDate" />
                    <p> <form:input type="text" path="petWeghit" /> kg </p>
                    <input class="bg-dark text-white border border-radios" type="submit" value="몸무게 입력"> 
                </form:form>
             	</div>

	            <br><br>
	            <td>
	                <div> 
	                    <h4> 동물 정보 수정 </h4>
	                </div>
	            </td>
	            </tr>
	                <tr>
	                    <td>
                        <h4 class="d-flex align-self-center" id="ChartName">진료</h4>
                        <button class="bg-info text-white rounded" id="ChartButton1" onclick="toggleDisplay('ChartDetails1', 'ChartButton1')">펼치기</button>
                        <div id="ChartDetails1"  style="display: none;">
                        
                      	 <c:forEach items="${listOfPetChard}" var="petcard">
                        	<div class="border">
                        		<p> 진료일자 : ${petcard.petChartDate}</p>
                        		<p> 진료명 : ${petcard.petChart}</p>
                        		<p> 진료내용 : ${petcard.petChartContent}</p>
                        	</div>
                       	</c:forEach>
                       	
                            <form action="./hopitalpetcard?petCard=${pet.petId}" method="post">
                                <p> 진료일자 : <input type="date" name="petChartDate" /></p>
                                <p> 진료명 : <input type="text" name="petChart"/></p>
                                <p> 진료내용 : <input type="text" name="petChartContent" placeholder="진료 내용을 입력해주세요"/></p>
                                <input class="bg-warning rounded" type="submit" value="진료기록제출" />
                            </form>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4 class="d-flex align-self-center" id="Vaccination">예방접종</h4>
                        <button class="bg-info text-white rounded" id="ChartButton2" onclick="toggleDisplay('ChartDetails2', 'ChartButton2')">펼치기</button>
                        <div id="ChartDetails2"  style="display: none;">
                        <c:forEach items="${listOfpetVaccination}" var="petcard">
                        	<div class="border">
                        		<p> 예방접종일자 : ${petcard.petVaccinationDate}
                        		<p> 예방접종명 : ${petcard.petVaccination}
                        		<p> 예방접종내용 : ${petcard.petVaccinationCotent}
                        	</div>
                        </c:forEach>
                            <form action="./hopitalpetcard?petId=${pet.petId}" method="post">
                                <p> 예방접종일자 : <input type="date" name="petVaccinationDate"/></p> 
                                <p> 예방접종명: <input type="text" name="petVaccination"/></p>
                                <p> 예방접종내용: <input type="text" name="petVaccinationCotent" placeholder="특이사항을 입력해주세요"/></p>
                                <input class="bg-warning rounded" type="submit" value="예방접종 기록 제출" />
                            </form>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4 class="d-flex align-self-center" id="Surgery">수술</h4>
                        <button class="bg-info text-white rounded" id="ChartButton3" onclick="toggleDisplay('ChartDetails3', 'ChartButton3')">펼치기</button>
                        <div id="ChartDetails3"  style="display: none;">
                        <c:forEach items="${listOfPetSurgery}" var="petcard">
                        	<div class="border">
                        		<p> 수술일자 : ${petcard.petSurgeryDate}</p>
                        		<p> 수술명 : ${petcard.petSurgeryName}</p>
                        		<p> 수술내용 : ${petcard.petSurgeryContent}</p>
                        	</div>
                        </c:forEach>
                            <form action="./hopitalpetcard?petId=${pet.petId}" method="post">
                                <p> 수술일자 : <input type="date" name="petSurgeryDate"></p>
                                <p> 수술명 : <input type="text" name="petSurgeryName"></p>
                                <p> 수술내용: <input tyoe="text" name="petSurgeryContent" placeholder="수술 중 특이사항을 입력해주세요"></p>
                                <input class="bg-warning rounded" type="submit" value="수술 기록 제출" />
                            </form>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4 class="d-flex align-self-center" id="SurgeryAfter">수술경과</h4>
                        <button class="bg-info text-white rounded" id="ChartButton4" onclick="toggleDisplay('ChartDetails4', 'ChartButton4')">펼치기</button>
                        <div id="ChartDetails4"  style="display: none;">
                        
                        <c:forEach items="${listOfPetSurgeryAfter}" var="petcard">
                        	<div class="border">
                        		<p> 수술 후 기록일자  : ${petcard.petSurgeryAfterDate }</p>
                        		<p> 수술 후 진료내용 : ${petcard.petSurgeryAfterContent }</p>
                        	</div>
                        </c:forEach>
                        
                            <form action="./hopitalpetcard?petId=${pet.petId}" method="post">
                                <p> 수술 후 기록일자 : <input type="date" name="petSurgeryDateAfter"></p>
                                <p> 수술 후 진료내용 :  <input type="text" name="petSurgeryContentAfter" placeholder="수술 후 진료 사항을 작성해주세요"></p>
                                <input class="bg-warning rounded" type="submit" value="입원 기록 제출" />
                            </form>
                        </div>
                    </td>
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