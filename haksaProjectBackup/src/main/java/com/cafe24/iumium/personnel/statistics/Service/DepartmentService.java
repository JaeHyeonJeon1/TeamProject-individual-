// 2018.10.15 28기 전재현
package com.cafe24.iumium.personnel.statistics.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.common.dto.TeamCode;
import com.cafe24.iumium.personnel.statistics.dao.DepartmentDao;
import com.cafe24.iumium.personnel.statistics.dto.Department;

@Service
@Transactional
public class DepartmentService {

	@Autowired
	private DepartmentDao departmentDao;
	
	// 학과 검색 리스트
	public List<TeamCode> searchDepartmentList() {
		System.out.println("DepartmentService-searchDepartmentList");
		
		return departmentDao.searchDepartmentList();
	}
	
	// 날짜 출력
	public List<Department> searchYear() {
		System.out.println("DepartmentService-searchYear");
		
		return departmentDao.yearList();
	}
	
	// 검색 리스트
	public List<Department> selectDepartmentList(HttpServletRequest request ) {
		System.out.println("DepartmentService-selectDepartmentList");
		
		String yearList = request.getParameter("searchYear");
		String departmentList = request.getParameter("departmentList");
		
		System.out.println("yearList :"+yearList);
		System.out.println("departmentList :" +departmentList);
		
		Department department = new Department();
		
		department.setYearList(yearList);
		department.setDepartmentList(departmentList);
		
		return departmentDao.selectDepartmentList(department);
	}
	
}
