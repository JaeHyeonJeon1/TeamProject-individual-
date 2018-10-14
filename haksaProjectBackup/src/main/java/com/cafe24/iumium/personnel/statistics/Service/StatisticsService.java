package com.cafe24.iumium.personnel.statistics.Service;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.common.dto.JobGroupCode;
import com.cafe24.iumium.common.dto.TeamCode;
import com.cafe24.iumium.personnel.statistics.Dao.DepartmentDao;
import com.cafe24.iumium.personnel.statistics.Dao.FacultyStaffStatusDao;
import com.cafe24.iumium.personnel.statistics.Dao.FullTimeTeacherDao;
import com.cafe24.iumium.personnel.statistics.Dto.FacultyStaffStatus;
import com.cafe24.iumium.personnel.statistics.Dto.FullTimeTeacher;

@Service
@Transactional
public class StatisticsService {
	
	@Autowired
	private FacultyStaffStatusDao facultyStaffStatusDao;
	private FullTimeTeacherDao fullTimeTeacherDao;
	private DepartmentDao departmentDao;
	
	// 현재 년도 구하기
	public int searchYear() {
		System.out.println("StatisticsService-FacultyStaffStatusDate");
		
		int searchYearViewMore = 0;
		
		if(searchYearViewMore == 0) {
			
			searchYearViewMore = 5;
		} else {
			
			searchYearViewMore = searchYearViewMore+5;
		}
		
		int year = Calendar.getInstance().get((Calendar.YEAR-searchYearViewMore));
		
		return year;
	}
	
	// 검색년도 교직원 리스트
	public List<FacultyStaffStatus> selectfacultyStaffStatusList(String selectYear) {
		System.out.println("StatisticsService-selectfacultyStaffStatusList");
		
		return facultyStaffStatusDao.selectFacultyStaffStatusList(selectYear);
	}
	
	// 직군 리스트
	public List<JobGroupCode> jobGroupCodeList() {
		System.out.println("StatisticsService-jobGroupCodeList");
		
		return fullTimeTeacherDao.groupCodeList();
	}
	
	// 검색 리스트
	public List<FullTimeTeacher> searchFullTimeTeacherList(String searchDate ,String groupCode) {
		System.out.println("StatisticsService-searchFullTimeTeacherList");
		
		return fullTimeTeacherDao.searchFullTimeTeacherList(searchDate ,groupCode);
	}
	
	// 학과 검색 리스트
	public List<TeamCode> searchDepartmentList() {
		System.out.println("StatisticsService-searchDepartmentList");
		
		return departmentDao.searchDepartmentList();
	}
}
