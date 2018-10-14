// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.common.dto.DepartmentCode;
import com.cafe24.iumium.common.dto.JobGroupCode;
import com.cafe24.iumium.common.dto.TeamCode;
import com.cafe24.iumium.personnel.generalaffairs.dto.DutyWorker;
import com.cafe24.iumium.personnel.generalaffairs.dto.UserCheckList;

@Repository
public class DutyWorkerDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.generalaffairs.dao.DutyWorkerMapper.";
	
	// 당직 리스트
	public List<DutyWorker> selectWorkerList() {
		System.out.println("DutyWorkerDao-selectWorkerList");
		
		return sqlSessionTemplate.selectList(nameSpace + "selectWorkerList");
	}
	
	// 부서코드 리스트
	public List<DepartmentCode> selectAllDepartmentCodes() {
		System.out.println("DutyWorkerDao-selectAllDepartmentCodes");
		
		return sqlSessionTemplate.selectList(nameSpace + "searchDepartmentCodesList");
	}
	
	// 팁코드 리스트
	public List<TeamCode> searchTeamCodesList(String deptCode) {
		System.out.println("DutyWorkerDao-searchTeamCodesList");
		
		return sqlSessionTemplate.selectList(nameSpace + "searchTeamCodesList" ,deptCode);
	}
	
	// 직군코드 리스트
	public List<JobGroupCode> searchJobGroupCodesList(String teamCode) {
		System.out.println("DutyWorkerDao-searchJobGroupCodesList");
		
		return sqlSessionTemplate.selectList(nameSpace + "searchTeamCodesList" ,teamCode);
	}
	
	// 조건검색 리스트
	public List<UserCheckList> searchUsertCheckList(String typeCode) {
		System.out.println("DutyWorkerDao-searchJobTypeCodesList");
		
		return sqlSessionTemplate.selectList(nameSpace + "searchUserList" ,typeCode);
	}
}
