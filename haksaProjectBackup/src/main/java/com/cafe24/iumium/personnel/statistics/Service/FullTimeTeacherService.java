// 2018.10.15 28기 전재현
package com.cafe24.iumium.personnel.statistics.Service;

import java.util.List;

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
	
	// 직군 리스트
	public List<JobGroupCode> jobGroupCodeList() {
		System.out.println("StatisticsService-jobGroupCodeList");
		
		return fullTimeTeacherDao.groupCodeList();
	}
	
	// 검색 리스트
	public List<FullTimeTeacher> searchFullTimeTeacherList(String searchDate ,String groupCode) {
		System.out.println("FullTimeTeacherService-searchFullTimeTeacherList");
		
		return fullTimeTeacherDao.searchFullTimeTeacherList(searchDate ,groupCode);
	}
}
