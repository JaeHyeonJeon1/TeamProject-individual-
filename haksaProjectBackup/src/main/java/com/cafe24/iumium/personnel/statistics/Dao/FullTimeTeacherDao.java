// 2018.10.14 28기 전재현
package com.cafe24.iumium.personnel.statistics.Dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.common.dto.JobGroupCode;
import com.cafe24.iumium.personnel.statistics.Dto.FullTimeTeacher;

@Repository
public class FullTimeTeacherDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.generalaffairs.dao.RewardTeachersMapper.";
	
	// 그룹리스트
	public List<JobGroupCode> groupCodeList() {
		System.out.println("FullTimeTeacherDao-groupCodeList");
		
		return sqlSessionTemplate.selectList(nameSpace +"selectGroupCode");
	}
	
	// 검색 리스트
	public List<FullTimeTeacher> searchFullTimeTeacherList(String searchDate ,String groupCode) {
		System.out.println("FullTimeTeacherDao-searchFullTimeTeacherList");
		
		return sqlSessionTemplate.selectList(nameSpace +"selectFullTimeTeacherList" ,searchDate + groupCode);
	}
}
