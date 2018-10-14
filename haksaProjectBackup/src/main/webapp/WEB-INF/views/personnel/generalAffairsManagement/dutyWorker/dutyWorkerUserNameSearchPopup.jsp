<!-- 2018.10.12 28기 전재현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>user name search</title>
		
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
		
		<script>
		
			// 검색전 리스트 숨기기
			$('#searchUserCheck').hide();
			
			$(document).ready(function(){
				console.log('user name search-ready');
				
				//팀코드 리스트
				if($('#searchTeamCodes').val() != 'nullDepartmentCodes') {
					console.log('user name search-searchTeamCodes');
					
					var departmentCode = {teamCode : $('#searchDepartmentCodes').val() };
					
					$.ajax({
						url:'/personnel/generalAffairsManagement/dutyWorker/dutyWorkerUserNameSearchPopup/searchTeamCodes'
	    					, type:'GET'
	    					, dataType:'JSON'
	    					, async   : false
	    					, data: deptCode
	    					, success: function(data){
	    						
	    						var TeamCodesList = searchTeamCodeList(data);
	    						
	    						$('#searchTeamt').empty();
	    						$('#searchTeamt').append("<option value="+data.jobGroupCode+">"+data.jobGroupName+"</option>");
	    					}
					});
				}
				
				// 직군코드 리스트
				if($('#searchJobGroupCodes').val() != 'nullsearchJobGroupCodes') {
					console.log('user name search-searchJobGroupCodes');
					
					var teamCode = {teamCode : $('#searchTeamCodes').val() };
					
					$.ajax({
						url:'/personnel/generalAffairsManagement/dutyWorker/dutyWorkerUserNameSearchPopup/searchJobGroupCodes'
	    					, type:'GET'
	    					, dataType:'JSON'
	    					, async   : false
	    					, data: teamCode
	    					, success: function(data){
	    						
	    						var groupCodes = searchJobGroupCodeList(data);
	    						
	    						$('#searchJobGroupCodes').empty();
	    						$('#searchJobGroupCodes').append("<option value="+data.jobGroupCode+">"+data.jobGroupName+"</option>");
	    					}
					});
				}
				
				// 조건검색
				$('#searchUserList').click(function() {
					console.log('user name search-userCheck');
					
					var typeCode = {typeCode : $('#searchJobTypeCodes').val() };
					
					$.ajax({
						url:'/personnel/generalAffairsManagement/dutyWorker/dutyWorkerUserNameSearchPopup/searchUserCheckList'
	    					, type:'GET'
	    					, dataType:'JSON'
	    					, async   : false
	    					, data: typeCode
	    					, success: function(data){
	    						
	    						var groupCodes = searchJobGroupCodeList(data);
	    						
	    						$('#searchUserCheck').show();
	    						
	    						$('#searchUserCheckTitle').empty();
	    						$('#searchUserCheckTitle').append("<tr>");
	    						$('#searchUserCheckTitle').append("<th>부서</th>");
	    						$('#searchUserCheckTitle').append("<th>팀</th>");
	    						$('#searchUserCheckTitle').append("<th>직군</th>");
	    						$('#searchUserCheckTitle').append("<th>직종</th>");
	    						$('#searchUserCheckTitle').append("<th>직급</th>");
	    						$('#searchUserCheckTitle').append("<th>성명</th>");
	    						$('#searchUserCheckTitle').append("</tr>");
	    						
	    						$(data).each(function(index, item) {
	    							
	    							$('#searchUserCheckList').empty();
	    							$('#searchUserCheckTitle').append("<tr>");
	    							$('#searchUserCheckTitle').append("<td value="+item.deptCode+">"+item.deptNameKorean+"<td>");
	    							$('#searchUserCheckTitle').append("<td value="+item.teamCode+">"+item.teamNameKorean+"<td>");
	    							$('#searchUserCheckTitle').append("<td value="+item.groupCode+">"+item.groupName+"<td>");
	    							$('#searchUserCheckTitle').append("<td value="+item.typeCode+">"+item.typeName+"<td>");
	    							$('#searchUserCheckTitle').append("<td value="+item.rankCode+">"+item.rankNameKorean+"<td>");
	    							$('#searchUserCheckTitle').append("<td value="+item.personnelNumber+">"+item.humanName+"<td>");
	    							$('#searchUserCheckTitle').append("<tr>");
	    							
	    						});
	    					}
					});
				});
				
				// 리스트 선택
				$('#userChoiceActionBtn').click(function() {
					console.log('user name search-userCheck');
					
					var choiceBtn = $(this);
					
					var tr = choiceBtn.parent().parent();
					var td = tr.children();
					
					console.log('클릭한 Row의 모든 데이터 :' +tr.text() );
					
					var personnelNumber = td.eq(0).text();	// 성명코드
					
					
					function changeView(personnelNumber) {
						
						window.location.href="<c:url value='/personnel/generalAffairsManagement/dutyWorker/dutyWorkerUserNameSearchPopup/searchUserChoice'/>?deptCode="+deptCode+"teamCode="+teamCode+"groupCode="+groupCode+"typeCode="+typeCode+"rankCode="+rankCode+"personnelNumber="+personnelNumber;
						
						window.open('about:blank','_self').self.close();
					}
					
				});
			});
 
		</script>
		
	</head>
	<body>
		<form>
			<table>
				<tr>
					<td>
						부서 선택
						<select id="searchDepartmentCodes">
							<option value="nullDepartmentCodes">===선택===</option>
							<c:forEach var="row" items="departmentCodes">
								<option value="${row.deptCode}">${row.deptNameKorean}</option>
							</c:forEach>
						</select>
					</td>
					<td>
						팀 선택
						<select id="searchTeamCodes">
							<option value="null">===선택===</option>
						</select>
						직군 선택
						<select id="searchJobGroupCodes">
							<option value="nullsearchJobGroupCodes">===선택===</option>
						</select>
						직종 선택
						<select id="searchJobTypeCodes">
							<option value="nullsearchJobTypeCodes">===선택===</option>
						</select>
						<button type="button" id="searchUserList" value="검색"></button>
						<button type="button" id="userChoiceActionBtn" value="선택"></button>
					</td>
					<td>
						직급 선택
						<select id="searchDepartment">
							<option value="null">===선택===</option>
						</select>
						성명 선택
						<input type="text" >
						<button type="button" id="searchUserList" value="검색"></button>
						<button type="button" id="userChoiceActionBtn" value="선택"></button>
					</td>
				</tr>
			</table>
			
			<table id="searchUserCheck">
				<thead id="searchUserCheckTitle">
				
				</thead>
				<tbody id="searchUserCheckList">
				
				</tbody>
			</table>
		</form>
		
		
	</body>
</html>