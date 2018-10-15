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
	public List<FacultyStaffStatus> selectFacultyStaffStatusList(int selectYear) {
		System.out.println("FacultyStaffStatusDao-selectFacultyStaffStatusList");
		
		return sqlSessionTemplate.selectList(nameSpace +"selectfacultyStaffStatusList",selectYear);
	}
	
	// 이전검색년도 교직원 리스트
	public List<FacultyStaffStatus> selectTheRemainingYearsList(String selectTheRemainingYearsList){
		System.out.println("FacultyStaffStatusDao-selectTheRemainingYearsList");
		
		return sqlSessionTemplate.selectList(nameSpace +"selectTheRemainingYearsList",selectTheRemainingYearsList);
	}
	
	// 검색 년도 출력
	public String searchFacultyStaffStatusYear() {
		System.out.println("FacultyStaffStatusDao-selectFacultyStaffStatusYear");
		
		return sqlSessionTemplate.selectOne(nameSpace +"searchYear");
	}
}
