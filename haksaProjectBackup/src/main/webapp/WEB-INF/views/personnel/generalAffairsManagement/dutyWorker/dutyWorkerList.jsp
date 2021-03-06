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
				
				// 승인완료 리스트 모두 체크&풀기
				$('#approvalOfDutyOnDutyListAll').click(function(){
					
					if($('#approvalOfDutyOnDutyListAll').is(':checked') ) {
						
						$('input[name*="approvalOfDutyOnDutyList"]').prop('checked', true);
						
					} else {
						
						$('input[name*="approvalOfDutyOnDutyList"]').prop('checked', false);
					}
					
				});
				
				// 승인완료 리스트 하나 해제 시 전부 체크 해제
				$('.approvalOfDutyOnDutyList').click(function() {
					
					if( $('input[name*="approvalOfDutyOnDutyList"]:checked').length == $('input[name*="approvalOfDutyOnDutyList"]').length ) {
						
						$('#approvalOfDutyOnDutyListAll').prop('checked', true);
						
					} else {
						
						$('#approvalOfDutyOnDutyListAll').prop('checked', false);
					}
					
				});
				
				// 승인확인중 리스트 모두 체크&풀기
				$('#approvalStatusOfDutyCheckAll').click(function(){
					
					if($('#approvalStatusOfDutyCheckAll').is(':checked') ) {
						
						$('input[name*="approvalStatusOfDutyCheckList"]').prop('checked', true);
						
					} else {
						
						$('input[name*="approvalStatusOfDutyCheckList"]').prop('checked', false);
					}
					
				});
				
				// 승인확인중 리스트 하나 해제 시 전부 체크 해제
				$('.approvalStatusOfDutyCheckList').click(function() {
					
					if($('input[name*="approvalStatusOfDutyCheckList"]:checked').length == $('input[name*="approvalStatusOfDutyCheckList"]').length ) {
						
						$('#approvalStatusOfDutyCheckAll').prop('checked', true);
						
					} else {
						
						$('#approvalStatusOfDutyCheckAll').prop('checked', false);
					}
					
				});
				
				// 승인불가 리스트 모두 체크&풀기
				$('#unableDutyWorkOnTimeAll').click(function(){
					
					if($('#unableDutyWorkOnTimeAll').is(':checked') ) {
						
						$('input[name*="unableDutyWorkOnTimeList"]').prop('checked', true);
						
					} else {
						
						$('input[name*="unableDutyWorkOnTimeList"]').prop('checked', false);
					}
					
				});
				
				// 승인불가 리스트 하나 해제 시 전부 체크 해제
				$('.unableDutyWorkOnTimeList').click(function() {
					
					if($('input[name*="unableDutyWorkOnTimeList"]:checked').length == $('input[name*="unableDutyWorkOnTimeList"]').length ) {
						
						$('#unableDutyWorkOnTimeAll').prop('checked', true);
						
					} else {
						
						$('	#unableDutyWorkOnTimeAll').prop('checked', false);
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
					
						<!-- Tab panes -->
						<div class="tab-content">
						
							<div role="tabpanel" class="tab-pane active" id="approvalOfDutyOnDuty">
								<div class="page-header">
									<h1>당직승인 리스트</h1>
								</div>
								<br><br>
								
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#approvalOfDutyOnDuty" aria-controls="approvalOfDutyOnDuty" role="tab" data-toggle="tab">당직근무 승인완료 리스트</a></li>
									<li role="presentation"><a href="#approvalStatusOfDutyCheck" aria-controls="approvalStatusOfDutyCheck" role="tab" data-toggle="tab">당직근무 승인여부 리스트</a></li>
									<li role="presentation"><a href="#unableDutyWorkOnTime" aria-controls="unableDutyWorkOnTime" role="tab" data-toggle="tab">당직근무 불가 리스트</a></li>
									<li><button type="button" class="btn btn-default btn-sm" class="dutyWorkerInsert">입력하기</button></li>
								</ul>
								
								<table class="table table-hover">
							        <thead class="">
							             <tr>
							             	<th><input type="checkbox" name="approvalOfDutyOnDutyListAll" id="approvalOfDutyOnDutyListAll" class="checkbox checkbox-inline"></th>
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
								                	<td><input type="checkbox" name="approvalOfDutyOnDutyList" class="approvalOfDutyOnDutyList" value="${row.personnelNumber }"></td>
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
								<div class="page-header">
									<h1>당직승인 여부 리스트</h1>
								</div>
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
							             	<th><input type="checkbox" name="approvalStatusOfDutyCheckAll" id="approvalStatusOfDutyCheckAll"></th>
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
								                	<td><input type="checkbox" name="approvalStatusOfDutyCheckList" class="approvalStatusOfDutyCheckList" value="${row.personnelNumber }"></td>
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
								<div class="page-header">
									<h1>당직불가 리스트</h1>
								</div>
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
							    	        <th><input type="checkbox" name="unableDutyWorkOnTimeAll" id="unableDutyWorkOnTimeAll"></th>
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
								                	<td><input type="checkbox" name="unableDutyWorkOnTimeList" name="unableDutyWorkOnTimeList"  value="${row.personnelNumber }"></td>
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