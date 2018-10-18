<!-- 2018.10.12 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
	
		<title>faculty staff status list</title>
		
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
	
	<body id="page-top">
	
		<jsp:include page="/WEB-INF/views/module/nav.jsp"/>
	
		<div id="wrapper">
	
			<jsp:include page="/WEB-INF/views/module/sidebar.jsp"/>
	
			<div id="content-wrapper">
	
				<div class="container-fluid">
				<!-- 여기에 내용이 담긴다 -->
				
					<div class="page-header">
						<h1>교직원 현황 리스트</h1>
					</div>
					<br><br>
					
					<c:forEach var="row"  items="${searchFacultyList }">
					
						<div id="schoolteacherHead"  class="panel panel-info">
							<div class="panel-body">
						    	교원 리스트
							</div>
							
							<div id="schoolteacher" class="panel-footer">
								<c:if test="${row.jobGroupName eq '교원'}">
									<p>부서 : ${row.deptNameKorean }</p>
									<p>팀 : ${row.teamNameKorean }</p>
									<p>직급 : ${row.jobRankNameKorean }</p>
									<p>성명 : ${row.humanName }</p>
									<p>전화번호 : ${row.humanPhoneNumber }</p>
									<p>이메일 : ${row.humanEmail }</p>
								</c:if>
							</div>
						</div>
						
						<div class="panel panel-info">
							<div class="panel-body">
					    		<a id="invitationHead" >겸임/초빙 리스트</a>
							</div>
							
							<div id="invitation" class="panel-footer">
								<c:if test="${row.jobGroupName eq '겸임/초빙' }">
									<p>부서 : ${row.deptNameKorean }</p>
									<p>팀 : ${row.teamNameKorean }</p>
									<p>직급 : ${row.jobRankNameKorean }</p>
									<p>성명 : ${row.humanName }</p>
									<p>전화번호 : ${row.humanPhoneNumber }</p>
									<p>이메일 : ${row.humanEmail }</p>
								</c:if>	
							</div>
						</div>	
						
						<div class="panel panel-info">
							<div id="employeeHead" class="panel-body">
						    	<a>직원 리스트</a>
							</div>
							
							<div id="employee" class="panel-footer">
								<c:if test="${row.jobGroupName eq '직원'}">
									<p>부서 : ${row.deptNameKorean }</p>
									<p>팀 : ${row.teamNameKorean }</p>
									<p>직급 : ${row.jobRankNameKorean }</p>
									<p>성명 : ${row.humanName }</p>
									<p>전화번호 : ${row.humanPhoneNumber }</p>
									<p>이메일 : ${row.humanEmail }</p>
								</c:if>
							</div>
						</div>
						
						<div class="panel panel-info">
							<div id="contractHead" class="panel-body">
						    	계약직 리스트
							</div>
							
							<div id="contract" class="panel-footer">
								<c:if test="${row.jobGroupName eq '계약직'}">
									<p>부서 : ${row.deptNameKorean }</p>
									<p>팀 : ${row.teamNameKorean }</p>
									<p>직급 : ${row.jobRankNameKorean }</p>
									<p>성명 : ${row.humanName }</p>
									<p>전화번호 : ${row.humanPhoneNumber }</p>
									<p>이메일 : ${row.humanEmail }</p>
								</c:if>
							</div>
						</div>
						
						<div class="panel panel-info">
							<div id="assistantHead" class="panel-body">
						    	조교 리스트
							</div>
							
							<div id="assistant" class="panel-footer">
								<c:if test="${row.jobGroupName eq '조교'}">
									<p>부서 : ${row.deptNameKorean }</p>
									<p>팀 : ${row.teamNameKorean }</p>
									<p>직급 : ${row.jobRankNameKorean }</p>
									<p>성명 : ${row.humanName }</p>
									<p>전화번호 : ${row.humanPhoneNumber }</p>
									<p>이메일 : ${row.humanEmail }</p>
								</c:if>
							</div>
						</div>
						
						<div class="panel panel-info">
							<div id="timeLecturerHead" class="panel-body">
						    	시간강사 리스트
							</div>
							
							<div id="timeLecturer" class="panel-footer">
								<c:if test="${row.jobGroupName eq '시간강사'}">
									<p>부서 : ${row.deptNameKorean }</p>
									<p>팀 : ${row.teamNameKorean }</p>
									<p>직급 : ${row.jobRankNameKorean }</p>
									<p>성명 : ${row.humanName }</p>
									<p>전화번호 : ${row.humanPhoneNumber }</p>
									<p>이메일 : ${row.humanEmail }</p>
								</c:if>
							</div>
							
						</div>
					</c:forEach>
					
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