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
		<form:form modelAttribute="pet_create" action="./creatpet?id=${id.personId}" method="POST">
		<form:hidden path="personId" value="${id}"/>

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
                    <form:select id="petVarity" path="petType">
                        <form:option id="dog" value="dog">강아지</form:option>
                        <form:option id="cat" value="cat">고양이</form:option>
                        <form:option id="bird" value="bird">새</form:option>
                        <form:option id="rabbit" value="rabbit">토끼</form:option>
                        <form:option id="guineapig" value="guineapig">기니피그</form:option>
                        <form:option id="reptile" value="reptile">파충류</form:option>
                        <form:option id="Etc" value="reptile">기타</form:option>
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

			<div class="form-group row">
				<div >
					<input type="submit" class="btn btn-primary" onclick="getform:form:selectedValue()"/>
				</div>
			</div>
		</form:form>
    </div>

	<%@ include file="../module/footer.jsp" %>
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

	document.getElementById('dogtype').addEventListener('change', function (){
	    var selectedValue = this.value;
	    if(selectedValue === 'Etc') {
	        selectedValue = prompt("기타 종류를 입력해주세요.");
	    }
		document.getElementById('petTypeHidden').value = selectedValue;
	});
	document.getElementById('cattype').addEventListener('change', function (){
	    var selectedValue = this.value;
	    if(selectedValue === 'Etc') {
	        selectedValue = prompt("기타 종류를 입력해주세요.");
	    }
		document.getElementById('petTypeHidden').value = selectedValue;
	});
	document.getElementById('birdtype').addEventListener('change', function (){
	    var selectedValue = this.value;
	    if(selectedValue === 'Etc') {
	        selectedValue = prompt("기타 종류를 입력해주세요.");
	    }
		document.getElementById('petTypeHidden').value = selectedValue;
	});
	document.getElementById('rabbittype').addEventListener('change', function (){
	    var selectedValue = this.value;
	    if(selectedValue === 'Etc') {
	        selectedValue = prompt("기타 종류를 입력해주세요.");
	    }
		document.getElementById('petTypeHidden').value = selectedValue;
	});
	document.getElementById('guineapigtype').addEventListener('change', function (){
	    var selectedValue = this.value;
	    if(selectedValue === 'Etc') {
	        selectedValue = prompt("기타 종류를 입력해주세요.");
	    }
		document.getElementById('petTypeHidden').value = selectedValue;
	});
	document.getElementById('reptiletype').addEventListener('change', function (){
	    var selectedValue = this.value;
	    if(selectedValue === 'Etc') {
	        selectedValue = prompt("기타 종류를 입력해주세요.");
	    }
		document.getElementById('petTypeHidden').value = selectedValue;
	});


</script>
</html>