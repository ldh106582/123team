<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<script type="text/javascript">
function changed(bid,registday) {
	var container = document.getElementById("container"+bid);
	var delp = document.getElementById("willdelete"+bid);
	var addp = document.getElementById("addp"+bid);
	
	console.log(bid);
	container.removeChild(delp);
	container.removeChild(addp);
	
	var form = document.createElement("form");
	form.setAttribute("action","/123team/hospitals/editbook");
	form.setAttribute("method","POST");
	
	var inputT = document.createElement("input");
	inputT.setAttribute("type","hidden");
	inputT.setAttribute("name","bid");
	inputT.setAttribute("value",bid);
	
	var inputD = document.createElement("input");
	inputD.setAttribute("type","datetime-local");
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%@  include file="../module/headerinfo.jsp" %>
 <a href="/123team/hospitals">병원목록으로 돌아가기</a>
 <c:forEach items="${booklist}" var="book">
 <div id="container${book.bid}">
 <p>
 	병원이름 : ${book.hospitalName}
 	<p>
 	동물 : ${book.petName}
 	<p>
 	설명 : ${book.context}
 	<p>
 	처리 상태 : ${book.state}
 	<p id="willdelete${book.bid}">예약일 : ${book.registDay}</p>
 	<button onclick="changed('${book.bid}','${book.registDay}')" id="addp${book.bid}" >날짜 변경</button>
 </div>
 	<a href="deletebook?bid=${book.bid}">예약취소</a>
 </c:forEach>
</body>
</html>