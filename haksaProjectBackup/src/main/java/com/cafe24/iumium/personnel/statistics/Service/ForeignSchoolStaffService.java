// 2018.10.18 28기 전재현
package com.cafe24.iumium.personnel.statistics.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.statistics.dao.ForeignSchoolStaffDao;
import com.cafe24.iumium.personnel.statistics.dto.FacultyStaffStatus;

@Service
@Transactional
public class ForeignSchoolStaffService {

	@Autowired
	private ForeignSchoolStaffDao foreignSchoolStaffDao;
	
	// 날짜
	public List<FacultyStaffStatus> yearList() {
		System.out.println("ForeignSchoolStaffService-yearList");
		
		return foreignSchoolStaffDao.yearList();
	}
	
	// 검색 리스트
	public List<FacultyStaffStatus> foreignSchoolStaffList(HttpServletRequest request) {
		System.out.println("ForeignSchoolStaffService-foreignSchoolStaffList");
		
		String yearList = request.getParameter("yearList");
		String countryCode = request.getParameter("countryCode");
		
		FacultyStaffStatus facultyStaffStatus = new FacultyStaffStatus();
		
		facultyStaffStatus.setYearList(yearList);
		facultyStaffStatus.setCountryCode(countryCode);
		
		return foreignSchoolStaffDao.foreignSchoolStaffList(facultyStaffStatus);
	}
}
