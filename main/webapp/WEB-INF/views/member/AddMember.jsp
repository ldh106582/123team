<%@ page import="com.springmvc.domain.*"%>
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

	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


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
                        <p class="card-title"><b>일반 회원가입</b></p>
                    </div>
                    <form:form modelAttribute="Newmember" action="./add?${ _csrf.parameterName }=${ _csrf.token }" method="post" encType="multipart/form-data">
                        <input type="hidden" name="personAddress" id="fullAddr">
                        <div class="form-group d-flex">
                        <form:input id="personId" class="form-control form-control-lg col-md-8" type="text" path="personId" placeholder="아이디" />
							<a id="userId" onclick="idDuplicateCheck(event)" class="btn btn-outline-primary col-md-3 font-weight-medium auth-form-btn text-center ml-2">중복확인</a>
                        </div>
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="password" path="personPw"  placeholder="비밀번호"/>
                        </div>
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="email" path="personEmail"  placeholder="이메일"/>
                        </div>
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="personName"  placeholder="이름"/>
                        </div>
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="personBirth"  placeholder="생년월일"/>
                        </div>
                        <div class="form-group show-grid r d-flex">
                           <input type="text" id="sample4_postcode" class="form-control form-control-lg col-md-8 mr-3" placeholder="우편번호">
                           <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호" class="btn btn-outline-primary col-md-3 font-weight-medium auth-form-btn text-center">
                        </div>	
                        <div class="form-group">
                            <input type="text" id="sample4_roadAddress" class="form-control form-control-lg col-md-12" placeholder="도로명주소">
                         </div>	

                         <div class="form-group">
                            <input type="text" id="sample4_detailAddress" class="form-control form-control-lg col-md-12" placeholder="상세주소">
                         </div>	
                       
                        <div class="form-group">
                            <form:input class="form-control form-control-lg" type="text" path="personPhone" placeholder="전화번호"/>
                        </div>
                        <div class="form-group">
                            <form:radiobutton path="personSex" value="남자" class="col-sm-1"/>남성
				            <form:radiobutton path="personSex" value="여자" class="col-sm-1"/>여성
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../resources/js/AddMember.js"></script>

</html>
<!-- <div class="form-group col-md-6">
	                        <input type="text" id="sample4_postcode" placeholder="우편번호">
	                        <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						 </div>	
						<div class="form-group">
	                        <input type="text" id="sample4_roadAddress" placeholder="도로명주소">
						 </div>	
						 <div class="form-group">
	                        <input type="text" id="sample4_jibunAddress" placeholder="지번주소">
							<span id="guide" style="color:#999;display:none"></span>
						 </div>	
						 <div class="form-group">
	                        <input type="text" id="sample4_detailAddress" placeholder="상세주소">
						 </div>	
						 <div class="form-group">
	                       <input type="text" id="sample4_extraAddress" placeholder="참고항목">
						 </div>	 -->