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
                        <p class="card-title"><b>소중한 반려동물 회원가입 페이지 입니다.</b></p>
                    </div>
                    	<form:form modelAttribute="pet_create" action="./creatpet?id=${id.personId}" method="POST" enctype="multipart/form-data">
						<form:hidden path="personId" value="${id}"/>
						<form:hidden path="personId" value="petImage"/>
						
                        <div class="form-group d-flex">
                        	<form:input id="personId" class="form-control form-control-lg col-md-8" type="text" path="petId" placeholder="아이디" />
							<a id="userId" onclick="idDuplicateCheck(event)" class="btn btn-outline-primary col-md-3 font-weight-medium auth-form-btn text-center ml-2">중복확인</a>
                        </div>
                        
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="petName"  placeholder="동물의 이름"/>
                        </div>
                        
                        <div class="form-group">
		                    <form:select class="col-12" style="height: 50px;" id="petVarity" path="petType">
		                        <form:option id="dog" value="dog">강아지</form:option>
		                        <form:option id="cat" value="cat">고양이</form:option>
		                        <form:option id="bird" value="bird">새</form:option>
		                        <form:option id="rabbit" value="rabbit">토끼</form:option>
		                        <form:option id="guineapig" value="guineapig">기니피그</form:option>
		                        <form:option id="reptile" value="reptile">파충류</form:option>
		                        <form:option id="Etc" value="reptile">기타</form:option>
		                    </form:select>
                        </div>
                        
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="petVarity"  placeholder="동물의종"/>
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
 	


  /*  <div class="container">
		<form:form modelAttribute="pet_create" action="./creatpet?id=${id.personId}" method="POST" enctype="multipart/form-data">
		<form:hidden path="personId" value="${id}"/>
		<form:hidden path="personId" value="petImage"/>

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
                    <form:select class="col-12" style="height: 50px;" id="petVarity" path="petType">
                        <form:option class="col-3" id="dog" value="dog">강아지</form:option>
                        <form:option class="col-3" id="cat" value="cat">고양이</form:option>
                        <form:option class="col-3" id="bird" value="bird">새</form:option>
                        <form:option class="col-3" id="rabbit" value="rabbit">토끼</form:option>
                        <form:option class="col-3" id="guineapig" value="guineapig">기니피그</form:option>
                        <form:option class="col-3" id="reptile" value="reptile">파충류</form:option>
                        <form:option class="col-3" id="Etc" value="reptile">기타</form:option>
                    </form:select>
                </div>
            </div>

            <div class="form-group row"> 반려동물 종 :
                <div class="col-4">
                	<form:input type="text" path="petVarity" />
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
    </div>

</body>
<script type="text/javascript">
window.onload = function(){
    document.getElementById('dogtype').style.display = "none";
    document.getElementById('cattype').style.display = "none";
    document.getElementById('birdtype').style.display = "none";
    document.getElementById('rabbittype').style.display = "none";
    document.getElementById('guineapigtype').style.display = "none";
    document.getElementById('reptiletype').style.display = "none";
};

document.getElementById('petVarity').addEventListener("click", function(){
    var petVarity = this.value;

        if(petVarity == 'dog')
        {
            document.getElementById('dogtype').style.display = "block";
            document.getElementById('cattype').style.display = "none";
            document.getElementById('birdtype').style.display = "none";
            document.getElementById('rabbittype').style.display = "none";
            document.getElementById('guineapigtype').style.display = "none";
            document.getElementById('reptiletype').style.display = "none";
        }
        else if(petVarity == 'cat')
        {
            document.getElementById('dogtype').style.display = "none";
            document.getElementById('cattype').style.display = "block";
            document.getElementById('birdtype').style.display = "none";
            document.getElementById('rabbittype').style.display = "none";
            document.getElementById('guineapigtype').style.display = "none";
            document.getElementById('reptiletype').style.display = "none";
        }
        else if(petVarity == 'bird')
        {
            document.getElementById('dogtype').style.display = "none";
            document.getElementById('cattype').style.display = "none";
            document.getElementById('birdtype').style.display = "block";
            document.getElementById('rabbittype').style.display = "none";
            document.getElementById('guineapigtype').style.display = "none";
            document.getElementById('reptiletype').style.display = "none";
        }
        else if(petVarity == 'rabbit')
        {
            document.getElementById('dogtype').style.display = "none";
            document.getElementById('cattype').style.display = "none";
            document.getElementById('birdtype').style.display = "none";
            document.getElementById('rabbittype').style.display = "block";
            document.getElementById('guineapigtype').style.display = "none";
            document.getElementById('reptiletype').style.display = "none";
        }
        else if(petVarity == 'guineapig')
        {
            document.getElementById('dogtype').style.display = "none";
            document.getElementById('cattype').style.display = "none";
            document.getElementById('birdtype').style.display = "none";
            document.getElementById('rabbittype').style.display = "none";
            document.getElementById('guineapigtype').style.display = "block";
            document.getElementById('reptiletype').style.display = "none";
        }
        else if(petVarity == 'reptile')
        {
            document.getElementById('dogtype').style.display = "none";
            document.getElementById('cattype').style.display = "none";
            document.getElementById('birdtype').style.display = "none";
            document.getElementById('rabbittype').style.display = "none";
            document.getElementById('guineapigtype').style.display = "none";
            document.getElementById('reptiletype').style.display = "block";
        }
});
</script>
</html>