<!-- 2018.10.02 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
		<title>holiday insert</title>
		
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
		$(document).ready(()=>{
			console.log('holidayInsert-script');
			
			$('#holidayInsertBtn').click(()=>{
				console.log('holidayInsert-holidayInsertBtn');
				
				// 휴일구분 검사
				if($('#holidayCategory').val().length < 1) {
					console.log('holidayInsert-holidayCategory');
					
					$('#holidayCategoryHellper').html('2글자 이상 입력하세요');
					$('#holidayCategory').focus();
					
				// 휴일명 검사
				} else if($('#holidayName').val().length < 1) {
					console.log('holidayInsert-holidayCategoryHellper');
					
					$('#holidayCategoryHellper').html('');
					$('#holidayNameHellper').html('2글자 이상 입력하세요.');
					$('#holidayName').focus();
					
				// 휴일기간 검사
				} else if($('#holidayStartDay') > $('#holidayEndDay')) {
					console.log('holidayInsert-holidayDay');
					
					$('#holidayNameHellper').html('');
					$('#holidayDayHellper').html('날짜 설정이 틀렸습니다');
					$('#holidayStartDay').focus();
					
				// 검사 성공
				} else {
					console.log('holidayInsert-clear');
					
					let getHolidayCategory = $('#holidayCategory').val();
					let getHolidayName = $('#holidayName').val();
					let getHolidayStartDay = $('#holidayStartDay').val();
					let getHolidayEndDay = $('#holidayEndDay').val();
					
					$('#holidayDayHellper').html('');
					
					$.ajax({
						url:'/personnel/generalAffairsManagement/holiday/holidayInsertAction'
						, type:'POST'
						, data:{holidayCategory: getHolidayCategory ,holidayName: getHolidayName ,holidayStartDay: getHolidayStartDay ,holidayEndDay: getHolidayEndDay}
						, success: function(data){
							
							// 데이터 입력 성공
							if(data == 'success'){
								alert('실행이 성공 되었습니다.');
								
								location.href='/personnel/generalAffairsManagement/holiday/holidayList';
							
							// 데이터 입력 실패
							} else{
								alert('실행이 실패 되었습니다.');
							}
						}
					});
					
				}
				
			});
			
		});
	</script>
	
	<body id="page-top">
	
		<jsp:include page="/WEB-INF/views/module/nav.jsp"/>
	
		<div id="wrapper">
	
			<jsp:include page="/WEB-INF/views/module/sidebar.jsp"/>
	
			<div id="content-wrapper">
	
				<div class="container-fluid">
				<!-- 여기에 내용이 담긴다 -->
				
				<h1>휴일 입력</h1>
				<br><br>
				
				<form>
				
					<table>
						<tr>
							<td>
								휴일 구분 <input type="text" id="holidayCategory" maxlength="20" placeholder="20자 이내 입력하세요.">
								<span id="holidayCategoryHellper"></span>
							</td>
						</tr>
						<tr>
							<td>
								휴일 명 <input type="text" id="holidayName" maxlength="10" placeholder="10자 이내 입력하세요.">
								<span id="holidayNameHellper"></span>
							</td>
						</tr>
						<tr>
							<td>
								휴일 기간 <input type="date" id="holidayStartDay">&nbsp;-&nbsp;<input type="date" id="holidayEndDay">
								<span id="holidayDayHellper"></span>
							</td>
						</tr>
						
						<tr>
							<td><input type="submit" id="holidayInsertBtn" value="등록"></td>
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