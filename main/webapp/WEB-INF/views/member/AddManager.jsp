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

 <%@  include file="../module/header.jsp" %>
	<div class="container-fluid page-body-wrapper">
 		<%@  include file="../module/leftheader.jsp" %>
     
	          <div class="content-wrapper d-flex align-items-center auth px-0">
				<div class="row w-100 mx-0">
		            <div class="col-lg-6 mx-auto">
		                <div class="auth-form-light text-left py-5 px-4 px-sm-5">
		                    <div class="brand-logo">
		                        <img src="resources/images/logo.jpg" alt="logo">
		                    </div>
		     				<form:form modelAttribute="productMember" action="./productmanager?${ _csrf.parameterName }=${ _csrf.token }" method="post" enctype="multipart/form-data">
		                        <div class="form-group">
		                        	<label for="exampleInputUsername1">아이디</label>
		                            <form:input class="form-control form-control-lg" type="text" path="personId"  placeholder="아이디" />
		                        </div>
		                        <div class="form-group">
		                        	<label for="exampleInputUsername1">비밀번호</label>
		                            <form:input class="form-control form-control-lg" type="password" path="personPw"  placeholder="비밀번호"/>
		                        </div>
		                        <div class="form-group">
		                        	<label for="exampleInputUsername1">이메일</label>
		                            <form:input class="form-control form-control-lg" type="email" path="personEmail"  placeholder="이메일"/>
		                        </div>
		                        <div class="form-group">
		                        	<label for="exampleInputUsername1">이름</label>
		                            <form:input class="form-control form-control-lg" type="text" path="personName"  placeholder="이름"/>
		                        </div>
		                        <div class="form-group">
		                        	<label for="exampleInputUsername1">생년월일</label>
		                            <form:input class="form-control form-control-lg" type="text" path="personBirth"  placeholder="생년월일"/>
		                        </div>
		                        <div class="form-group">
		                        	<label for="exampleInputUsername1">주소</label>
		                            <form:input class="form-control form-control-lg" type="text" path="personAddress" placeholder="주소"/>
		                        </div>
		                        <div class="form-group">
		                        	<label for="exampleInputUsername1">전화번호</label>
		                            <form:input class="form-control form-control-lg" type="text" path="personPhone" placeholder="전화번호"/>
		                        </div>
		                        <div class="form-group">
		                        	<label for="exampleInputUsername1">성별</label>
		                            <form:radiobutton path="personSex" value="남자" class="col-sm-1"/>남성
						            <form:radiobutton path="personSex" value="여자" class="col-sm-1"/>여성
		                        </div>
		                        <div class="form-group">
		                        	<label for="exampleInputUsername1">회사명</label>
		                            <form:input class="form-control form-control-lg" type="text" path="companyName" placeholder="회사명"/>
		                        </div>
		                        <div class="form-group">
		                        	<label for="exampleInputUsername1">회사주소</label>
		                            <form:input class="form-control form-control-lg" type="text" path="companyAddress" placeholder="회사주소"/>
		                        </div>
		                        <div class="form-group">
		                        	<label for="exampleInputUsername1">회사번호</label>
		                   	    	<form:input class="form-control form-control-lg" type="text" path="companyPhone" placeholder="회사번호"/>
		                        </div>
			                    <div class="form-group">
			                      <label>사업자 등록증</label>
			                      <div class="input-group col-xs-12">
			                      	<input type="file" name="img[]" class="file-upload-default">
			                        <input type="file" class="form-control file-upload-info" placeholder="Upload Image">
			                       </div>
			                    </div>
		                        <div class="mt-3">
		                            <input type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" value="회원가입" />
		                        </div>
		                    </form:form>
		                </div>
		            </div>
		        </div>
	        </div>
		</div>
	</div>
	<%@ include file="../module/footer.jsp" %>
  
  <%-- <!-- container-scroller -->
 
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
            <label class="col-sm-2 control-label"> 생년월일 </label>  
            <div class="col-4">
                <form:input type="Date" path="personBirth" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> 집주소 </label>  
            <div class="col-4">
                <form:input type="text" path="personAddress" class="control-label"/>
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
                <input type="file" name="s_file" class="control-label" required="required"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 ccontrol-label"> 성별 </label>
			<div class="col-4">
				<form:radiobutton path="personSex" value="남자" class="col-sm-1"/>남자
				<form:radiobutton path="personSex" value="여자" class="ml-3"/>여자
			</div>
		</div>
        <%
        	String type = request.getParameter("type");
            System.out.println("manager 회원가입 jsp페이지 : " + type);
            session.setAttribute("type", type);
        %>
        
        <div class="form-group row">
            <input type="submit" class="btn btn-primary"/>
        </div> 
		</div>
    </fieldset>
    </form:form>
     --%>
    

</body>
<!-- js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function idDuplicateCheck(event){
	 event.preventDefault();
	 
	var userId = document.getElementById("userId").value;
	console.log("userId");
	
	if(userId === "") {
		alert("아이디를 입력해주세요");
		return;
	}
	
	$.ajax({
		type: 'get',
		url: '/123team/managerlogin',
		contentType: 'application/json;',
		dataType: 'text',
		data: {
			"userId":userId, 
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