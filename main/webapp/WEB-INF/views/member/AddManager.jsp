<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.springmvc.domain.*" %>
<%@ page import="com.springmvc.controller.*" %>
<!DOCTYPE html>
<html>
<head>
	<!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>상품관리자 회원가입 페이지입니다.</title>
</head>
<body>
   <%@  include file="../module/headerdark.jsp" %>

    <div class="jumbotron">
        <div class="container">
            <legend id="id"><h2>상품관리자 회원가입 페이지입니다.</h2></legend>
        </div>
    </div>
    <div class="container">
     <form:form modelAttribute="productMember" action="./productmanager?${ _csrf.parameterName }=${ _csrf.token }" method="post" enctype="multipart/form-data">
     <fieldset>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 아이디 </label>  
            <div class="col-3">
                <form:input id="userId" type="text" path="personId" class="control-label"/>
            </div>
			<div id="confirm" class="col-2"> 
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
                <form:input type="text" path="personEmail" class="control-label" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 이름 </label>  
            <div class="col-4">
                <form:input type="text" path="personName" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 개인번호 </label>  
            <div class="col-4">
                <form:input type="text" path="personPhone" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 회사명  </label>  
            <div class="col-4">
                <form:input type="text" path="companyName" class="control-label"/>
            </div>
        </div>

        <div class="form-group row">
              <label class="col-sm-2 control-label"> 회사주소 </label>  
            <div class="col-4">
                <form:input type="text" path="companyAddress" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 회사번호 </label>  
            <div class="col-4">
                <form:input type="text" path="companyPhone" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 사업자등록증 </label>  
            <div class="col-4">
                <input type="file" name="companyregistrationimg" class="control-label" required="required"/>
            </div>
        </div>
        <%
        
        String type = request.getParameter("type");
        userinfo user = userinfo.getInstance();
        System.out.println("jsp페이지 : " + type);
        session.setAttribute("type", type);
        
        %>
        
        <div class="form-group row">
            <input type="submit" class="btn btn-primary"/>
        </div> 
		</div>
    </fieldset>
    </form:form>
    
    <%@ include file="../module/footer.jsp" %>

</body>
<!-- js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function idDuplicateCheck(event){
	 event.preventDefault();
	 
	var userName = document.getElementById("userId").value;
	
	if(userName === "") {
		alert("아이디를 입력해주세요");
		return;
	}
	
	$.ajax({
		type: 'get',
		url: './join/idcheck',
		contentType: 'application/json;',
		dataType: 'text',
		data: {
			"userId":userName, 
		},
		success : function(result) {
			if(result === "true"){
			isIdCheck = true;
			alert("사용 가능한 아이디 입니다.")
			} else {
				isIdCheck = false;
				alert("이미 사용중인 아이디 입니다.")
			}
		},
		error : function(request, status, error){
			console.log(request);
		}
	});
}
</script>

</html>
