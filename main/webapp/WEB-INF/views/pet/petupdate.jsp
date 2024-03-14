<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트팹 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!-- js -->
<link href="<c:url value="/resources/js/petupdate.js"/>" rel="stylesheet">
<meta charset="UTF-8">
<title>펫 정보 수정 페이지</title>
</head>
<body>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./resources/js/refreshing.js"></script>

<div id="header">
		<%@  include file="../module/header.jsp" %>
	</div>
 
	<div class="container-fluid page-body-wrapper">
 		<%@  include file="../module/leftheader.jsp" %>	
 		
   
        <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
            <div class="col-lg-6 mx-auto">
                <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                    <div class="card mb-2">
                        <p class="card-title"><b>소중한 반려동물 수정 페이지 입니다.</b></p>
                    </div>
                    	<form:form modelAttribute="pet_create" action="./creatpet?id=${id.personId}" method="POST" enctype="multipart/form-data">
						<form:hidden path="personId" value="${id}"/>
						<form:hidden path="personId" value="petImage"/>
						
                        <div class="form-group d-flex">
                        	<div class="form-control form-control-lg col-md-12">${petId.petId}</div>							
                        </div>
                        
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="petName"  value="${petId.petName}"/>
                        </div>
                        
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="petName"  value="${petId.petName}"/>
                        </div>
                        
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="petVarity"  value="${petrId.petVarity }" />
                        </div>

                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="date" path="petBirth"  placeholder="생년월일"/>
                        </div>
                       
                        <div class="form-group">
                            <input class="form-control form-control-lg" type="file" name="s_image" placeholder="[선택] 반려동물 사진을 첨부해주세요."/>
                        </div>
                        
                        <div class="form-group">
						    <form:radiobutton class="col-3" path="petSex" value="남자"/>남자
		                    <form:radiobutton class="col-3" path="petSex" value="여자"/>여자
                        </div>
                        
                        <div class="mt-3">
                            <input type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" id="storeAddr" onclick="combineAddr()" value="회원가입"  />
                        </div>
                        
                    </form:form>
		                </div>
		            </div>
		        </div>
	        </div>
		</div>
	</div>
          
	<%@ include file="../module/footer.jsp" %>
 	



</body>
<script>
</script>
</html>
<!--     <div class="jumbotron">
        <div class="container">
            <legend><h2>소중한 반려동물 정보 수정페이지 입니다.</h2></legend>
        </div>
    </div>

    <div class="container">
		<form:form modelAttribute="pet" action="/123team/pet/petread?personId=${id.personId}" method="POST" enctype="multipart/form-data">
		<form:input type="hidden" path="petType" value="${petId.petType}" />
		<form:input type="hidden" path="petId" value="${petId.petId}" />
		
			<div class="form-group row"> 반려동물 아이디 : ${petId.petId}
                <div class="col-4">
				     
                </div>
            </div>
            
			<div class="form-group row"> 반려동물이름 : 
                <div class="col-4">
                    <form:input type="text" path="petName" />
                </div>
            </div>

			<div class="form-group row"> 반려동물 종류 : ${petId.petType}
                <div class="col-4">
                </div>
            </div>

            <div class="form-group row"> 반려동물 종 :
                <div class="col-4">
                	<form:input type="text" path="petVarity" />
                </div>
			</div>
			
            <div class="form-group row"> 반려동물성별 :${petId.petSex}
                <div class="col-4">
                </div>
            </div>

			<div class="form-group row"> 반려동물생일 :
                <div class="col-4">
				    <form:input type="date" path="petBirth"/>
                </div>
            </div>
            <div class="form-group row"> [선택] 반려동물이미지 : 
            	<div class="col-4">
            		<input type="file" name="pet_Image"/>
            	</div>
            </div>

			<div class="form-group row">
				<div >
					<input type="submit" class="btn btn-primary" onclick="getform:form:selectedValue()"/>
				</div>
			</div>
		</form:form>
    </div> -->