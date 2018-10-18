// 2018.10.14 28기 전재현
package com.cafe24.iumium.personnel.statistics.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.common.dto.TeamCode;
import com.cafe24.iumium.personnel.statistics.dto.Department;

@Repository
public class DepartmentDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.statistics.dao.DepartmentMapper.";
	
	// 학과 검색 리스트
	public List<TeamCode> searchDepartmentList() {
		System.out.println("DepartmentDao-searchDepartmentList");
		
		return sqlSessionTemplate.selectList(nameSpace +"searchDepartmentList");
	}
	
	// 날짜 출력
	public List<Department> yearList() {
		System.out.println("DepartmentDao-yearList");
		
		return sqlSessionTemplate.selectList(nameSpace +"saerchYear");
	}
	
	// 검색 리스트
	public List<Department> selectDepartmentList(Department department) {
		System.out.println("DepartmentDao-selectDepartmentList");
		System.out.println("department : " +department);
		
		return sqlSessionTemplate.selectList(nameSpace +"searchDepartmentUserList" ,department);
	}
	
}
