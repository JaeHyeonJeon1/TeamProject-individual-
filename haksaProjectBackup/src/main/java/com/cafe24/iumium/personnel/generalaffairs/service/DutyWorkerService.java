// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.common.dto.DepartmentCode;
import com.cafe24.iumium.common.dto.JobGroupCode;
import com.cafe24.iumium.common.dto.TeamCode;
import com.cafe24.iumium.personnel.generalaffairs.dao.DutyWorkerDao;
import com.cafe24.iumium.personnel.generalaffairs.dto.DutyWorker;
import com.cafe24.iumium.personnel.generalaffairs.dto.UserCheckList;

@Service
@Transactional
public class DutyWorkerService {

	@Autowired
	private DutyWorkerDao dutyWorkerDao;
	
	// 당직 리스트 출력
	public List<DutyWorker> workerList() {
		System.out.println("DutyWorkerService-workerList");
		
		return dutyWorkerDao.selectWorkerList();
	}
	
	// 부서코드 리스트 
	public List<DepartmentCode> selectAllDepartmentCodes() {
		System.out.println("DutyWorkerService-selectAllDepartmentCodes");
		
		return dutyWorkerDao.selectAllDepartmentCodes();
	}
	
	// 팀코드 리스트 
	public List<TeamCode> searchTeamCodesList(String deptCode) {
		System.out.println("DutyWorkerService-searchTeamCodesList");
	
		return dutyWorkerDao.searchTeamCodesList(deptCode);
	}
	
	// 직군코드 리스트
	public List<JobGroupCode> searchJobGroupCodesList(String teamCode) {
		System.out.println("DutyWorkerService-searchJobGroupCodesList");
		
		return dutyWorkerDao.searchJobGroupCodesList(teamCode);
	}
	
	// 조건검색 리스트
	public List<UserCheckList> searchUserCheckList(String typeCode) {
		System.out.println("DutyWorkerService-searchUserCheckList");
		
		return dutyWorkerDao.searchUsertCheckList(typeCode);
	}
}
