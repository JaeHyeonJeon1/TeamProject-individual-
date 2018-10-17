<!-- 2018.10.02 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
		<title>holiday List</title>
		
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
			var insert = '${result}';
			var checkDelete = '$(delete)'; 
			
			if(insert == '입력') {
				
				alert(insert+'되었습니다.');
				
			}
			
			$(document).ready(function(){
				console.log('holidayList-script');
				
				// 입력 페이지 이동
				$('#holidayListInsertBtn').click(function() {
					console.log('holidayList-holidayListInsertBtn');
					
					location.href= '/personnel/generalAffairsManagement/holiday/holidayInsert' ;
				});
			
				// 전부 체크 & 해제
				$('#holidayListAll').click(function() {
					
					if($('#holidayListAll').is(':checked') ) {
						
						$('input[name*="holidayList[]"]').prop('checked', true);
						
					} else {
						
						$('input[name*="holidayList[]"]').prop('checked', false);
					}
					
				});
				
				// 전체 체크박스 해제 및 체크
				$('.holidayListCheckbox').click(function(){
					
					if($('input[name*="holidayList[]"]:checked').length == $('input[name*="holidayList[]"]').length) {
						
						$('input[name="holidayListAll"]').prop('checked', true);
						
					} else {
						
						$('input[name="holidayListAll"]').prop('checked', false);
						
					}

				});
				
				// 체크 리스트 삭제
				$('#holidayDeleteBtn').click(function(){
					
					if( $('input[name*="holidayList[]"]:checked').length > 0 ) {
						
						if(confirm("삭제 하시겠습니까?") ) {
							
							var checkList = '';
							
							$("input[name*='holidayList[]']:checked").each(function(){
								
								checkList = checkList + $(this).val() + ",";
								
							});
							
							checkList = checkList.substring(0,checkList.lastIndexOf( ","))
							
							console.log('checkList :' +checkList);
							
							location.href= '/personnel/generalAffairsManagement/holiday/holidayDelete?checkList='+checkList;
							
							
						} else {
							
							alert("삭제할 대상을 선택하세요.");
							
						    return false;
						    
						}		
					}
				});
			
				//수정 처리
				$('#holidayModifyBtn').click(function() {
					
					
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
				
					<div class="page-header">
						<h1>휴일 리스트</h1>
					</div>
					<br><br>
					<input type="date" id="searchYear">
					<button type="button" id="holidayListInsertBtn" class="btn btn-default btn-sm">휴일 등록</button>
					<button type="button" id="holidayDeleteBtn"  class="btn btn-default btn-sm">삭제</button>
					
					<form>
						<table class="table table-hover">
					        <thead>
					            <tr>
					            	<th><input type="checkbox" name="holidayListAll" id="holidayListAll"></th>
									<th>휴일 구분</th>
									<th>휴일 명</th>
									<th>휴일시작 일자</th>
									<th>휴일종료 일자</th>
									<th>수정</th>
					            </tr>
					        </thead>
					        <tbody>
			            		<c:forEach var="row" items="${holidayList}">
					                <tr>
					                	<td><input type="checkbox" name="holidayList[]" class="holidayListCheckbox" value="${row.holidayNumber }"></td>
					                    <td>${row.holidayCategory }</td>
					                    <td>${row.holidayName }</td>
					                    <td>${row.holidayStartDay }</td>
					                    <td>${row.holidayEndDay }</td>
					                    <td><button type="button" id="holidayModifyBtn"  class="btn btn-default btn-sm">수정</button></td>
					                </tr>
					            </c:forEach>
			        		</tbody>
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