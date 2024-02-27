<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
<script type="text/javascript">
	function changed(eid,registday) {
			var container = document.getElementById("container"+eid);
			var delp = document.getElementById("willdelete"+eid);
			var addp = document.getElementById("addp"+eid);
			
			console.log(eid);
			container.removeChild(delp);
			container.removeChild(addp);
			
			var form = document.createElement("form");
			form.setAttribute("action","/123team/ENboards/updateapp");
			form.setAttribute("method","POST");
			
			var inputT = document.createElement("input");
			inputT.setAttribute("type","hidden");
			inputT.setAttribute("name","eid");
			inputT.setAttribute("value",eid);
			
			var inputD = document.createElement("input");
			inputD.setAttribute("type","date");
			inputD.setAttribute("name","registDay");
			inputD.setAttribute("value",registday);
			
			var inputO = document.createElement("input");
			inputO.setAttribute("type","hidden");
			inputO.setAttribute("name","originday");
			inputO.setAttribute("value",registday);
			
			var inputs = document.createElement("input");
			inputs.setAttribute("type","submit");
			inputs.setAttribute("value","변경하기");
			
			var button = document.createElement("button");
			button.setAttribute("onclick",cancelForm());
			var buttonText = document.createTextNode("취소");
			button.appendChild(buttonText);
			
			form.appendChild(inputT);
			form.appendChild(inputD);
			form.appendChild(inputs);
			form.appendChild(inputO);
			form.appendChild(button);
			
			container.appendChild(form);
	}
	function cancelForm() {
         var form = document.querySelector("form");
         if (form) {
             form.remove();
         }
     }
</script>
</head>
<body>

 <%@  include file="../module/headersuccess.jsp" %>
 
 
 <div class="container">
    <h2 class="my-3">내 체험단 예약현황</h2>
    <a href="/123team/ENboards" class="btn btn-primary mb-3">체험단 공고글 목록으로 돌아가기</a>

    <c:forEach items="${applist}" var="app">
        <div class="card mb-3">
            <div class="card-body" id="container${app.eid}">
                <h5 class="card-title">${app.title}</h5>
                <p class="card-text">${app.experience}</p>
                <p class="card-text">${app.animal}</p>
                <p class="card-text">${app.state}</p>
                <p class="card-text" id="willdelete${app.eid}">예약일 : <span >${app.registDay}</span></p>
              	<button class="btn btn-primary" onclick="changed('${app.eid}','${app.registDay}')" id="addp${app.eid}" >날짜 변경</button>
            </div>
            <div class="card-body" >
            <a href="deleteapp?eid=${app.eid}" class="btn btn-danger">예약 삭제</a>
            </div>
            
        </div>
    </c:forEach>
</div>
 <%-- 
	<h2>내 체험단 예약현황</h2>
	<a href="/123team/ENboards">체험단 공고글 목록으로 돌아가기</a>
	<p>
	-------------------------------------------------------------------------------
	<c:forEach items="${applist}" var="app">
			<p>
			체험 제목 :${app.title}
			<p>
			체험 :${app.experience}
			<p>
			동물 :${app.animal}
			<p>
			처리상태 :${app.state}
			
		<div id="container">
			<b id="willdelete${app.eid}">예약일 : ${app.registDay}</b>
			<button onclick="changed('${app.eid}','${app.registDay}')" id="addp${app.eid}" >날짜 변경</button>
		</div>
		<p>
		<a href="deleteapp?eid=${app.eid}"><button>예약 삭제</button></a>
		<p>
		-------------------------------------------------------------------------------
	</c:forEach>
	 --%>
	
</body>
</html>