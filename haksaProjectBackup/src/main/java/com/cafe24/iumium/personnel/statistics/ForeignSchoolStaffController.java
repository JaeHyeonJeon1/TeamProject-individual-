// 2018.10.18 28기 전재현
package com.cafe24.iumium.personnel.statistics;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.personnel.statistics.Service.ForeignSchoolStaffService;
import com.cafe24.iumium.personnel.statistics.dto.FacultyStaffStatus;

@Controller
public class ForeignSchoolStaffController {

	@Autowired
	private ForeignSchoolStaffService foreignSchoolStaffService;
	
	// 날짜 출력
	@RequestMapping(value="/personnel/statistics/foreignSchoolStaff/foreignSchoolStaffSearch", method = RequestMethod.GET)
	public String yearList(Model model) {
		System.out.println("ForeignSchoolStaffController-yearList");
		
		List<FacultyStaffStatus> saerchYear = foreignSchoolStaffService.yearList();
		
		model.addAttribute("saerchYear", saerchYear);
		
		return "personnel/statistics/foreignSchoolStaff/foreignSchoolStaffSearch";
	}
	
	// 검색 실행 
	@RequestMapping(value="/personnel/statistics/foreignSchoolStaff/foreignSchoolStaffSearchAction", method = RequestMethod.GET)
	public String foreignSchoolStaffList(Model model ,HttpServletRequest request) {
		System.out.println("ForeignSchoolStaffController-foreignSchoolStaffList");
		
		List<FacultyStaffStatus> foreignSchoolStaffList = foreignSchoolStaffService.foreignSchoolStaffList(request);
		
		model.addAttribute("foreignSchoolStaffList", foreignSchoolStaffList);
		
		return "personnel/statistics/foreignSchoolStaff/foreignSchoolStaffList";
	}
}
