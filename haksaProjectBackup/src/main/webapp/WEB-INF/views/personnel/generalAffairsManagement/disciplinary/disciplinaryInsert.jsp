<!-- 2018.10.17 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>disciplinary Insert</title>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		
		<!-- Bootstrap core CSS-->
		<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		
		<!-- Custom fonts for this template-->
		<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		
		<!-- Page level plugin CSS-->
		<link href="/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
		
		<!-- Custom styles for this template-->
		<link href="/resources/css/sb-admin.css" rel="stylesheet">
		
		<script type="text/javascript">
			
			$(document).ready(function() {
				
				$('#disciplinaryInsertBtn').click(function() {
					
					if($('#deptNameKorean').val() == '' ) {
						
						$('#deptNameKoreanHellper').text('부서명이 없습니다');
						$('#deptNameKorean').focus();
						
						return false;
						
					} else if($('#rankNameKorean').val() == '' ) {
						
						$('#deptNameKoreanHellper').text('');
						$('#rankNameKoreanHellper').text('직급명이 없습니다.');
						$('#rankNameKorean').focus();

						return false;
						
					} else if($('#humanName').val() == '' ) {
					
						$('#rankNameKoreanHellper').text('');
						$('#humanNameHellper').text('성명이 없습니다.');
						$('#humanName').focus();

						return false;
						
					} else if($('#teachersDisciplinaryCode').val() == '선택' ) {
						
						$('#humanNameHellper').text('');
						$('#teachersDisciplinaryCodeHellper').text('징계목록을 선택해주세요');
						$('#teachersDisciplinaryCode').focus();

						return false;
						
					} else if($('#teachersDisciplinaryStartDate').val() == '' || $('#teachersDisciplinaryEndDate').val() == '' ) {
						
						$('#teachersDisciplinaryCodeHellper').text('');
						$('#teachersDisciplinaryStartDateHellper').text('날짜를 입력하세요.');
						$('#teachersDisciplinaryStartDate').focus();

						return false;
						
					}  else if($('#teachersDisciplinaryStartDate').val() > $('#teachersDisciplinaryEndDate').val() ) {
						
						$('#teachersDisciplinaryCodeHellper').text('');
						$('#teachersDisciplinaryStartDateHellper').text('날짜 설정을 잘못하였습니다.');
						$('#teachersDisciplinaryStartDate').focus();

						return false;
						
					}else {
						
						$('#teachersDisciplinaryStartDateHellper').text('');
						$('#disciplinaryInsertBtn').submit();
					} 
						
						
					
					
					
				});
				
			});
		
		</script>
		
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/module/nav.jsp"/>
	
		<div id="wrapper">
	
			<jsp:include page="/WEB-INF/views/module/sidebar.jsp"/>
	
			<div id="content-wrapper">
	
				<div class="container-fluid">
				<!-- 여기에 내용이 담긴다 -->
				
					<div class="page-header">
						<h1>징계 입력</h1>
					</div>
					<br><br>
					
					<form action="/personnel/generalAffairsManagement/disciplinary/disciplinaryInsertAction" method="POST">
				
					<table class="table table-hover">
						<tr>
							<td>
								부서 <input type="text" id="deptNameKorean" name="deptNameKorean" maxlength="20" placeholder="2자이상 20자 이내.">
								<span id="deptNameKoreanHellper" class="label label-danger"></span>
							</td>
						</tr>
						<tr>
							<td>
								직급 <input type="text" id="rankNameKorean" name="rankNameKorean" maxlength="10" placeholder="2자이상 10자 이내.">
								<span id="rankNameKoreanHellper" class="label label-danger"></span>
							</td>
						</tr>
						<tr>
							<td>
								성명 <input type="text" id="humanName" name="humanName" maxlength="10" placeholder="2자이상 10자 이내.">
								<span id="humanNameHellper" class="label label-danger"></span>
							</td>
						</tr>
						<tr>
							<td>
								징계 목록 
								<select id="teachersDisciplinaryCode">
									<option value="선택">==선택==</option>
									<c:forEach var="row" items="${pnishmentList }">
										<option value="${row.rewardPunishmentCode }">${row.rewardPunishmentCodeName }(${row.rewardPunishmentDivision })</option>
									</c:forEach>
								</select>
								<span id="teachersDisciplinaryCodeHellper" class="label label-danger"></span>
							</td>
						</tr>
						<tr>
							<td>
								징계 기간 <input type="date" id="teachersDisciplinaryStartDate">&nbsp;-&nbsp;<input type="date" id="teachersDisciplinaryEndDate" >
								<span id="teachersDisciplinaryStartDateHellper" class="label label-danger"></span>
							</td>
						</tr>
						<tr>
							<td><button type="submit" id="disciplinaryInsertBtn" class="btn btn-default btn-sm">등록</button></td>
						</tr>
					</table>
					
				</form>
					
				</div>
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