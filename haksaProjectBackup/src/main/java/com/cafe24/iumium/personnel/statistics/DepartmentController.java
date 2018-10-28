// 2018.10.15 28기 전재현
package com.cafe24.iumium.personnel.statistics;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.common.dto.TeamCode;
import com.cafe24.iumium.personnel.statistics.Service.DepartmentService;
import com.cafe24.iumium.personnel.statistics.dto.Department;

@Controller
public class DepartmentController {

	@Autowired
	private DepartmentService departmentService;
	
	// 학과 검색 리스트
	@RequestMapping(value="/personnel/statistics/department/departmentSearch", method = RequestMethod.GET)
	public String departmentSearchList(Model model) {
		System.out.println("DepartmentController-departmentSearchList");
		
		List<TeamCode> searchDepartmentList = departmentService.searchDepartmentList();
		
		List<Department> saerchYear = departmentService.searchYear();
		
		model.addAttribute("saerchYear", saerchYear);
		model.addAttribute("searchDepartmentList", searchDepartmentList);
		
		return "/personnel/statistics/department/departmentSearch";
	}
	
	// 검색 리스트 
	@RequestMapping(value="/personnel/statistics/department/departmentSearchAction", method = RequestMethod.GET)
	public String selectDepartmentList(Model model ,HttpServletRequest request) {
		System.out.println("DepartmentController-selectDepartmentList");
		
		List<Department> searchDepartmentList = departmentService.selectDepartmentList(request);
		
		model.addAttribute("searchDepartmentList", searchDepartmentList);
		
		return "personnel/statistics/department/departmentList";
	}
}
