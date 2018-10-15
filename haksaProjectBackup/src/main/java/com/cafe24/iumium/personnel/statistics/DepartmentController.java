// 2018.10.15 28기 전재현
package com.cafe24.iumium.personnel.statistics;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.common.dto.TeamCode;
import com.cafe24.iumium.personnel.statistics.Service.DepartmentService;

@Controller
public class DepartmentController {

	@Autowired
	private DepartmentService departmentService;
	
	// 학과 검색 리스트
	@RequestMapping(value="/personnel/statistics/department/departmentSearchList", method = RequestMethod.GET)
	public String departmentSearchList(Model model) {
		System.out.println("DepartmentController-departmentSearchList");
		
		List<TeamCode> searchDepartmentList = departmentService.searchDepartmentList();
		
		model.addAttribute("searchDepartmentList", searchDepartmentList);
		
		return "/personnel/statistics/department/departmentSearchList";
	}
}
