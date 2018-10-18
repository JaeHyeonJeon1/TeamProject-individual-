// 2018.10.15 28기 전재현
package com.cafe24.iumium.personnel.statistics.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.statistics.dao.FacultyStaffStatusDao;
import com.cafe24.iumium.personnel.statistics.dto.FacultyStaffStatus;

@Service
@Transactional
public class FacultyStaffStatusServie {

	@Autowired
	private FacultyStaffStatusDao facultyStaffStatusDao;
	
	// 검색년도 교직원 리스트
	public List<FacultyStaffStatus> selectfacultyStaffStatusList(FacultyStaffStatus facultyStaffStatus ) {
		System.out.println("FacultyStaffStatusServie-selectfacultyStaffStatusList");
		System.out.println("searchYear :" +facultyStaffStatus);
		
		return facultyStaffStatusDao.selectFacultyStaffStatusList(facultyStaffStatus);
	}
	
	// 날짜 검색
	public List<FacultyStaffStatus> searchYear() {
		System.out.println("FacultyStaffStatusServie-searchYear");
		
		return facultyStaffStatusDao.searchYear();
	}
}
