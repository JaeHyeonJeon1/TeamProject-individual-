// 2018.10.14 28기 전재현
package com.cafe24.iumium.personnel.statistics.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.common.dto.JobGroupCode;
import com.cafe24.iumium.personnel.statistics.dto.FullTimeTeacher;

@Repository
public class FullTimeTeacherDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.statistics.dao.FullTimeTeacherMapper.";
	
	// 날짜 조회
	public List<FullTimeTeacher> yearList() {
		System.out.println("FullTimeTeacherDao-yearList");
		
		return sqlSessionTemplate.selectList(nameSpace +"saerchYear");
	}
	
	// 직군 리스트
	public List<JobGroupCode> groupCodeList() {
		System.out.println("FullTimeTeacherDao-groupCodeList");
		
		return sqlSessionTemplate.selectList(nameSpace +"groupList");
	}
	
	// 검색 리스트
	public List<FullTimeTeacher> searchFullTimeTeacherList(FullTimeTeacher fullTimeTeacher) {
		System.out.println("FullTimeTeacherDao-searchFullTimeTeacherList");
		
		return sqlSessionTemplate.selectList(nameSpace +"searchGroupList" ,fullTimeTeacher);
	}
}
