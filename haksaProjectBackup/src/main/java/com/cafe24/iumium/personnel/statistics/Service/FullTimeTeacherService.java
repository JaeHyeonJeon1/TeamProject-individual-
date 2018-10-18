// 2018.10.15 28기 전재현
package com.cafe24.iumium.personnel.statistics.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.common.dto.JobGroupCode;
import com.cafe24.iumium.personnel.statistics.dao.FullTimeTeacherDao;
import com.cafe24.iumium.personnel.statistics.dto.FullTimeTeacher;

@Service
@Transactional
public class FullTimeTeacherService {

	@Autowired
	private FullTimeTeacherDao fullTimeTeacherDao;
	
	// 날짜
	public List<FullTimeTeacher> yearList() {
		System.out.println("StatisticsService-yearList");
		
		return fullTimeTeacherDao.yearList();
	}
	
	// 직군 리스트
	public List<JobGroupCode> jobGroupCodeList() {
		System.out.println("StatisticsService-jobGroupCodeList");
		
		return fullTimeTeacherDao.groupCodeList();
	}
	
	// 검색 리스트
	public List<FullTimeTeacher> searchFullTimeTeacherList(HttpServletRequest request) {
		System.out.println("FullTimeTeacherService-searchFullTimeTeacherList");
		
		String yearList = request.getParameter("yearList");
		String groupNameList = request.getParameter("groupNameList");
		
		FullTimeTeacher fullTimeTeacher = new FullTimeTeacher();
		
		fullTimeTeacher.setYearList(yearList);
		fullTimeTeacher.setJobGroupCode(groupNameList);
		System.out.println("fullTimeTeacher :" +fullTimeTeacher);
		
		return fullTimeTeacherDao.searchFullTimeTeacherList(fullTimeTeacher);
	}
}
