 <!-- 2018.10.08 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Teachers Written Apology List</title>
		
		<!-- Bootstrap core CSS-->
		<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<link href="/resources/vendor/bootstrap/js/bootstrap.js" rel="stylesheet">
		
		<!-- Custom fonts for this template-->
		<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		
		<!-- Page level plugin CSS-->
		<link href="/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
		
		<!-- Custom styles for this template-->
		<link href="/resources/css/sb-admin.css" rel="stylesheet">
		
	</head>
	<body id="page-top">
	
		<jsp:include page="/WEB-INF/views/module/nav.jsp"/>
	
		<div id="wrapper">
	
			<jsp:include page="/WEB-INF/views/module/sidebar.jsp"/>
	
			<div id="content-wrapper">
	
				<div class="container-fluid">
				<!-- 여기에 내용이 담긴다 -->
				
				<h1>시말서 리스트</h1>
				<br><br>
				<table border="">
			        <thead>
			            <tr>
			            	<td>부서 명</td>
							<td>직급 명</td>
							<td>성명</td>
							<td>시말서 제출여부</td>
							<td>등록일자</td>
			            </tr>
			        </thead>
			        <tbody>
	            		<c:forEach var="row" items="${pologyList}">
			                <tr>
			                    <td>${row.deptNameKorean }</td>
			                    <td>${row.rankNameKorean }</td>
			                    <td>${row.humanName }</td>
			                     <c:choose>
										<c:when test="${row.apologyWhetherToSubmit eq 'C' }" >
											<td>확인중</td>
										</c:when>
										
										<c:when test="${row.apologyWhetherToSubmit eq 'Y' }" >
											<td>승인완료</td>
										</c:when>
										
										<c:when test="${row.apologyWhetherToSubmit eq 'N' }" >
											<td>승인불가</td>
										</c:when>
									</c:choose>
			                    <td>${row.teachersWrittenApologyRegistrationDay }</td>
			                </tr>
			            </c:forEach>
	        		</tbody>
	    		</table>
				
				</div>
				<!-- /.container-fluid -->
	
				<!-- Sticky Footer -->
				<footer class="sticky-footer">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright © Haksa 2018</span>
						</div>
					</div>
				</footer>
	
			</div>
			<!-- /.content-wrapper -->
	
		</div>
		<!-- /#wrapper -->
	
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> 
			<i class="fas fa-angle-up"></i>
		</a>
	
		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
				
					<div class="modal-header">
					
						<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
						
						<button class="close" type="button" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">Ã</span>
						</button>
					</div>
					
					<div class="modal-body">
						Select "Logout" below if you are ready to end your current session.
					</div>
					
					<div class="modal-footer">
					
						<button class="btn btn-secondary" type="button" data-dismiss="modal">
							Cancel
						</button>
						
						<a class="btn btn-primary" href="login.html">
							Logout
						</a>
					</div>
				</div>
			</div>
		</div>
	
		<!-- Bootstrap core JavaScript-->
		<script src="/resources/vendor/jquery/jquery.min.js"></script>
		<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
		<!-- Core plugin JavaScript-->
		<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	
		<!-- Page level plugin JavaScript-->
		<script src="/resources/vendor/chart.js/Chart.min.js"></script>
		<script src="/resources/vendor/datatables/jquery.dataTables.js"></script>
		<script src="/resources/vendor/datatables/dataTables.bootstrap4.js"></script>
	
		<!-- Custom scripts for all pages-->
		<script src="/resources/js/sb-admin.min.js"></script>
	
		<!-- Demo scripts for this page-->
		<script src="/resources/js/demo/datatables-demo.js"></script>
		<script src="/resources/js/demo/chart-area-demo.js"></script>
	</body>
</html>