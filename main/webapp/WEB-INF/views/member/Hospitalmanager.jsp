<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.springmvc.domain.*" %>
<%@ page import="com.springmvc.controller.*" %>
<!DOCTYPE html>
<html>
<head>
	<!-- ��Ʈ��Ʈ�� -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="EUC-KR">
<title>���������� ȸ������ ������</title>
</head>
<body>

	 <%@  include file="../module/headerdark.jsp" %>

    <div class="jumbotron">
        <div class="container">
            <legend id="id"><h2>���������� ȸ������ �������Դϴ�.</h2></legend>
        </div>
    </div>
    <div class="container">
     <form:form modelAttribute="hospitalMember" action="./productmanager?${ _csrf.parameterName }=${ _csrf.token }" method="post" enctype="multipart/form-data">
     <fieldset>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> ���̵� </label>  
            <div class="col-3">
                <form:input id="userId" type="text" path="personId" class="control-label"/>
            </div>
			<div id="confirm" class="col-2"> 
			    <button onclick="idDuplicateCheck(event)" id="idConfirmBtn" class="btn btn-secondary">�ߺ�Ȯ��</button>
			</div>
        </div>    
        <div class="form-group row">
            <label class="col-sm-2 control-label"> ��й�ȣ </label>  
            <div class="col-4">
                <form:input type="password" path="personPw" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
             <label class="col-sm-2 control-label"> �̸��� </label>  
            <div class="col-4">
                <form:input type="text" path="personEmail" class="control-label" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> �̸� </label>  
            <div class="col-4">
                <form:input type="text" path="personName" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> ���ι�ȣ </label>  
            <div class="col-4">
                <form:input type="text" path="personPhone" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> ����������  </label>  
            <div class="col-4">
                <form:input type="text" path="hospitalName" class="control-label"/>
            </div>
        </div>

        <div class="form-group row">
              <label class="col-sm-2 control-label"> �����ּ� </label>  
            <div class="col-4">
                <form:input type="text" path="hospitalAddress" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> ������ȣ </label>  
            <div class="col-4">
                <form:input type="text" path="hospitalPhone" class="control-label"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> ����ڵ���� </label>  
            <div class="col-4">
                <input type="file" name="hospitalregistrationimg" class="control-label" required="required"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label"> �ǻ������ </label>  
            <div class="col-4">
                <input type="file" name="hopitalliLicenseimg" class="control-label" required="required"/>
            </div>
        </div>
        <%
        
        String type = request.getParameter("type");
        Manager user = Manager.getInstance();
        System.out.println("jsp������ : " + type);
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
</html>