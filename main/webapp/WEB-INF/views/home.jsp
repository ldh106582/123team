<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<!--  부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/8759f784cf.js" crossorigin="anonymous"></script>
<!-- css -->
<link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/pet/"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/home.css"/>" rel="stylesheet">
<!-- Required meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Skydash Admin</title>
<!-- plugins:css -->
<link href="<c:url value="/resources/css/vendors/feather/feather.css"/>" rel="stylesheet">
<link href="<c:url value="resources/css/vendors/ti-icons/css/themify-icons.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/vendors/css/vendor.bundle.base.css"/>" rel="stylesheet">
<!-- endinject -->
<link href="<c:url value="/resources/css/vendors/datatables.net-bs4/dataTables.bootstrap4.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/vendors/ti-icons/css/themify-icons.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/text/css"/>">
<!-- inject:css -->
<link href="<c:url value="/resources/css/vertical-layout-light/style.css"/>" rel="stylesheet">
<!-- End plugin css for this page -->
<!-- endinject -->
<link href="<c:url value="/resources/css/images/favicon.png"/>" rel="stylesheet">
<link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>

 <div id="header">
		<%@  include file="./module/header.jsp" %>
	</div>
	
    <div class="container-fluid page-body-wrapper">
 <%@  include file="./module/leftheader.jsp" %>
  
   		          <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="row">
                            <!--여기서 복붙 시작-->
                            <div  class="show-gird no-gutters col-md-12">
                                <div id="wrap" class="col-md-12 no-gutters">
                                
                                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
								  <div class="carousel-inner">
								    <div class="carousel-item active">
								      <img src="./resources/images/hospital01.jpg" class="d-block w-100" alt="...">
								    </div>
								    <div class="carousel-item">
								      <img src="./resources/images/hospital02.jpg" class="d-block w-100" alt="...">
								    </div>
								    <div class="carousel-item">
								      <img src="./resources/images/hospital03.jpg" class="d-block w-100" alt="...">
								    </div>
								  </div>
								  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
								    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
								    <span class="sr-only">Previous</span>
								  </a>
								  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
								    <span class="carousel-control-next-icon" aria-hidden="true"></span>
								    <span class="sr-only">Next</span>
								  </a>
								</div>
								                                	
                                    <div class="col-md-12 row no-gutters" style="margin: 0 auto;">
                                        <div class="col-md-9 ">
                                            <div style="border-left: 3px solid red;"> <h4 style="margin-left: 2%;"> 우리 홈페이지 현황</h4>

                                            </div>
                                            <br>
                                            
                                            <h5 style="border-left: 3px solid #FF7EA0; margin-bottom: 3%;"><span class="ml-4">best 별점 병원</span></h5>
                                            
	                                            <div class="col-md-12 row card-group no-gutters" style="margin-bottom: 3%;">
	                                            <c:forEach items="${hospitals}" var="hospital">
	                                                
	                                                <div class="col-md-4 row no-gutters card">
	                                                    <div class="col-md-12 card-body no-gutters">
															<c:choose>
															    <c:when test="${not empty hospital.image}">
															        <img class="col-md-12" src="<c:url value='/resources/images/${hospital.image}'/>" height="250" width="150" alt="병원이미지">
															    </c:when>
															    <c:otherwise>
															        <img class="col-md-12" src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg" alt="병원이미지" height="250" width="150" border="0">
															    </c:otherwise>
															</c:choose>
															
	                                                        <p class="card-title" style="margin-top: 7%;">병원명 : ${hospital.name}</p>
	                                                        <p class="card-text" style="margin-top: 4%;">병원안내 : ${hospital.description}</p>
	                                                    </div>
                                                      	<a href="hospitals/hospital?hid=${hospital.hid}" class="btn btn-success">병원 상세보기</a>
	                                                </div>
	                                            </c:forEach>
	                                            
                    						  	</div>
                    						  	
                                            <h5 style="border-left: 3px solid #FFA07A; margin-bottom: 3%;"><span class="ml-4">best 별점 상품</span></h5>
                    
	                                            <div class="col-md-12 row card-group no-gutters" style="margin-bottom: 3%;">
	                                            <c:forEach items="${hospitals}" var="hospital">
	                                                
	                                                <div class="col-md-4 row no-gutters card">
	                                                    <div class="col-md-12 card-body no-gutters">
															<c:choose>
															    <c:when test="${not empty hospital.image}">
															        <img class="col-md-12" src="<c:url value='/resources/images/${hospital.image}'/>" height="250" width="150" alt="병원이미지">
															    </c:when>
															    <c:otherwise>
															        <img class="col-md-12" src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg" alt="병원이미지" height="250" width="150" border="0">
															    </c:otherwise>
															</c:choose>
															
	                                                        <p class="card-title" style="margin-top: 7%;">병원명 : ${hospital.name}</p>
	                                                        <p class="card-text" style="margin-top: 4%;">병원안내 : ${hospital.description}</p>
	                                                    </div>
                                                      	<a href="hospitals/hospital?hid=${hospital.hid}" class="btn btn-success">병원 상세보기</a>
	                                                </div>
	                                            </c:forEach>
	                                            
                    						  	</div>
                    
                                            <h5 style="border-left: 3px solid #FFCD63; margin-bottom: 3%;"> <span class="ml-4">체험단 현황</span></h5>
                    
	                                            <div class="col-md-12 row card-group no-gutters" style="margin-bottom: 3%;">
	                                            <c:forEach items="${hospitals}" var="hospital">
	                                                
	                                                <div class="col-md-4 row no-gutters card">
	                                                    <div class="col-md-12 card-body no-gutters">
															<c:choose>
															    <c:when test="${not empty hospital.image}">
															        <img class="col-md-12" src="<c:url value='/resources/images/${hospital.image}'/>" height="250" width="150" alt="병원이미지">
															    </c:when>
															    <c:otherwise>
															        <img class="col-md-12" src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg" alt="병원이미지" height="250" width="150" border="0">
															    </c:otherwise>
															</c:choose>
															
	                                                        <p class="card-title" style="margin-top: 7%;">병원명 : ${hospital.name}</p>
	                                                        <p class="card-text" style="margin-top: 4%;">병원안내 : ${hospital.description}</p>
	                                                    </div>
                                                      	<a href="hospitals/hospital?hid=${hospital.hid}" class="btn btn-success">병원 상세보기</a>
	                                                </div>
	                                            </c:forEach>
	                                            
                    						  	</div>
                                        </div>
                        
                                        <div class="col-md-3 no-gutters">
                                            <div class="no-gutters col-md-12" style="border-left: 3px solid red;"><h4 class="ml-3" >공지사항 </h4>    
                                            </div>
                                            <br>   
                                            <c:forEach items="${hospitals}" var="hospital">
	                                            <div class="card col-md-12 no-gutters" style="max-width: 540px;">
	                                                <div class="col-md-12 row no-gutters border border-dark">
													<c:choose>
													   <c:when test="${not empty hospital.image}">
														   <img class="col-md-4" src="<c:url value='/resources/images/${hospital.image}'/>" height="150" width="150" alt="병원이미지">
													    </c:when>
														<c:otherwise>
														    <img class="col-md-4" src="https://i.ibb.co/gdq8PKg/pexels-tom-fisk-1692693.jpg" alt="병원이미지" height="150" width="150" border="0">
														</c:otherwise>
													</c:choose>
	                                                  	<div class="col-md-8 border border-dark">
	                                                        <div class="card-body">
	                                                            <p class="card-text">공지사항 제목 : </p>
	                                                            <a href="hospitals/hospital?hid=${hospital.hid}" class="btn btn-success border rounded-pill" style="font-size: 75%; height: 10%; width: 40%;"> 상세보기</a>
	                                                        </div>
		                                                 </div>
	                                                </div>
	                                            </div>
	                                        </c:forEach> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--여기서 복붙 끝-->
                        </div>
                    </div>
                </div>
             </div>
                        
   <!--끝 -->
	 
	<%@ include file="./module/footer.jsp" %> 
  
  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="vendors/chart.js/Chart.min.js"></script>
  <script src="vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="js/dataTables.select.min.js"></script>

  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <script src="js/Chart.roundedBarCharts.js"></script>
  <!-- End custom js for this page-->

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
</body>
<script src="/resources/js/hospitals.js"></script>
</html>
<!-- 2024-03-11  merge 완료 -->