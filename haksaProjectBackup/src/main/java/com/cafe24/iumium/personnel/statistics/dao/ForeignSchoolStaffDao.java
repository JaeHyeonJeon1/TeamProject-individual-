// 2018.10.18 28기 전재현
package com.cafe24.iumium.personnel.statistics.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.statistics.dto.FacultyStaffStatus;

@Repository
public class ForeignSchoolStaffDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.statistics.dao.ForeignSchoolStaffMapper.";
	
	// 날짜
	public List<FacultyStaffStatus> yearList() {
		System.out.println("ForeignSchoolStaffDao-yearList");
		
		return sqlSessionTemplate.selectList(nameSpace +"saerchYear");
	}
	
	// 검색 리스트
	public List<FacultyStaffStatus> foreignSchoolStaffList(FacultyStaffStatus facultyStaffStatus) {
		System.out.println("ForeignSchoolStaffDao-foreignSchoolStaffList");
		
		return sqlSessionTemplate.selectList(nameSpace +"foreignSchoolStaffList" ,facultyStaffStatus);
	}
}
