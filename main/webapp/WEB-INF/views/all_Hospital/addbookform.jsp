<%@page import="com.springmvc.domain.Pet"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		
 	<%
		List<Pet> petlist = (List<Pet>) session.getAttribute("petName");
	%>
	 <%@  include file="../module/header.jsp" %>
	      <!-- partial -->
    	<%@  include file="../module/leftheader.jsp"%>
   
            <div class="content-wrapper d-flex align-items-center auth px-0">
                <div class="row w-100 mx-0">
                   <div class="col-lg-6 mx-auto">
                      <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                         <div class="brand-logo">
                             <img src="resources/images/logo.jpg" alt="logo">
                         </div>
                         <form:form modelAttribute="booking" method="POST">
                            <input type="hidden" name="hospitalName" value="${hospital.name}">
                            <input type="hidden" name="hid" value="${hospital.hid}">
                            <input type="hidden" name="mid" value="${hospital.personId}">
                            <div class="form-group">
                                예약가능시간 :  <form:input class="form-control form-control-lg" type="text" path="registDay" value="${hospital.runtime}"  />
                            </div>
                            <div class="form-group">
                                예약시간 : <input class="form-control form-control-lg" type="datetime-local" name="registDay" path="registDay"/>
                            </div>
                            <div class="form-group">
                              진료시 특이사항 : <form:input type="text" path="context" class="form-control form-control-lg" />
                            </div>
                            <div class="mt-3">
                                동물 :
                                <% 
                                    for(int i=0;i<petlist.size();i++){
                                        request.setAttribute("name", petlist.get(i).getPetName());
                                        request.setAttribute("petId", petlist.get(i).getPetId());
                                        %>
                                        ${name} <form:checkbox value="${petId}" path="petId"/>
                                <%
                                    }
                                %>
                                <input type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" value="예약하기" id="login"/>
                              </div>
                            <div class="text-center mt-4 font-weight-light">
                         </form:form>
                      </div>
                   </div>
                </div>
             </div>
          </div>
      </div>
  </div>

    
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021.  Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
          </div>
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Distributed by <a href="https://www.themewagon.com/" target="_blank">Themewagon</a></span> 
          </div>
        </footer> 
	
	<div class="container py-5">
    <h1 class="mb-5">예약 페이지</h1>
    <form:form modelAttribute="booking" method="POST">
      <div class="form-group">
        <label>예약 가능 시간</label>
        <p class="form-control-static">${hospital.runtime}</p>
      </div>
      <div class="form-group">
        <label>예약 시간</label>
        <input type="datetime-local" name="registDay" class="form-control">
      </div>
      <div class="form-group">
        <label>설명</label>
        <input type="text" name="context" class="form-control">
      </div>
      <div class="form-group">
        <div>
          <p>
		동물 :
		<% 
			for(int i=0;i<petlist.size();i++){
				request.setAttribute("name", petlist.get(i).getPetName());
				request.setAttribute("petId", petlist.get(i).getPetId());
				%>
				${name} <form:checkbox value="${petId}" path="petId"/>
		<%
			}
		%>
		<p>
        </div>
      </div>
      <input type="hidden" name="hospitalName" value="${hospital.name}">
      <input type="hidden" name="hid" value="${hospital.hid}">
      <input type="hidden" name="mid" value="${hospital.personId}">
      <button type="submit" class="btn btn-primary">예약 완료</button>
    </form:form>
  </div>
  
  <%-- <form:form modelAttribute="booking" method="POST">
		<p>
		예약가능시간 : ${hospital.runtime}
		<p>
		예약시간 : <input type="datetime-local" name="registDay">
		<p>
		설명 : <form:input path="context"/>
		<p>
		동물 :
		<% 
			for(int i=0;i<petlist.size();i++){
				request.setAttribute("name", petlist.get(i).getPetName());
				request.setAttribute("petId", petlist.get(i).getPetId());
				%>
				${name} <form:checkbox value="${petId}" path="petId"/>
		<%
			}
		%>
		<p>
		<input type="hidden" name="hospitalName" value="${hospital.name}">
		<input type="hidden" name="hid" value="${hospital.hid}">
		<input type="hidden" name="mid" value="${hospital.personId}">
		<input type="submit" value="예약완료">
	</form:form> --%>
	
</body>
</html>