// 2018.10.13 28기 전재현
package com.cafe24.iumium.personnel.statistics;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.common.dto.JobGroupCode;
import com.cafe24.iumium.common.dto.TeamCode;
import com.cafe24.iumium.personnel.statistics.Dto.FacultyStaffStatus;
import com.cafe24.iumium.personnel.statistics.Dto.FullTimeTeacher;
import com.cafe24.iumium.personnel.statistics.Service.StatisticsService;

@Controller
public class StatisticsController {

	@Autowired
	private StatisticsService statisticsService;
	
	// 교직원현황 년도 검색
	@RequestMapping(value="/personnel/statistics/facultyStaffStatus/facultyStaffStatusSearch", method = RequestMethod.GET)
	public String facultyStaffStatusYearList(Model model) {
		System.out.println("StatisticsController-selectFacultyStaffStatusList");
		
		int facultyStaffStatusSearchYear = statisticsService.searchYear();
		
		model.addAttribute("facultyStaffStatusSearchYear", facultyStaffStatusSearchYear);
		
		return "personnel/statistics/facultyStaffStatus/facultyStaffStatusSearch";
	}
	
	// 교직원현황 검색 리스트
	@RequestMapping(value="/personnel/statistics/facultyStaffStatus/facultyStaffStatusSearchAction", method = RequestMethod.GET)
	public String searchfacultyStaffStatusAction(Model model ,HttpServletRequest request) {
		System.out.println("StatisticsController-searchfacultyStaffStatusAction");
		
		String selectYear = request.getParameter("selectYear");
		
		List<FacultyStaffStatus> facultyStaffStatusList = statisticsService.selectfacultyStaffStatusList(selectYear);
		
		model.addAttribute("facultyStaffStatusList", facultyStaffStatusList);
		
		return "personnel/statistics/facultyStaffStatus/facultyStaffStatusSearchAction";
	}
	
	// 검색 년도, 보직별 출력
		@RequestMapping(value="/personnel/statistics/facultyStaffStatus/fullTimeTeacherSearch", method = RequestMethod.GET)
		public String fullTimeTeacherSearchYearList(Model model) {
			System.out.println("StatisticsController-fullTimeTeacherSearchList");
			
			int fullTimeTeacherSearchYear = statisticsService.searchYear();
			
			List<JobGroupCode> groupList = statisticsService.jobGroupCodeList();
			
			model.addAttribute("fullTimeTeacherSearchYear", fullTimeTeacherSearchYear);
			model.addAttribute("groupList", groupList);
			
			return "/personnel/statistics/facultyStaffStatus/fullTimeTeacherSearch";
		}
		
		// 직군 검색 리스트
		@RequestMapping(value="/personnel/statistics/fullTimeTeacher/fullTimeTeacherSerachAction", method = RequestMethod.GET)
		public String fullTimeTeacherSearchList(Model model ,HttpServletRequest request) {
			System.out.println("StatisticsController-fullTimeTeacherSearchList");
			
			String searchDate = request.getParameter("searchYear");
			String groupCode = request.getParameter("groupCode");
			
			List<FullTimeTeacher> searchFullTimeTeacherSearchList = statisticsService.searchFullTimeTeacherList(searchDate, groupCode);
			
			model.addAttribute("searchFullTimeTeacherSearchList", searchFullTimeTeacherSearchList);
		
			return "/personnel/statistics/facultyStaffStatus/facultyStaffStatusList";
		}
		
		// 학과 검색 리스트
		@RequestMapping(value="/personnel/statistics/department/departmentSearchList", method = RequestMethod.GET)
		public String departmentSearchList(Model model) {
			System.out.println("StatisticsController-departmentSearchList");
			
			List<TeamCode> searchDepartmentList = statisticsService.searchDepartmentList();
			
			model.addAttribute("searchDepartmentList", searchDepartmentList);
			
			return "/personnel/statistics/department/departmentSearchList";
		}
}
