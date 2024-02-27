<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>소비자 회원가입</title>
</head>
<body>
<<<<<<< HEAD
    <%@  include file="../module/headerdark.jsp" %>
=======
  <!-- header start -->
   <nav class="navbar navbar-expand navbar-dark bg-dark">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/123team">Home</a>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="/123team/hospital">병원</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/products">동물상품</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/123team/Fboards">게시판</a>
                </li>
 				<c:choose>             
	            <c:when test="${not empty managerId }">
	                	
	                <li class="nav-item">
	                  <a class="nav-link" href="/123team/managerlogin/manager_page?personId=${managerId.personId}">마이페이지</a>
	                </li>
	                
	            </c:when>
	               	<c:otherwise>
		                <li class="nav-item">
		                  <a class="nav-link" href="/123team/login">로그인</a>
		                </li>
	                </c:otherwise>
                </c:choose>
                
            </div>
        </div>
    </nav>
<!-- header end -->
>>>>>>> fa9e400f8ceb5c1826ec622c185d981968432be3
	
    <div class="jumbotron">
        <div class="container">
            <legend><h2>회원가입 페이지 입니다.</h2></legend>
        </div>
    </div>
    
	<div class="container">
	<form:form modelAttribute="Newmember" action="./add?${ _csrf.parameterName }=${ _csrf.token }" method="post">
	<fieldset> 

		<div class="form-group row">
            <label id="id" class="col-sm-2 control-label"> 아이디  </label> 
			<div class="col-sm-2">	
                <form:input id="userId" type="text" path="personId" class="control-label"/>
            </div>
            
            <div id="confirm" class="col-md-3"> 
    			<button onclick="idDuplicateCheck(event)" id="idConfirmBtn" class="btn btn-secondary">중복확인</button>
 			</div>	
		</div>


		<div class="form-group row"> 
			<label class="col-sm-2 control-label"> 비밀번호 </label>
            <div class="col-4">
				<form:input type="password" path="personPw" class="control-label"/>
            </div>
		</div>

		<div class="form-group row"> 
			<label class="col-sm-2 control-label"> 이메일 </label>
            <div class="col-4">
				<form:input type="email" path="personEmail" class="control-label" />
			</div>
		</div>

		<div class="form-group row"> 
			<label class="col-sm-2 control-label">  이름 </label>
            <div class="col-4">
			    <form:input type="text" path="personName" class="control-label"/>
			</div>
		</div>

		<div class="form-group row"> 
           <label class="col-sm-2 control-label">  생년월일 </label>
		   <div class="col-4">
			  <form:input type="text" path="personBirth" class="control-label"/>
			</div>
		</div>

		<div class="form-group row">
			<label class="col-sm-2 control-label"> 주소 </label>
            <div class="col-4">
				<form:input type="text" path="personAddress" class="control-label"/>
			</div>
		</div>

		<div class="form-group row">
            <label class="col-sm-2 control-label"> 전화번호 </label>
			<div class="col-4">
				<form:input type="text" path="personPhone" class="control-label"/>
			</div>
		</div>
		
		<div class="form-group row">
            <label class="col-sm-2 ccontrol-label"> 성별 </label>
			<div class="col-4">
				<form:radiobutton path="personSex" value="남자" class="col-sm-1"/>남자
				<form:radiobutton path="personSex" value="여자" class="ml-3"/>여자
			</div>
		</div>
	
		<div class="form-group row">
			<div class="col-sm-2">
				<input type="submit" class="btn btn-primary" value="회원가입" />
			</div>
		</div>	
	</fieldset>
	</form:form>
	

	<hr>
    </div>
    
    <%@ include file="../module/footer.jsp" %>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
var IdCheck = false;

function idDuplicateCheck(event) {
    event.preventDefault(); // 폼의 기본 동작 방지

    var userId = document.getElementById("userId").value;

    if (userId === "") {
        alert("아이디를 입력해주세요.")
        return;
    }

    $.ajax({
        type: 'get',
        url: './add/join/memberid',
        contentType: 'application/json',
        dataType: 'text',
        data: {
            "userId": userId
        },
        success: function (result) {
            if (result == "true") {
                isIdCheck = true; 
                alert("사용 가능한 아이디 입니다.")
            } else {
                isIdCheck = false;
                alert("이미 사용중인 아이디입니다.")
            }
        },
       		 if(!IdCheck){
	        	alert("아이디 중복은 필수 입니다")
	        	e.preventDefault();
        }
          	 error: function (request, status, error) {
                 console.log(request);
        }
    });
};

</script>
</html>