<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="mypagetest.css">
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/ddd0a6fba1.js" crossorigin="anonymous"></script>
<!-- js -->
<link href="<c:url value="/resources/js/petcard.js"/>" rel="stylesheet">
<title>나의 동물 현황</title>
<style>
*{
	background-color()
}
</style>
</head>
<body>
    <div class="container mt-3">
	    <h2>나의 동물 진료 현황</h2>
	    
    <table class="table" border="1">
        <tbody>
            <tr>

	                <div class="border">
	                    <tr>
	                    <p><span> 이름 : ${petId.petName} </span></p>
	                	<div class="float-right float-top btn btn-danger border border-dark mr-3 text-dark text-white" style="padding-right:15px;">
				        	<a class="text-white" href="/123team/pet/delete?petid=${petId.petId}" value="정보삭제">정보삭제 </a>
				    	</div>
					    <div class="float-right btn btn-success border border-dark mr-2 " style="padding-right:15px;">
					        <a class="text-white" href="/123team/pet/petread?petId=${petId.petId}" value="정보수정">정보수정 </a>
					    </div>
		           	    <p> 종 : ${petId.petVarity} </p>
		                <p id="petbirth"> 생년월일 : ${petId.petBirth} (나이 : <b id="petAge"> </b>)</p>
	                    <div class="btn btn-success border border-dark mr-2 " style="padding-right:15px;">
							<a class="text-white" href="/123team/login/petcardupdate?petId=${petId.petId}">진료기록수정 </a>
	             		</div>
	             	</div>


<title>나의 동물 현황</title>
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

    <div id="wrap" class="wrap naverid ">
        <header class="header" role="banner">
            <div class="header_subindex">
                <!--로고/Mypage-->
                <div class="gnb_area">
                    <a href="#" class="text-decoration-none" >
                        <h1 class="">Petcard</h2>
                    </a>
                </div>
            </div>
            <!--프로필-->
            <div class="profile_area">
                <div class="profile_inner">
                    <div class="profile">
                        
                        <p class="useid">정영회</p>
                        <p class="usemail">dudghl530@naver.com</p>
                    </div>
                </div>
            </div>
            <div id="headerLeft" class="header_left" aria-hidden="false">
                <ul class="left_menu" role="menu">
                    <li>
                        <a href="" class="left_item" role="menuitem">
                            <div class="menu_text on">내정보</div>
                        </a>
                    </li>
                    <li>
                        <a href="./pet?id=${ id }" class="left_item" role="menuitem" >
                            <div class="menu_text ">반려동물 정보</div>
                        </a>
                    </li>
                    <li>
                        <a href="" class="left_item" role="menuitem" >
                            <div class="menu_text ">반려동물 정보 수정</div>
                        </a>
                    </li>
                    <li>
                        <a href="" class="left_item" role="menuitem" >
                            <div class="menu_text ">로그아웃</div>
                        </a>
                    </li>
                </ul>
            </div>
        </header>
        <div id="container" class="container ">
            <!-- container -->
            <div id="content" class="content">
                <div class="subindex_wrap" role="main">
                    <div id="headerTop" class="path_area" aria-hidden="false"></div>
                </div>
                <div class="subindex_item">
                    <div class="head_title">
                        <h2 class="subindex_title">진료 기록 수정</h3>
                    </div>
               		<div class="subindex_greenbox">
	                    <ul class="subindex_row">
	                        <li>
	                            <div class="row_item other ">
	                                <a href="./login/update?id=${ id }" class="text-decoration-none "><span class="item_text">내 정보 수정</span></a>
	                            </div>
	                        </li>
	                        <li>
	                            <div class="row_item other">
	                                <a href="./login/delete?id=${ id }" class="text-decoration-none" id="delete"><span class="item_text">회원 탈퇴</span></a>
	                            </div>
	                        </li>
	                    </ul>
              		</div>
            	</div>
	            <!--동물 진찰 기록부-->
	            <div class="subindex_item">
	                <div class="head_title">
	                    <h2 class="subindex_title">동물 정보</h2>
	                </div>
	            </td>
	            </tr>
                <tr>
                   <td>

                      <h4 class="d-flex align-self-center" id="ChartName">나의 동물 몸무게</h4>
                      <button class="bg-info text-white rounded" id="ChartButton0" onclick="toggleDisplay('ChartDetails0', 'ChartButton0')">펼치기</button>
                      <div id="ChartDetails0"  style="display: none;">
                      
                      <c:forEach items="${listOfPetWeight}" var="petWeight">
                          <div class="border m-2" style=" position: relative;">
                              <p class="ml-2 mt-2"> 입력날짜 : ${ petWeight.petWeightDate } </p>
                              <input class="ml-2" id="editDateField1" type="date" name="petWeightDate" style="display: none;"/>
                              <p class="m-2 mt-2"> 몸무게 : ${ petWeight.petWeight }	</p>
                              <input class="m-2" id="editWeightField1" type="text" name="petWeightNum" style="display: none;"/>
  
                              <div class="col-sm-1" style="position: absolute; top: 35%; transform: translateX(980%);">
                                  <a href="${pageContext.request.contextPath}/login/deleteWeghit?petId=${petid.petId}&petWeightNum=${petWeight.petWeightNum}" class="p-3 border text-secondary"> <i class="fa-solid fa-trash-can"></i> </a>
                              </div>
                          </div>
                      </c:forEach>

                      <form action="${pageContext.request.contextPath}/login/petcard" method="post">
                          <input type="hidden" name="petId" value="${petid.petId}" />
                          <p class="m-2"> 몸무게 기록 : <input type="date" name="petChartDate" /></p>
                          <p class="m-2"> 몸무게 : <input type="text" name="petChart"/></p>
                          <input class="bg-warning rounded m-2" type="submit" value="몸무게기록하기" />
                      </form>
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
                                
                                <div class="col-sm-1" style="position: absolute; top: 35%; transform: translateX(980%);">
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
                                
                                <div class="col-sm-1" style="position: absolute; top: 35%; transform: translateX(950%);">
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
                                
                                <div class="col-sm-1" style="position: absolute; top: 35%; transform: translateX(980%);">
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
                                
                                <div class="col-sm-1" style="position: absolute; top: 35%; transform: translateX(980%);">
                                    <a href="${pageContext.request.contextPath}/login/deletetSurgeryAfter?petId=${petid.petId}&petSurgeryAfterNum=${petcard.petSurgeryAfterNum}" class="p-3 border text-secondary"><i class="fa-solid fa-trash-can"></i></a>
                                </div>
                        		
                        	</div>
                        </c:forEach>
                        
                            <form action="${pageContext.request.contextPath}/login/petcard" method="post">
                            	<input type="hidden" name="petId" value="${petid.petId}" />
                                <p class="m-2"> 수술 후 기록일자 : <input type="date" name="PetSurgeryAfterDate"></p>
                                <p class="m-2"> 수술 후 진료내용 :  <input type="text" name="PetSurgeryAfterContent" placeholder="수술 후 진료 사항을 작성해주세요"></p>
                                <input class="bg-warning rounded" type="submit" value="입원 기록 제출" />
                            </form>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
	 </div>

	<footer class="footer">
	    
	</footer>   
</body>
<script>
window.onload = function(){
	var birthday = new Date("${petId.petBirth}");
	var dateString = birthday.toString();
	//document.getElementById('dateString').text = dateString;
	
	var age = calculateAge(birthday);
	document.getElementById("petAge").innerText = age;
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