// 2018.10.15 28기 전재현
package com.cafe24.iumium.personnel.statistics;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.personnel.statistics.Service.FacultyStaffStatusServie;
import com.cafe24.iumium.personnel.statistics.dto.FacultyStaffStatus;

@Controller
public class FacultyStaffStatusController {

	@Autowired
	private FacultyStaffStatusServie facultyStaffStatusServie;
	
	// 교직원현황 년도 검색
	@RequestMapping(value="/personnel/statistics/facultyStaffStatus/facultyStaffStatusSearch", method = RequestMethod.GET)
	public String facultyStaffStatusYearList(Model model) {
		System.out.println("FacultyStaffStatusController-facultyStaffStatusYearList");
		
		List<FacultyStaffStatus> saerchYear = facultyStaffStatusServie.searchYear();
		
		model.addAttribute("saerchYear", saerchYear);
		
		return "personnel/statistics/facultyStaffStatus/facultyStaffStatusSearch";
	}

	// 교직원현황 검색 리스트
	@RequestMapping(value="/personnel/statistics/facultyStaffStatus/facultyStaffStatusSearchAction", method = RequestMethod.GET)
	public String searchfacultyStaffStatusAction(Model model ,HttpServletRequest request) {
		System.out.println("FacultyStaffStatusController-searchfacultyStaffStatusAction");
		
		List<FacultyStaffStatus> facultyStaffStatusList = facultyStaffStatusServie.selectfacultyStaffStatusList(request);
		
		model.addAttribute("facultyStaffStatusList", facultyStaffStatusList);
		
		return "personnel/statistics/facultyStaffStatus/facultyStaffStatusList";
	}
	
}
