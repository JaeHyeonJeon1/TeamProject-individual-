<!-- 2018.10.12 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<!-- 학과별 검색 -->
		<title>department Search</title>
		
		<script src="/resources/vendor/jquery/jquery.js"></script>
		
		<!-- Bootstrap core CSS-->
		<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<link href="/resources/vendor/bootstrap/js/bootstrap.js" rel="stylesheet">
		
		<!-- Custom fonts for this template-->
		<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		
		<!-- Page level plugin CSS-->
		<link href="/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
		
		<!-- Custom styles for this template-->
		<link href="/resources/css/sb-admin.css" rel="stylesheet">
	
		<script>
			$(document).ready(function() {
				
				$('searchDepartmentBtn').click(function() {
					
					// 학과코드 null
					if($('#searchDepartmentList').val() == null) {
						
						$('saerchTeamCodeHellper').text('직군을 선택해주세요.');
						
						return false;
						
					} else {
						
						$('saerchTeamCodeHellper').text('');
					}
					
				});
				
			});
		</script>
	</head>
	
	<script type="text/javascript">
		
	</script>
	
	<body id="page-top">
	
		<jsp:include page="/WEB-INF/views/module/nav.jsp"/>
	
		<div id="wrapper">
	
			<jsp:include page="/WEB-INF/views/module/sidebar.jsp"/>
	
			<div id="content-wrapper">
	
				<div class="container-fluid">
				
				<h1>학과 검색</h1>
				<br><br>
				
				<form action="/personnel/statistics/department/departmentSearchAction" method="GET">
					<table>
						<tr>
							<td>
								기준일자
								<select>
									<option id="theRemainingYears" value="${fullTimeTeacherSearchYear+1}-04-02">${(fullTimeTeacherSearchYear+1)}-04-02이전</option>
									<c:forEach var="searchYear" begin="${fullTimeTeacherSearchYear}" end="${(fullTimeTeacherSearchYear+5)}" step="1">
										<option>${searchYear}-04-02</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td>
								검색 학과
								<select id="searchDepartmentList">
									<option value="Null">===선택===</option>
									<c:forEach var="row" items="searchDepartmentList">
										<option value="teamCode">${row.teamNameKorean}</option>
									</c:forEach>
								</select>
								<input id="saerchTeamCodeHellper" type="text">
							</td>
						</tr>
						<tr>
							<td>
								<button id="searchDepartmentBtn" type="submit" value="검색"></button>
							</td>
						</tr>
					</table>
				</form>
							
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