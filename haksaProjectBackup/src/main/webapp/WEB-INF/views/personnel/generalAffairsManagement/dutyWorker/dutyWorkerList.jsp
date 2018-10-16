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
		
		<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
		
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
		
		<script type="text/javascript">
		
			$(document).ready(function() {
				console.log('dutyWorkerList-jquey');
				
				// 리스트 이동
				$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
					var target = $(e.target).attr("href") // activated tab
				});
				
				// 승인완료리스트 모두 체크&풀기
				$('#allCheckboxChoice').click(function() {
					
					if($('#allCheckboxChoice').is(':checked') ) {
						
						$('input[name*="userBox[]"]').prop('checked', true);
						
					} else {
						
						$('input[name*="userBox[]"]').prop('checked', false);
					}
					
				});
				
				// 확인중리스트 모두 체크&풀기
				$('#allCheckingBoxChoice').click(function() {
					
					if($('#allCheckingBoxChoice').is(':checked') ) {
						
						$('input[name*="userCheckingBox[]"]').prop('checked', true);
						
					} else {
						
						$('input[name*="userCheckingBox[]"]').prop('checked', false);
					}
					
				});
				
				// 승인불가리스트 모두 체크&풀기
				$('#allDisapprovedChoice').click(function() {
					
					if($('#allDisapprovedChoice').is(':checked') ) {
						
						$('input[name*="userDisapprovedBox[]"]').prop('checked', true);
						
					} else {
						
						$('input[name*="userDisapprovedBox[]"]').prop('checked', false);
					}
					
				});
				
				// 승인 처리
				$('#acknowledgmentBtn').click(function() {
					
					var checkedDataList = [];
					
					$('input[name="userCheckingBox[]"]:checked').each(function(i) {
						
						checkedDataList.puch($(this).val());
						checked
					}
					
					$.ajax({
						url:'/personnel/generalAffairsManagement/dutyWorker/acknowledgmentBtn'
	    					, type:'POST'
	    					, dataType:'JSON'
	    					, async   : false
	    					, data: {userList : checkedDataList}
	    					, success: function(data){
	    						
	    					}
					});
					
				});
					
				// 입력화면 이동
				$('.dutyWorkerInsert').click(function() {
					
					location.href= '/personnel/generalAffairsManagement/dutyWorker/dutyWorkerInsert' ;
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
				
					  <!-- Tab panes -->
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="approvalOfDutyOnDuty">
							<h1>당직근무 승인완료 리스트</h1>
							<br><br>
							
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#approvalOfDutyOnDuty" aria-controls="approvalOfDutyOnDuty" role="tab" data-toggle="tab">당직근무 승인완료 리스트</a></li>
								<li role="presentation"><a href="#approvalStatusOfDutyCheck" aria-controls="approvalStatusOfDutyCheck" role="tab" data-toggle="tab">당직근무 승인여부 리스트</a></li>
								<li role="presentation"><a href="#unableDutyWorkOnTime" aria-controls="unableDutyWorkOnTime" role="tab" data-toggle="tab">당직근무 불가 리스트</a></li>
								<li><button class="dutyWorkerInsert" type="button" class="btn btn-default btn-sm" >입력하기</button></li>
							</ul>
							
							<table class="table table-hover">
						        <thead class="">
						             <tr>
						             	<th><input type="checkbox" id="allCheckboxChoice" class="checkbox checkbox-inline"></th>
						            	<th>근무 일자</th>
										<th>근무 요일</th>
										<th>근태 종류</th>
										<th>근무시작 시간</th>
										<th>근무종료 시간</th>
										<th>부서 명</th>
										<th>직급 명</th>
										<th>성명</th>
										<th>비고</th>
										<th>승인여부</th>
										<th>등록일</th>
						            </tr>
						        </thead>
						        <tbody>
					        		<c:forEach var="row" items="${workerList}">
						        		<c:if test="${row.workerApprovalStatus eq 'Y' }">
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
													<c:when test="${row.workerApprovalStatus eq 'Y' }" >
														<td>승인완료</td>
													</c:when>
												</c:choose>
							                    <td>${row.workerRegistrationDay }</td>
							                </tr>
							                </c:if>
						            </c:forEach>
				        		</tbody>
				    		</table>
						</div>
						
						<div role="tabpanel" class="tab-pane" id="approvalStatusOfDutyCheck">
							<h1>당직근무 승인여부 리스트</h1>
							<br><br>
							
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation"><a href="#approvalOfDutyOnDuty" aria-controls="approvalOfDutyOnDuty" role="tab" data-toggle="tab">당직근무 승인완료 리스트</a></li>
								<li role="presentation" class="active"><a href="#approvalStatusOfDutyCheck" aria-controls="approvalStatusOfDutyCheck" role="tab" data-toggle="tab">당직근무 승인여부 리스트</a></li>
								<li role="presentation"><a href="#unableDutyWorkOnTime" aria-controls="unableDutyWorkOnTime" role="tab" data-toggle="tab">당직근무 불가 리스트</a></li>
								<li><button type="button" class="btn btn-default btn-sm" class="dutyWorkerInsert">입력하기</button></li>
								<li><button type="button" id="acknowledgmentBtn"  class="btn btn-default btn-sm" class="acknowledgment">승인</button></li>
								<li><button type="button" id="disapprovedBtn"  class="btn btn-default btn-sm" class="disapproved">불가</button></li>
							</ul>
							
							<table class="table table-hover">
						        <thead>
						             <tr>
						             	<th><input type="checkbox" id="allCheckingBoxChoice"></th>
						            	<th>근무 일자</th>
										<th>근무 요일</th>
										<th>근태 종류</th>
										<th>근무시작 시간</th>
										<th>근무종료 시간</th>
										<th>부서 명</th>
										<th>직급 명</th>
										<th>성명</th>
										<th>비고</th>
										<th>승인여부</th>
										<th>등록일</th>
						            </tr>
						        </thead>
						        <tbody>
					        		<c:forEach var="row" items="${workerList}">
					        			<c:if test="${row.workerApprovalStatus eq 'C' }">
							                <tr>
							                	<td><input id="userCheck" type="checkbox" name="userCheckingBox[]" value="${row.personnelNumber }"></td>
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
												</c:choose>
							                    <td>${row.workerRegistrationDay }</td>
							                </tr>
						                </c:if>
						            </c:forEach>
				        		</tbody>
				    		</table>
						</div>
						
						<div role="tabpanel" class="tab-pane" id="unableDutyWorkOnTime">
							<h1>당직근무 불가 리스트</h1>
							<br><br>
							
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation"><a href="#approvalOfDutyOnDuty" aria-controls="approvalOfDutyOnDuty" role="tab" data-toggle="tab">당직근무 승인완료 리스트</a></li>
								<li role="presentation"><a href="#approvalStatusOfDutyCheck" aria-controls="approvalStatusOfDutyCheck" role="tab" data-toggle="tab">당직근무 승인여부 리스트</a></li>
								<li role="presentation" class="active"><a href="#unableDutyWorkOnTime" aria-controls="unableDutyWorkOnTime" role="tab" data-toggle="tab">당직근무 불가 리스트</a></li>
								<li><button type="button" class="btn btn-default btn-sm" class="dutyWorkerInsert">입력하기</button></li>
							</ul>
							
							<table class="table table-hover">
						        <thead>
						             <tr>
						    	        <th><input type="checkbox" id="allDisapprovedChoice"></th>
						            	<th>근무 일자</th>
										<th>근무 요일</th>
										<th>근태 종류</th>
										<th>근무시작 시간</th>
										<th>근무종료 시간</th>
										<th>부서 명</th>
										<th>직급 명</th>
										<th>성명</th>
										<th>비고</th>
										<th>승인여부</th>
										<th>등록일</th>
						            </tr>
						        </thead>
						        <tbody>
					        		<c:forEach var="row" items="${workerList}">
						        		<c:if test="${row.workerApprovalStatus eq 'N' }">
							                <tr>
							                	<td><input id="userCheck" type="checkbox" name="userDisapprovedBox[]"  value="${row.personnelNumber }"></td>
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
													<c:when test="${row.workerApprovalStatus eq 'N' }" >
														<td>승인불가</td>
													</c:when>
												</c:choose>
							                    <td>${row.workerRegistrationDay }</td>
							                </tr>
						                </c:if>
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