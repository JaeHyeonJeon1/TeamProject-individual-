// 2018.10.13 28기 전재현
package com.cafe24.iumium.personnel.statistics.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.statistics.dto.FacultyStaffStatus;

@Repository
public class FacultyStaffStatusDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.statistics.dao.FacultyStaffStatusMapper.";
	
	// 검색년도 교직원 리스트
	public List<FacultyStaffStatus> selectFacultyStaffStatusList(FacultyStaffStatus facultyStaffStatus) {
		System.out.println("FacultyStaffStatusDao-selectFacultyStaffStatusList");
		System.out.println("facultyStaffStatus :" +facultyStaffStatus);
		
		return sqlSessionTemplate.selectList(nameSpace +"searchYearUserList" ,facultyStaffStatus);
	}
	
	//날짜 검색
	public List<FacultyStaffStatus> searchYear() {
		System.out.println("FacultyStaffStatusDao-searchYear");
		
		return sqlSessionTemplate.selectList(nameSpace +"saerchYear");
	}
}
