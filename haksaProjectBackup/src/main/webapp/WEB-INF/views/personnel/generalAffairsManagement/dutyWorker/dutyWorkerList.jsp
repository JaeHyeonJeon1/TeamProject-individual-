<!-- 2018.10.02 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
		<title>duty worker List</title>
		
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
		
		<script type="text/javascript">
			$(document).ready(function() {
				console.log('dutyWorkerList-jquey');
				
				$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
					var target = $(e.target).attr("href") // activated tab
				});
				
				// 모두 체크&풀기
				$('#AllCheckboxChoice').click(function() {
					console.log('AllCheckboxChoice');
					
					
				});
				
				// 승인 처리
				$('#checkboxBtn').click(function() {
					
					var checkedDataList = new Array();
					var count = new Array();
					var checkdData = $('#userCheck');
					
					for(i=0; i<checkdData.length; i++) {
						
						if(checkdData[i].cheked == true) {
							
							checkedDataList[count] = checkdData[i].value;
							count++;
						}
						
					}
					
				});
				
			});
		</script>
	</head>
	
	<body id="page-top">
	
		<jsp:include page="/WEB-INF/views/module/nav.jsp"/>
	
		<div id="wrapper">
	
			<jsp:include page="/WEB-INF/views/module/sidebar.jsp"/>
	
			<div id="content-wrapper">
	
				<div class="container-fluid">
				<!-- 여기에 내용이 담긴다 -->
				<div role="tabpanel">

					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home" aria-controls="approvalOfDutyOnDuty" role="tab" data-toggle="tab">당직근무 승인완료 리스트</a></li>
						<li role="presentation"><a href="#profile" aria-controls="approvalStatusOfDutyCheck" role="tab" data-toggle="tab">당직근무 승인여부 리스트</a></li>
						<li role="presentation"><a href="#settings" aria-controls="unableDutyWorkOnTime" role="tab" data-toggle="tab">당직근무 불가 리스트</a></li>
					</ul>
					
					  <!-- Tab panes -->
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="approvalOfDutyOnDuty">
							<h1>당직근무 승인완료 리스트</h1>
							<br><br>
							<table border="">
						        <thead>
						             <tr>
						             	<td><input type="checkbox" id="AllCheckboxChoice"></td>
						            	<td>근무 일자</td>
										<td>근무 요일</td>
										<td>근태 종류</td>
										<td>근무시작 시간</td>
										<td>근무종료 시간</td>
										<td>부서 명</td>
										<td>직급 명</td>
										<td>성명</td>
										<td>비고</td>
										<td>승인여부</td>
										<td>등록일</td>
										<td><button type="button" id="checkboxBtn" value="승인"></button></td>
						            </tr>
						        </thead>
						        <tbody>
				            		<c:forEach var="row" items="${workerList}">
						                <tr>
						                	<td><input id="userCheck" type="checkbox" name="userBox[]" value="${row.personnelNumber }"></td>
						                    <td>${row.workerDate }</td>
						                    <td>${row.workerDayOfTheWeek }</td>
						                    <td>${row.workerType }</td>
						                    <td>${row.workerStartTime }</td>
						                    <td>${row.workerEndTime }</td>
						                    <td>${row.deptNameKorean }</td>
						                    <td>${row.rankNameKorean }</td>
						                    <td>${row.humanName }</td>
						                    <td>${row.workerSpecialNote }</td>
						                    <c:choose>
												<c:when test="${row.workerApprovalStatus eq 'C' }" >
													<td>확인중</td>
												</c:when>
												
												<c:when test="${row.workerApprovalStatus eq 'Y' }" >
													<td>승인완료</td>
												</c:when>
												
												<c:when test="${row.workerApprovalStatus eq 'N' }" >
													<td>승인불가</td>
												</c:when>
											</c:choose>
						                    <td>${row.workerRegistrationDay }</td>
						                </tr>
						            </c:forEach>
				        		</tbody>
				    		</table>
						</div>
						
						<div role="tabpanel" class="tab-pane" id="approvalStatusOfDutyCheck">
							<h1>당직근무 승인여부 리스트</h1>
							<br><br>
							<table border="">
						        <thead>
						             <tr>
						             	<td><input type="checkbox"></td>
						            	<td>근무 일자</td>
										<td>근무 요일</td>
										<td>근태 종류</td>
										<td>근무시작 시간</td>
										<td>근무종료 시간</td>
										<td>부서 명</td>
										<td>직급 명</td>
										<td>성명</td>
										<td>비고</td>
										<td>승인여부</td>
										<td>등록일</td>
						            </tr>
						        </thead>
						        <tbody>
				            		<c:forEach var="row" items="${workerList}">
						                <tr>
						                	<td><input type="checkbox"></td>
						                    <td>${row.workerDate }</td>
						                    <td>${row.workerDayOfTheWeek }</td>
						                    <td>${row.workerType }</td>
						                    <td>${row.workerStartTime }</td>
						                    <td>${row.workerEndTime }</td>
						                    <td>${row.deptNameKorean }</td>
						                    <td>${row.rankNameKorean }</td>
						                    <td>${row.humanName }</td>
						                    <td>${row.workerSpecialNote }</td>
						                    <c:choose>
												<c:when test="${row.workerApprovalStatus eq 'C' }" >
													<td>확인중</td>
												</c:when>
												
												<c:when test="${row.workerApprovalStatus eq 'Y' }" >
													<td>승인완료</td>
												</c:when>
												
												<c:when test="${row.workerApprovalStatus eq 'N' }" >
													<td>승인불가</td>
												</c:when>
											</c:choose>
						                    <td>${row.workerRegistrationDay }</td>
						                </tr>
						            </c:forEach>
				        		</tbody>
				    		</table>
						</div>
						
						<div role="tabpanel" class="tab-pane" id="unableDutyWorkOnTime">
							<h1>당직근무 불가 리스트</h1>
							<br><br>
							<table border="">
						        <thead>
						             <tr>
						             	<td><input type="checkbox"></td>
						            	<td>근무 일자</td>
										<td>근무 요일</td>
										<td>근태 종류</td>
										<td>근무시작 시간</td>
										<td>근무종료 시간</td>
										<td>부서 명</td>
										<td>직급 명</td>
										<td>성명</td>
										<td>비고</td>
										<td>승인여부</td>
										<td>등록일</td>
						            </tr>
						        </thead>
						        <tbody>
				            		<c:forEach var="row" items="${workerList}">
						                <tr>
						                	<td><input type="checkbox"></td>
						                    <td>${row.workerDate }</td>
						                    <td>${row.workerDayOfTheWeek }</td>
						                    <td>${row.workerType }</td>
						                    <td>${row.workerStartTime }</td>
						                    <td>${row.workerEndTime }</td>
						                    <td>${row.deptNameKorean }</td>
						                    <td>${row.rankNameKorean }</td>
						                    <td>${row.humanName }</td>
						                    <td>${row.workerSpecialNote }</td>
						                    <c:choose>
												<c:when test="${row.workerApprovalStatus eq 'C' }" >
													<td>확인중</td>
												</c:when>
												
												<c:when test="${row.workerApprovalStatus eq 'Y' }" >
													<td>승인완료</td>
												</c:when>
												
												<c:when test="${row.workerApprovalStatus eq 'N' }" >
													<td>승인불가</td>
												</c:when>
											</c:choose>
						                    <td>${row.workerRegistrationDay }</td>
						                </tr>
						            </c:forEach>
				        		</tbody>
				    		</table>
						</div>
					</div>
					
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