<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>side bar</title>
</head>
<body>
	<!-- Sidebar -->
	<ul class="sidebar navbar-nav">
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
				<i class="fas fa-fw fa-folder"></i> <span>공통코드 관리</span>
			</a>
			<div class="dropdown-menu" aria-labelledby="pagesDropdown">
				<a class="dropdown-item" href="/common/codes/agency">기관 코드</a> 
				<a class="dropdown-item" href="/common/codes/organization">기구 코드</a> 
				<a class="dropdown-item" href="/common/codes/department">부서 코드</a>
				<a class="dropdown-item" href="/common/codes/teamCode">팀 코드</a> 
				<a class="dropdown-item" href="/common/codes/jobGroup">직군 코드</a>
				<a class="dropdown-item" href="/common/codes/jobType">직종 코드</a>
				<a class="dropdown-item" href="/common/codes/jobRank">직급 코드</a>
				<a class="dropdown-item" href="/common/codes/jobPosition">직위 코드</a>
				<a class="dropdown-item" href="/common/codes/building">건물 코드</a>
				<a class="dropdown-item" href="/common/codes/room">강의실 코드</a>
				<a class="dropdown-item" href="/common/codes/country">국가 코드</a>
			</div>
		</li>
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
				<i class="fas fa-fw fa-folder"></i> <span>학적코드 관리</span>
			</a>
			<div class="dropdown-menu" aria-labelledby="pagesDropdown">
				<h1 class="dropdown-header">코드 관리</h1>
				<a class="dropdown-item" href="/schoolRegister/codes/semester">학기 코드</a> 
				<a class="dropdown-item" href="#">학기별상세일정</a> 
				<a class="dropdown-item" href="#">학적변동사유 코드</a>
				<a class="dropdown-item" href="#">상담구분 코드</a> 
				<a class="dropdown-item" href="#">상담결과 코드</a>
				<div class="dropdown-divider"></div>
			</div>
		</li>
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
				<i class="fas fa-fw fa-folder"></i> <span>수업코드 관리</span>
			</a>
			<div class="dropdown-menu" aria-labelledby="pagesDropdown">
				<a class="dropdown-item" href="/lecture/codes/Toc">이수구분 코드</a> 
				<a class="dropdown-item" href="/lecture/codes/subject">과목 코드</a> 
				<a class="dropdown-item" href="/lecture/codes/Qfel">강의평가항목 코드</a>
				<a class="dropdown-item" href="/lecture/codes/Afe">평가항목 배정 코드</a>
				<a class="dropdown-item" href="/lecture/codes/Gc">성적평가기준 코드</a> 
			</div>
		</li>
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
				<i class="fas fa-fw fa-folder"></i> <span>졸업코드 관리</span>
			</a>
			<div class="dropdown-menu" aria-labelledby="pagesDropdown">
				<a class="dropdown-item" href="#">졸업불가사유 코드</a> 
			</div>
		</li>
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
				<i class="fas fa-fw fa-folder"></i> <span>총무 관리</span>
			</a>
			<div class="dropdown-menu" aria-labelledby="pagesDropdown">
				<a class="dropdown-item" href="/personnel/generalAffairsManagement/holiday/holidayList">휴일</a> 
				<a class="dropdown-item" href="/personnel/generalAffairsManagement/vehicle/vehicleList">차량운행</a>
				<a class="dropdown-item" href="/personnel/generalAffairsManagement/vacation/vacationList">휴가</a>
				<a class="dropdown-item" href="/personnel/generalAffairsManagement/training/trainingList">연수</a>
				<a class="dropdown-item" href="/personnel/generalAffairsManagement/dutyWorker/dutyWorkerList">당직</a>
				<a class="dropdown-item" href="/personnel/generalAffairsManagement/reward/rewardList">포상</a>
				<a class="dropdown-item" href="/personnel/generalAffairsManagement/apology/apologyList">시말서</a>
				<a class="dropdown-item" href="/personnel/generalAffairsManagement/disciplinary/disciplinaryList">징계</a>
			</div>
		</li>
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
				<i class="fas fa-fw fa-folder"></i> <span>통계현황 관리</span>
			</a>
			<div class="dropdown-menu" aria-labelledby="pagesDropdown">
				<a class="dropdown-item" href="/personnel/statistics/facultyStaffStatus/facultyStaffStatusSearch">교직원 현황</a>
				<a class="dropdown-item" href="/personnel/statistics/foreignSchoolStaff/foreignSchoolStaffSearch">외국인교원 현황</a>
				<a class="dropdown-item" href="/personnel/statistics/department/departmentSearch">학과별교원현황 출력</a> 
				<a class="dropdown-item" href="/personnel/statistics/fullTimeTeacher/fullTimeTeacherSearch">전임교원 현황</a> 
				<a class="dropdown-item" href="#">겸임 및 초빙 교원현황 출력</a>
				<a class="dropdown-item" href="#">연령별교직원현황 출력</a>
				<a class="dropdown-item" href="#">교직원명단 출력</a> 
				<a class="dropdown-item" href="#">교원재임용현황 출력</a>
				<a class="dropdown-item" href="#">교원승진임용현황 출력</a>
			</div>
		</li>
	</ul>
</body>
</html>