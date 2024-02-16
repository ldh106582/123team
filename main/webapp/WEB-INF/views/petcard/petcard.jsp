<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/ddd0a6fba1.js" crossorigin="anonymous"></script>

<style>
*{
background-color()
}
</style>
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
	           	    <p> 종 : ${petid.petVarity} </p>
	                <p id="petbirth"> 생년월일 : ${petid.petBirth} (나이 : <b id="petAge"> </b>)</p>
     
                    <c:forEach items="${listOfPetWeight}" var="petWeight">
                    	<div class="border" style=" position: relative;">
                    		<p class="ml-2 mt-2"> 입력날짜 : ${ petWeight.petWeightDate } </p>
                            <input class="ml-2" id="editDateField1" type="date" name="petWeightDate" style="display: none;"/>
                    		<p class="m-2 mt-2"> 몸무게 : ${ petWeight.petWeight }	</p>
                            <input class="m-2" id="editWeightField1" type="text" name="petWeightNum" style="display: none;"/>
                            
                            <div class="update">
                                <a id="Before1" onclick="toggleDisplay(event,'Before1', 'After1', 'editDateField1', 'editWeightField1')" href="#" class="col-2 m-1 p-1 border text-white btn btn-success">수정하기</a>
                                <a id="After1" onclick="toggleDisplay('Before1', 'After1', 'editDateField1', 'editWeightField1')" href="${pageContext.request.contextPath}/login/petcardupdate?weghitNum=${petWeight.petWeightNum}" class="col-2 m-1 p-1 border text-white btn btn-success" style="display: none;">수정완료</a>
                            </div>
                        
                            <div class="col-sm-1" style="position: absolute; top: 45%; transform: translateX(980%);">
                                <a href="${pageContext.request.contextPath}/login/deleteWeghit?petId=${petid.petId}&petWeightNum=${petWeight.petWeightNum}" class="p-3 border text-secondary"> <i class="fa-solid fa-trash-can"></i> </a>
                            </div>
                       </div>
                    </c:forEach>
                    
	     			<form action="${pageContext.request.contextPath}/login/petcard" method="post">
	     				<input type="hidden" name="petId" value="${petid.petId}" />
	                    <p> <input type="date" name="petWeightDate" /> </p>
	                    <p> <input type="text" name="petWeight" /> kg </p>
	                    <input class="bg-dark text-white border border-radios" type="submit" value="몸무게입력" />
	                </form>
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
                        <h4 class="d-flex align-self-center" id="ChartName">진료</h4>
                        <button class="bg-info text-white rounded" id="ChartButton1" onclick="toggleDisplay('ChartDetails1', 'ChartButton1')">펼치기</button>
                        <div id="ChartDetails1"  style="display: none;">
                        
                      	 <c:forEach items="${listOfPetChard}" var="petcard" >
                        	<div class="border m-2" style=" position: relative;">
                        		<p class="mt-2"> 진료일자 : ${petcard.petChartDate}</p> 
                                <input class="ml-2" id="editDateField2" type="date" name="petChartDate;" style="display: none;"/>
                        		<p class="mt-0"> 진료명 : ${petcard.petChart}</p>
                                <input class="m-2" id="editName2" type="text" name="petChart;" style="display: none;"/>
                        		<p class="mt-0"> 진료내용 : ${petcard.petChartContent}</p>
                                <input class="m-2" id="editContentField2" type="text" name="petChartContent;" style="display: none;"/>
                        		
                                <div class="update">
                                    <a  id="Before2" onclick="toggleDisplay(event'Before2', 'After2','editDateField2', 'editName2', 'editContentField2')" href="#" class="col-2 m-1 p-1 border text-white btn btn-success">수정하기</a>
                                    <a id="After2" onclick="toggleDisplay('Before2', 'After2','editDateField2', 'editName2', 'editContentField2')"  href="${pageContext.request.contextPath}/login/deletetPetChart?petId=${petid.petId}&petChartNum=${petcard.petChartNum}"  class="col-2 m-1 p-1 border text-white btn btn-success" style="display: none;">수정완료</a>
                                </div>
                                    
                                
                                <div class="col-sm-1" style="position: absolute; top: 45%; transform: translateX(980%);">
                                    <a href="${pageContext.request.contextPath}/login/deletetPetChart?petId=${petid.petId}&petChartNum=${petcard.petChartNum}" class="p-3 border text-secondary" ><i class="fa-solid fa-trash-can"></i></a>
                                </div>
                                
                        	</div>
                       	</c:forEach>
                       	
                            <form action="${pageContext.request.contextPath}/login/petcard" method="post">
                            	<input type="hidden" name="petId" value="${petid.petId}" />
                                <p class="m-2"> 진료일자 : <input type="date" name="petChartDate" /></p>
                                <p class="m-2"> 진료명 : <input type="text" name="petChart"/></p>
                                <p class="m-2"> 진료내용 : <input type="text" name="petChartContent" placeholder="진료 내용을 입력해주세요"/></p>
                                <input class="bg-warning rounded m-2" type="submit" value="진료기록제출" />
                            </form>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4 class="d-flex align-self-center" id="Vaccination">예방접종</h4>
                        <button class="bg-info text-white rounded" id="ChartButton2" onclick="toggleDisplay('ChartDetails2', 'ChartButton2')">펼치기</button>
                        <div id="ChartDetails2" style="display: none;">
                        <c:forEach items="${listOfpetVaccination}" var="petcard">
                        
                        	<div class="border m-2"  style=" position: relative;">
                        		<p class="mt-2"> 예방접종일자 : ${petcard.petVaccinationDate}
                                <input class="ml-2" id="editDateField3" type="date" name="petVaccinationDate" style="display: none;"/>
                        		<p> 예방접종명 : ${petcard.petVaccination}
                                <input class="m-2" id="editName3" type="text" name="petVaccination" style="display: none;"/>
                        		<p> 예방접종내용 : ${petcard.petVaccinationCotent}
                                    <input class="m-2" id="editContentField3" type="text" name="petVaccinationCotent" style="display: none;"/>

                                <div class="update">
                                    <a  id="Before3" onclick="toggleDisplay('Before3', 'After3','editDateField3', 'editName3', 'editContentField3')" href="#" class="col-2 m-1 p-1 border text-white btn btn-success">수정하기</a>
                                    <a id="After3" onclick="toggleDisplay('Before3', 'After3','editDateField3', 'editName3', 'editContentField3')" href="${pageContext.request.contextPath}/login/deleteVaccination?petId=${petid.petId}&petVaccinationNum=${petcard.petVaccinationNum}" class="col-2 m-1 p-1 border text-white btn btn-success" style="display: none;">수정완료</a>
                                </div>
                                
                                <div class="col-sm-1" style="position: absolute; top: 45%; transform: translateX(950%);">
                                    <a href="${pageContext.request.contextPath}/login/deleteVaccination?petId=${petid.petId}&petVaccinationNum=${petcard.petVaccinationNum}" class="p-3 border text-secondary"><i class="fa-solid fa-trash-can"></i></a>
                                </div>
                        	</div>
                        </c:forEach>

                            <form action="${pageContext.request.contextPath}/login/petcard" method="post">
                            	<input type="hidden" name="petId" value="${petid.petId}" />
                                <p class="m-2"> 예방접종일자 : <input type="date" name="petVaccinationDate"/></p> 
                                <p class="m-2"> 예방접종명: <input type="text" name="petVaccination"/></p>
                                <p class="m-2"> 예방접종내용: <input type="text" name="petVaccinationCotent" placeholder="특이사항을 입력해주세요"/></p>
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
                        
                        	<div class="border m-2" style=" position: relative;">
                        		<p class="mt-2"> 수술일자 : ${petcard.petSurgeryDate}</p>
                                <input class="ml-2" id="editDateField4" type="date" name="PetSurgeryDate" style="display: none;"/>
                        		<p> 수술명 : ${petcard.petSurgeryName}</p>
                                <input class="m-2" id="editName4" type="text" name="petSurgeryName" style="display: none;"/>
                        		<p> 수술내용 : ${petcard.petSurgeryContent}</p>
                        		<input class="m-2" id="editContentField4" type="text" name="PetSurgeryContent" style="display: none;"/>

                        		<div class="update">
                                    <a id="Before4" onclick="toggleDisplay('Before4', 'After4','editDateField4', 'editName4', 'editContentField4')"  href="#" class="col-2 m-1 p-1 border text-white btn btn-success">수정하기</a>
                                    <a id="After4" onclick="toggleDisplay('Before4', 'After4','editDateField4', 'editName4', 'editContentField4')"  href="${pageContext.request.contextPath}/login/deletetSurgery?petId=${petid.petId}&petSurgeryNum=${petcard.petSurgeryNum}" class="col-2 m-1 p-1 border text-white btn btn-success" style="display: none;">수정완료</a>
                                </div>
                                
                                <div class="col-sm-1" style="position: absolute; top: 45%; transform: translateX(980%);">
                                    <a id="After4" href="${pageContext.request.contextPath}/login/deletetSurgery?petId=${petid.petId}&petSurgeryNum=${petcard.petSurgeryNum}" class="p-3 border text-secondary"><i class="fa-solid fa-trash-can"></i></a>
                                </div>
                        		
                        	</div>
                        </c:forEach>
                             <form action="${pageContext.request.contextPath}/login/petcard" method="post">
                            	<input type="hidden" name="petId" value="${petid.petId}" />
                                <p class="m-2"> 수술일자 : <input type="date" name="petSurgeryDate"></p>
                                <p class="m-2"> 수술명 : <input type="text" name="petSurgeryName"></p>
                                <p class="m-2"> 수술내용: <input type="text" name="petSurgeryContent" placeholder="수술 중 특이사항을 입력해주세요"></p>
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
                        
                        	<div class="border" style=" position: relative;">
                        		<p class="mt-2"> 수술 후 기록일자  : ${petcard.petSurgeryAfterDate }</p>
                                <input class="ml-2" id="editDateField5" type="date" name="petSurgeryDateAfter" style="display: none;"/>
                        		<p> 수술 후 진료내용 : ${petcard.petSurgeryAfterContent }</p>
                                <input class="m-2" id="editContentField5" type="text" name="petSurgeryContentAfter" style="display: none;"/>
                                
                                <div class="update">
                                    <a  id="Before5" onclick="toggleDisplay('Before5', 'After5','editDateField5', 'editContentField5')"  href="#" class="col-2 m-1 p-1 border text-white btn btn-success">수정하기</a>
                                    <a id="After5" onclick="toggleDisplay('Before5', 'After5','editDateField5', 'editContentField5')"  href="${pageContext.request.contextPath}/login/deletetSurgeryAfter?petId=${petid.petId}&petSurgeryAfterNum=${petcard.petSurgeryAfterNum}" class="col-2 m-1 p-1 border text-white btn btn-success" style="display: none;">수정완료</a>
                                </div>
                                
                                <div class="col-sm-1" style="position: absolute; top: 45%; transform: translateX(980%);">
                                    <a href="${pageContext.request.contextPath}/login/deletetSurgeryAfter?petId=${petid.petId}&petSurgeryAfterNum=${petcard.petSurgeryAfterNum}" class="p-3 border text-secondary"><i class="fa-solid fa-trash-can"></i></a>
                                </div>
                        		
                        	</div>
                        </c:forEach>
                        
                            <form action="${pageContext.request.contextPath}/login/petcard" method="post">
                            	<input type="hidden" name="petId" value="${petid.petId}" />
                                <p class="m-2"> 수술 후 기록일자 : <input type="date" name="petSurgeryDateAfter"></p>
                                <p class="m-2"> 수술 후 진료내용 :  <input type="text" name="petSurgeryContentAfter" placeholder="수술 후 진료 사항을 작성해주세요"></p>
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

   var weightupdate = document.getElementById('weightupdate');
   var weightcompelete = document.getElementById('weightcompelete');
    weightupdate.addEventListener("click", function() {
        document.getElementById('petWeightDate').style.display = "block";
        document.getElementById('petWeightNum').style.display = "block";
        weightupdate.style.display ="none";
        weightcompelete.style.display = "block";
    });

    weightcompelete.addEventListener("click", function() {
        document.getElementById('petWeightDate').style.display = "none";
        document.getElementById('petWeightNum').style.display = "none";
        weightupdate.style.display ="block";
        weightcompelete.style.display = "none";
    });

    function toggleDisplay(event, buttonId1, buttonId2, editDateFieldId, editNameId, editContentFieldId){
    event.preventDefault();
    var button1 = document.getElementById(buttonId1);
    var button2 = document.getElementById(buttonId2);
    var editDateField = document.getElementById(editDateFieldId);
    var editNameField = document.getElementById(editNameId);
    var editContentField = document.getElementById(editContentFieldId);
    
    if(button1.style.display === 'none'){
        button1.style.display = "block";
        button2.style.display = "none";
        editDateField.style.display = "none";
        editNameField.style.display = "none";
        editContentField.style.display = "none";
    }else {
        button1.style.display = "none";
        button2.style.display = "block"; 
        editDateField.style.display = "block";
        editNameField.style.display = "block";
        editContentField.style.display = "block";
    }
}

</script>
</html>