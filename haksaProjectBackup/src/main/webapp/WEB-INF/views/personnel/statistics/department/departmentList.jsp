<!-- 2018.10.18 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		
		<!-- 학과별 검색 -->
		<title>department List</title>
		
		<script src="/resources/vendor/jquery/jquery.js"></script>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		
		<!-- Bootstrap core CSS-->
		<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<link href="/resources/vendor/bootstrap/js/bootstrap.js" rel="stylesheet">
		
		<!-- Custom fonts for this template-->
		<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		
		<!-- Page level plugin CSS-->
		<link href="/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
		
		<!-- Custom styles for this template-->
		<link href="/resources/css/sb-admin.css" rel="stylesheet">
	
		<script type="text/javascript">
		
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
				
					<div class="page-header">
						<h1>교직원 현황 리스트</h1>
					</div>
					<br><br>
					
					<div id="schoolteacherHead"  class="panel panel-info">
						<div class="panel-body">
					    	${row.departmentList } 리스트 
						</div>
						<c:forEach var="row"  items="${searchDepartmentList }">
							<div id="schoolteacher" class="panel-footer">
								<p>부서 : ${userList.deptNameKorean }</p>
								<p>팀 : ${userList.teamNameKorean }</p>
								<p>직급 : ${userList.jobRankNameKorean }</p>
								<p>성명 : ${userList.humanName }</p>
								<p>전화번호 : ${userList.humanPhoneNumber }</p>
								<p>이메일 : ${userList.humanEmail }</p>
							</div>
						</c:forEach>
					</div>
					
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