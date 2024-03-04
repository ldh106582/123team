<%@page import="com.springmvc.domain.Pet"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/123team/resources/css/Mypage.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%@  include file="../module/headerinfo.jsp" %>
 

 <div id="wrap" class="wrap naverid ">
		<header class="header" role="banner">
		    <div class="header_subindex">
		        <!--로고/Mypage-->
		        <div class="gnb_area">
		            <a href="#" class="text-decoration-none" >
		                <h1 class="">예약정보확인</h2>
		            </a>
		        </div>
		    </div>
		    <!--프로필-->
		    <div class="profile_area">
		        <div class="profile_inner">
		        	<a href="#" onclick="changeImage()" class="photo">
			            <img src="https://static.nid.naver.com/images/web/user/default.png" width="84" height="84" alt="프로필 이미지">
			            <span class="photo_edit"></span>
		            </a>
		            <div class="profile">
		                <p class="useid">${ id.personId }</p>
		                <p class="usemail">${id.personEmail }</p>
		            </div>
		        </div>
		    </div>
		    <div id="headerLeft" class="header_left" aria-hidden="false">
		        <ul class="left_menu" role="menu">
		            <li>
		               <a href="#" class="left_item" role="menuitem">
		                   <div class="menu_text">내정보</div>
		               </a>
		            </li>
		            <li>
		               <a href="./login/logout" class="left_item" role="menuitem" >
		                   <div class="menu_text ">로그아웃</div>
		               </a>
		            </li>
		        </ul>
		    </div>
		</header>
		
		 <div id="container" class="container ">
	        <!-- container -->
	        <div id="content" class="content">
	            <div class="subindex_wrap" role="main">
	                <div id="headerTop" class="path_area" aria-hidden="false"></div>
	            </div>    
	            <c:forEach items="${booklist}" var="book">            
			        <!--병원 예약 정보-->
			        <div class="subindex_item">
			            <div class="head_title">
                         <h2 class="subindex_title">${book.hospitalName}</h2>
                         <div class="title_link">
                             <button class="text" onclick="editform('${book.bid}','${book.registDay}')">날짜변경</button>
                             <a href="deletebook?bid=${book.bid}"><span class="text">예약취소</span></a>
                          </div>
                       </div>
                       <script type="text/javascript">
   					
                       function editform(bid, originDay) {
                    	   var container = document.getElementById("container" + bid);
                    	   var delp = document.getElementById("willdelete" + bid);

                    	   container.removeChild(delp);

                    	   var form = document.createElement("form");
                    	   form.setAttribute("action", "editbook");
                    	   form.setAttribute("method", "POST");

                    	   var inputT = document.createElement("input");
                    	   inputT.setAttribute("type", "hidden");
                    	   inputT.setAttribute("name", "bid");
                    	   inputT.setAttribute("value", bid);

                    	   var inputD = document.createElement("input");
                    	   inputD.setAttribute("type", "datetime-local");
                    	   inputD.setAttribute("name", "registDay");
                    	   inputD.setAttribute("value", originDay);
                    	   inputD.setAttribute("required", true);

                    	   var submitButton = document.createElement("input");
                    	   submitButton.setAttribute("type", "submit");
                    	   submitButton.setAttribute("value", "변경완료");
                    	   submitButton.setAttribute("class", "cancel-button");
                    	   var cancelButton = document.createElement("button");
                    	   var cancelButtonText = document.createTextNode("취소");
                    	   cancelButton.appendChild(cancelButtonText);

                    	   cancelButton.addEventListener('click', function(event) {
                    	     event.preventDefault();
                    	     container.removeChild(form);
                    	     container.appendChild(delp);
                    	   });

                    	   form.appendChild(inputT);
                    	   form.appendChild(inputD);
                    	   
                    	   var buttonContainer = document.createElement("div");
                    	   buttonContainer.setAttribute("class", "button-container");
                    	   buttonContainer.appendChild(submitButton);
                    	   buttonContainer.appendChild(cancelButton);
                    	   
                    	   form.appendChild(buttonContainer);
                    	   container.appendChild(form);
                    	 }
                       </script>
<style>
			            .button-container {
  display: flex;
}

.cancel-button {
  margin-right: 10px;
}
</style>
			            <div class="subindex_greenbox">
			                <ul class="subindex_row" >
			                    <li>
			                        <div class="row_item other">
			                            <a href="" class="text-decoration-none" id="container${book.bid}"><span class="item_text" id="willdelete${book.bid}">예약일 : ${book.registDay}</span></a>
			                        </div>  
			                    </li>
	                            <li>
			                        <div class="row_item other">
			                            <a href="" class="text-decoration-none"><span class="item_text">동물ID : ${book.petId}</span></a>
			                        </div>  
			                    </li>
			                    <li>
			                        <div class="row_item other">
			                            <a href="" class="text-decoration-none"><span class="item_text"> 내용 : ${book.context}</span></a>
			                        </div>  
			                    </li>
			                    <li>
			                        <div class="row_item other">
			                            <a href="" class="text-decoration-none"><span class="item_text">처리현왕 : ${book.state}</span></a>
			                        </div>  
			                    </li>
			                </ul>
			                
			            </div>
			        </div>
		        </c:forEach> 
			</div>
		</div>
	</div>  
	
	<%@ include file="../module/footer.jsp" %>
</body>
</html>