<!-- 2018.10.12 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
		<title>faculty staff status search</title>
		
		<script src="/resources/vendor/jquery/jquery.js"></script>
		
		<!-- Bootstrap core CSS-->
		<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		
		<link href="/resources/vendor/bootstrap/js/bootstrap.js" rel="stylesheet">
		
		<!-- Custom fonts for this template-->
		<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		
		<!-- Page level plugin CSS-->
		<link href="/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
		
		<!-- Custom styles for this template-->
		<link href="/resources/css/sb-admin.css" rel="stylesheet">
	
		<script>
			$(document).ready(function(){
				
				// 검색 버튼 클릭
				$('#saerchYearBtn').click(function() {
					
					if($('#searchYear').val() == 'nullYear') {
						
						$('#searchYearHellper').text('검색기간을 선택하세요');
						
						return false;
					}
					
				})
			})
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
				
				<h1>교직원 현황 검색</h1>
				<br><br>
				
				<form action="/personnel/statistics/facultyStaffStatus/facultyStaffStatusSearchAction" method="GET">
					<table>
						<tr>
							<td>
								기준일자 
								<select id="searchYear">
									<option value="nullYear">===선택===</option>
									<c:forEach var="row" begin="${saerchYear.yearList }" end="(${saerchYear.yearList}-5)" step="-1">
										<option>${row }-04-02</option>
									</c:forEach>
									<!-- <option>2014-04-02</option>
									<option>2015-04-02</option>
									<option>2016-04-02</option>
									<option>2017-04-02</option>
									<option>2018-04-02</option> -->
								</select>
								<button type="submit" id="saerchYearBtn" class="btn btn-default btn-sm">search</button>
								<span id="searchYearHellper" class="label label-danger"></span>
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