<!-- 2018.10.12 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<!-- 당직근무 리스트 입력 -->
		<title>duty worker insert</title>
		
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
	
	</head>
	
	<script type="text/javascript">
		$(document).ready(function() {
			console.log('duty worker insert-script');
			
			// 팝업 생성	
			$('#userCheckBtn').click(function() {
				
				var userCheckList = window.open("/personnel/generalAffairsManagement/dutyWorkerUserNameSearchPopup", "userNameSearch", "width=570,heigth=420, scrollbars=yes, resizable=yes")
				
			});
			
			function userDetailData(userDepartment ,userRank ,humanName ,personnelNumber) {
				
				document.dutyWorkerForm.userDepartment.value = userDepartment;
				document.dutyWorkerForm.userRank.value = userRank;
				document.dutyWorkerForm.humanName.value = humanName;
				document.dutyWorkerForm.personnelNumber.value = personnelNumber;
			}
			
			// 행 추가
			var rowItem = "<tr>"
				rowItem += 	"<td><input type='date' id='dutyWorkerDate'></td>"
				rowItem += 	"<td>"
						+		"<select id='dutyWorkerDay'>"	
						+			"<option value='doNotHaveData' selected>===선택====</option>"
						+			"<option>월요일</option>"
						+			"<option>화요일</option>"
						+			"<option>수요일</option>"
						+			"<option>목요일</option>"
						+			"<option>금요일</option>"
						+			"<option>토요일</option>"
						+			"<option>일요일</option>"
						+ 		"</select>"
						+ 	"</td>"
				rowItem += 	"<td><input type='time' id='dutyWorkerStartTime'>&nbsp;-&nbsp;당직근무 종료 시간<input type='time' id='dutyWorkerEndTime'></td>"
				rowItem +=	"<td><input type='text' id='userDepartment' readonly><button type='button' id='userCheckBtn' value='당직근무자 찾기'></button></td>"
				rowItem +=	"<td><input type='text' id='userRank' readonly></td>"
				rowitem +=	"<td><input type='text' id='humanName' readonly></td>"
				rowitem +=	"<td><input type='hidden' id='dutyWorkerNote' value='''></td>"
				rowitem +=	"<td><input type='hidden' id='dutyWorkerApprovalStatus' value='C'></td>"
				rowItem += 	"<td> <button type='button' class='btn btn-danger'> <i class='fa fa-minus'></i> </button> </td>"
				rowitem += "</tr>"
				
			$('#dutyWorkerForm').append(rowItem);
				
			// 행 삭제
			$('#dutyWorkerForm').on("click", "button", function() {
				console.log('dutyWorkerForm-button');
				
			    $(this).closest("tr").remove()
			});
		});
	</script>
	
	<body id="page-top">
	
		<jsp:include page="/WEB-INF/views/module/nav.jsp"/>
	
		<div id="wrapper">
	
			<jsp:include page="/WEB-INF/views/module/sidebar.jsp"/>
	
			<div id="content-wrapper">
	
				<div class="container-fluid">
				
				<h1>당직근무조 입력</h1>
				<br><br>
				
				<form name="dutyWorkerForm" id="dutyWorkerForm">
				
					<table>
						<thead>
							<tr>
								<td>당직근무 기간</td>
							</tr>
							<tr>
								<td>당직근무 요일 </td>
							</tr>
							<tr>
								<td>당직근무 시간</td>
							</tr>
							<tr>
								<td>당직근무자 부서</td>
							</tr>
							<tr>
								<td>당직근무자 직급</td>
							</tr>
							<tr>
								<td>당직근무자 성명</td>
							</tr>
						</thead>
						<tr>
							<td>
								<input type="date" id="dutyWorkerDate">
							</td>
						</tr>
						<tr>
							<td>
								<select id="dutyWorkerDay">
									<option value="doNotHaveData" selected>===선택====</option>
									<option>월요일</option>
									<option>화요일</option>
									<option>수요일</option>
									<option>목요일</option>
									<option>금요일</option>
									<option>토요일</option>
									<option>일요일</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>
								<input type="time" id="dutyWorkerStartTime">&nbsp;-&nbsp;
								<input type="time" id="dutyWorkerEndTime">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" id="userDepartment" readonly>
								<button type="button" id="userCheckBtn" value="당직근무자 찾기"></button>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" id="userRank" readonly>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" id="humanName" readonly>
							</td>
						</tr>
						<tr>
							<td>
								<!-- 성명코드 -->
								<input type="hidden" id="personnelNumber">
								<!-- 비고란 -->
								<input type="hidden" id="dutyWorkerNote" value=" ">
								<!-- 승인여부란 -->
								<input type="hidden" id="dutyWorkerApprovalStatus" value="C">
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