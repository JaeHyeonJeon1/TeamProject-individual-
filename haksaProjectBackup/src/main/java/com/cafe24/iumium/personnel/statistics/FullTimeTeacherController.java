// 2018.10.15 28기 전재현
package com.cafe24.iumium.personnel.statistics;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.common.dto.JobGroupCode;
import com.cafe24.iumium.personnel.statistics.Service.FullTimeTeacherService;
import com.cafe24.iumium.personnel.statistics.dto.FullTimeTeacher;

@Controller
public class FullTimeTeacherController {

	@Autowired
	private FullTimeTeacherService fullTimeTeacherService;
	
	// 검색 년도, 보직별 출력
	@RequestMapping(value="/personnel/statistics/facultyStaffStatus/fullTimeTeacherSearch", method = RequestMethod.GET)
	public String fullTimeTeacherSearchYearList(Model model) {
		System.out.println("FullTimeTeacherController-fullTimeTeacherSearchList");
		
		List<JobGroupCode> groupList = fullTimeTeacherService.jobGroupCodeList();
		
		model.addAttribute("groupList", groupList);
		
		return "/personnel/statistics/facultyStaffStatus/fullTimeTeacherSearch";
	}
	
	// 직군 검색 리스트
	@RequestMapping(value="/personnel/statistics/fullTimeTeacher/fullTimeTeacherSerachAction", method = RequestMethod.GET)
	public String fullTimeTeacherSearchList(Model model ,HttpServletRequest request) {
		System.out.println("FullTimeTeacherController-fullTimeTeacherSearchList");
		
		String searchDate = request.getParameter("searchYear");
		String groupCode = request.getParameter("groupCode");
		
		List<FullTimeTeacher> searchFullTimeTeacherSearchList = fullTimeTeacherService.searchFullTimeTeacherList(searchDate, groupCode);
		
		model.addAttribute("searchFullTimeTeacherSearchList", searchFullTimeTeacherSearchList);
	
		return "/personnel/statistics/facultyStaffStatus/facultyStaffStatusList";
	}
}
