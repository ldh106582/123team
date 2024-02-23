<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@ page import="java.sql.*" %>
<!-- css -->
<html>
<head>
<!--  부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/8759f784cf.js" crossorigin="anonymous"></script>
<!-- css -->
<link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet">
<!-- 이미지 -->
<link href="<c:url value="/resources/pet/"/>" rel="stylesheet">
<style type="text/css">
	*{
	font-family: 'omyu_pretty';
	background-color()
}

@font-face {
    font-family: 'omyu_pretty';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
</style>
</head>
<body>
	<header class="intro0">
		<nav class="intro1 head navbar navbar-secondary m-0">
			<div class="intro1">
				<h1 class="text-center">반려동물과 함께하는 즐거운 공간</h1> 
			</div>
		</nav>
		
		<div class="intro2">
			<div class="intro3">
				<div class="intro4 text-center border border-dark">

					<div class="intro5">
						<h4><가족과 같은 반려 동물과 함께 하는 공간입니다.></h4>
						<br><p> <i class="fa-regular fa-user"></i> 병원예약, 반려동물 상품구매, 동물관련 커뮤니케이션, 동물 체험활동을 할 수 있는 공간입니다.
						<p> <i class="fa-solid fa-shield-dog"></i> 나의 반려동물이 어떤 진료를 받았고, 예방접종 내역, 몸무게, 등을 손쉽게 파악할 수 있는 공간이 마련되어 있습니다.
					</div>
					
					<div class="intro6">
						<div class="intro7">
							<a href="ENboards"> 체험단 &raquo;</a>
						</div>
						<div class="intro7">
							<a href="#"> 동물카드 &raquo;</a>
						</div>
					</div>

				</div>

				<div class="intro8">
					<div class="intro9">
						<div class="intro10 border border-dark btn btn-primary p-3 ">	
							<i class="fa-regular fa-hospital"></i>
							<a href="./hospital" class=" justify-center text-wrap text-white">병원 &raquo;</a>
						</div>
						<div class="intro10 border border-dark btn btn-primary p-3">
							<i class="fa-sharp fa-solid fa-gifts"></i>
							<a href="products" class="justify-center text-white">동물상품 &raquo;</a>
						</div>
					</div>
					
					<div class="intro9">
						<div class="intro10 border border-dark btn btn-primary p-3">
							<i class="fa-solid fa-clipboard-user"></i>
							<a href="Fboards" class="justify-center text-white">게시판 &raquo;</a>
						</div>
						<div class="intro10 border border-dark btn btn-primary p-3">
							<i class="fa-solid fa-right-to-bracket"></i>
							<a href="./login" class=" justify-center text-white">로그인 &raquo;</a>
						</div>
					</div>
				</div>
				<div class="intro11">
					<div class="intro12">
						<div class="intro10 border border-dark btn btn-primary p-3">
							<i class="fa-solid fa-clipboard-user"></i>
							<a href="/123team/Nboards" class="justify-center text-white">공지사항 &raquo;</a>
						</div>
						<p>
						<%
							Connection conn = null;
						   	Statement stmt = null;
						  	ResultSet rs = null;
						   
						   try {
						      // JDBC 드라이버를 로드합니다.
						      Class.forName("com.mysql.jdbc.Driver");
						      
						      // DB에 연결합니다.
						      String url = "jdbc:mysql://localhost:3306/123team_db";
						      String username = "root";
						      String password = "1234";
						      conn = DriverManager.getConnection(url, username, password);
						      
						      // SQL 쿼리를 실행합니다.
						      String sql = "SELECT * FROM NBoard";
						      stmt = conn.createStatement();
						      rs = stmt.executeQuery(sql);
						      int i = 1;
						      // 결과를 처리합니다.
						      while (rs.next()) {
						         // 각 행의 데이터를 가져옵니다.
						         
						         String title = rs.getString(3);
						         int hit = rs.getInt(4);
						         String registDay = rs.getString(5);
						         String boardId = rs.getString(6);
						         
						         request.setAttribute("title", title);
						         request.setAttribute("hit", hit);
						         request.setAttribute("registDay", registDay);
						         request.setAttribute("boardId", boardId);
						         request.setAttribute("num", i);
						         i++;
						         if(i==7){
						        	 break;
						         }
						 %>
						 		<div class="border border-dark" >
						 			<a href="Nboards/Nboard?boardId=${boardId}">${num} 제목 : ${title} 조회수 : ${hit} 등록일 : ${registDay}</a>
						 		</div>
						<%
		
						      }
						   } catch (Exception e) {
						      e.printStackTrace();
						   } finally {
						      // 사용한 자원을 정리합니다.
						      if (rs != null) {
						         try { rs.close(); } catch (SQLException e) { }
						      }
						      if (stmt != null) {
						         try { stmt.close(); } catch (SQLException e) { }
						      }
						      if (conn != null) {
						         try { conn.close(); } catch (SQLException e) { }
						      }
						   }
						%>
					</div>
				</div>
			</div>
		</div>
	</header>
</body>
</html>
