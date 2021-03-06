<!-- 2018.10.02 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
		<title>training List</title>
		
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
			
			// 리스트 이동
			$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
				var target = $(e.target).attr("href") // activated tab
			});
			
			// 전부 체크 & 해제
			$('#trainingApprovalStatusListAll').click(function() {
				
				if($('#trainingApprovalStatusListAll').is(':checked') ) {
					
					$("input[name='trainingApprovalStatusList']").prop('checked', true);
					
				} else {
					
					$("input[name='trainingApprovalStatusList']").prop('checked', false);
				}
				
			});
			
			// 전체 체크박스 해제 및 체크
			$('.trainingApprovalStatusList').click(function(){
				
				if($("input[name='trainingApprovalStatusList']:checked").length == $("input[name='trainingApprovalStatusList']").length) {
					
					$('#trainingApprovalStatusListAll').prop('checked', true);
					
				} else {
					
					$('#trainingApprovalStatusListAll').prop('checked', false);
					
				}

			});
			
			// 입력처리
			$('.dutyWorkerInsert').click(function() {
				
				location.href= '/personnel/generalAffairsManagement/training/trainingInsert';
				
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
				
					<!-- Nav tabs -->
					<div class="tab-content">
					
						<div role="tabpanel">
					
							<div role="tabpanel" class="tab-pane active" id="trainingApproval">
								<div class="page-header">
									<h2>연수승인 리스트</h2>
								</div>
								<br><br>
								
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#trainingApproval" aria-controls="approvalOfDutyOnDuty" role="tab" data-toggle="tab">당직근무 승인완료 리스트</a></li>
									<li role="presentation"><a href="#trainingApprovalStatus" aria-controls="approvalStatusOfDutyCheck" role="tab" data-toggle="tab">당직근무 승인여부 리스트</a></li>
									<li role="presentation"><a href="#unableApproveTraining" aria-controls="unableDutyWorkOnTime" role="tab" data-toggle="tab">당직근무 불가 리스트</a></li>
									<li><button type="button" class="btn btn-default btn-sm" name="dutyWorkerInsert" >입력하기</button></li>
								</ul>
								
								<table class="table table-hover">
							        <thead>
							            <tr>
							            	<th>연수시작 일자</th>
											<th>연수종료 일자</th>
											<th>부서 명</th>
											<th>직급 명</th>
											<th>성명</th>
											<th>연수 구분</th>
											<th>연수 목적</th>
											<th>승인 여부</th>
											<th>등록일</th>
							            </tr>
							        </thead>
							        <tbody>
					            		<c:forEach var="row" items="${trainingList}">
							        		<c:if test="${row.trainingApprovalStatus eq 'Y' }">
								                <tr>
								                    <td>${row.trainingStartDate }</td>
								                    <td>${row.trainingEndDate }</td>
								                    <td>${row.deptNameKorean }</td>
								                    <td>${row.jobRankNameKorean }</td>
								                    <td>${row.humanName }</td>
								                    <td>${row.trainingCodeName }</td>
								                    <td>${row.trainingPurpose }</td>
								                    <c:choose>
														<c:when test="${row.trainingApprovalStatus eq 'Y' }" >
															<td>승인완료</td>
														</c:when>
													</c:choose>
								                    <td>${row.trainingRegistrationDay }</td>
								                </tr>
							                </c:if>
							            </c:forEach>
					        		</tbody>
					    		</table>
							</div>
							
							<div role="tabpanel" class="tab-pane active" id="trainingApprovalStatus">
								<div class="page-header">
									<h2>연수승인 여부 리스트</h2>
								</div>
								<br><br>
								
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation"><a href="#trainingApproval" aria-controls="approvalOfDutyOnDuty" role="tab" data-toggle="tab">당직근무 승인완료 리스트</a></li>
									<li role="presentation" class="active"><a href="#trainingApprovalStatus" aria-controls="approvalStatusOfDutyCheck" role="tab" data-toggle="tab">당직근무 승인여부 리스트</a></li>
									<li role="presentation"><a href="#unableApproveTraining" aria-controls="unableDutyWorkOnTime" role="tab" data-toggle="tab">당직근무 불가 리스트</a></li>
									<li><button type="button" class="btn btn-default btn-sm" class="dutyWorkerInsert"  >입력하기</button></li>
									<li><button type="button" id="#trainingApprovalStatusApproval" class="btn btn-default btn-sm">승인</button></li>
								</ul>
								
								<table class="table table-hover">
							        <thead>
							            <tr>
							            	<th><input type="checkbox" id="trainingApprovalStatusListAll" class="trainingApprovalStatusListAll"></th>
							            	<th>연수시작 일자</th>
											<th>연수종료 일자</th>
											<th>부서 명</th>
											<th>직급 명</th>
											<th>성명</th>
											<th>연수 구분</th>
											<th>연수 목적</th>
											<th>승인 여부</th>
											<th>등록일</th>
							            </tr>
							        </thead>
							        <tbody>
					            		<c:forEach var="row" items="${trainingList}">
							        		<c:if test="${row.trainingApprovalStatus eq 'C' }">
								                <tr>
								                	<td><input type="checkbox" class="trainingApprovalStatusList" name="trainingApprovalStatusList">
								                    <td>${row.trainingStartDate }</td>
								                    <td>${row.trainingEndDate }</td>
								                    <td>${row.deptNameKorean }</td>
								                    <td>${row.jobRankNameKorean }</td>
								                    <td>${row.humanName }</td>
								                    <td>${row.trainingCodeName }</td>
								                    <td>${row.trainingPurpose }</td>
								                    <c:choose>
														<c:when test="${row.trainingApprovalStatus eq 'C' }" >
															<td>승인중</td>
														</c:when>
													</c:choose>
								                    <td>${row.trainingRegistrationDay }</td>
								                </tr>
							                </c:if>
							            </c:forEach>
					        		</tbody>
					    		</table>
							</div>
							
							<div role="tabpanel" class="tab-pane active" id="unableApproveTraining">
								<div class="page-header">
									<h2>연수불가 리스트</h2>
								</div>
								<br><br>
								
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation"><a href="#trainingApproval" aria-controls="approvalOfDutyOnDuty" role="tab" data-toggle="tab">당직근무 승인완료 리스트</a></li>
									<li role="presentation"><a href="#trainingApprovalStatus" aria-controls="approvalStatusOfDutyCheck" role="tab" data-toggle="tab">당직근무 승인여부 리스트</a></li>
									<li role="presentation" class="active"><a href="#unableApproveTraining" aria-controls="unableDutyWorkOnTime" role="tab" data-toggle="tab">당직근무 불가 리스트</a></li>
									<li><button type="button" class="btn btn-default btn-sm" class="dutyWorkerInsert" >입력하기</button></li>
								</ul>
								
								<table class="table table-hover">
							        <thead>
							            <tr>
							            	<th>연수시작 일자</th>
											<th>연수종료 일자</th>
											<th>부서 명</th>
											<th>직급 명</th>
											<th>성명</th>
											<th>연수 구분</th>
											<th>연수 목적</th>
											<th>승인 여부</th>
											<th>등록일</th>
							            </tr>
							        </thead>
							        <tbody>
					            		<c:forEach var="row" items="${trainingList}">
						        			<c:if test="${row.trainingApprovalStatus eq 'N' }">
								                <tr>
								                    <td>${row.trainingStartDate }</td>
								                    <td>${row.trainingEndDate }</td>
								                    <td>${row.deptNameKorean }</td>
								                    <td>${row.jobRankNameKorean }</td>
								                    <td>${row.humanName }</td>
								                    <td>${row.trainingCodeName }</td>
								                    <td>${row.trainingPurpose }</td>
								                    <c:choose>
														<c:when test="${row.trainingApprovalStatus eq 'N' }" >
															<td>승인불가</td>
														</c:when>
													</c:choose>
								                    <td>${row.trainingRegistrationDay }</td>
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