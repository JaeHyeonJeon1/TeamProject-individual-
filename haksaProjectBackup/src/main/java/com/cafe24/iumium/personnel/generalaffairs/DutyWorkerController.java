// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.common.dto.DepartmentCode;
import com.cafe24.iumium.common.dto.JobGroupCode;
import com.cafe24.iumium.common.dto.TeamCode;
import com.cafe24.iumium.personnel.generalaffairs.dto.DutyWorker;
import com.cafe24.iumium.personnel.generalaffairs.dto.UserCheckList;
import com.cafe24.iumium.personnel.generalaffairs.service.DutyWorkerService;

@Controller
public class DutyWorkerController {

	@Autowired
	private DutyWorkerService dutyWorkerService;
	
	// 당직 리스트
	@RequestMapping(value="/personnel/generalAffairsManagement/dutyWorker/dutyWorkerList", method = RequestMethod.GET)
	public String workerList(Model model) {
		System.out.println("dutyWorkerController-workerList");
		
		List<DutyWorker> workerList = dutyWorkerService.workerList();
		
		model.addAttribute("workerList" ,workerList);
		
		return "personnel/generalAffairsManagement/dutyWorker/dutyWorkerList";
		
	}
	
	// 부서검색창 리스트
	@RequestMapping(value="/personnel/generalAffairsManagement/dutyWorkerUserNameSearchPopup", method = RequestMethod.GET)
	public String dutyWorkerUserNameSearchPopup(Model model) {
		System.out.println("dutyWorkerController-dutyWorkerUserNameSearchPopup");

		List<DepartmentCode> departmentCodes = dutyWorkerService.selectAllDepartmentCodes();
		
		model.addAttribute("departmentCodes" ,departmentCodes);
		
		return "personnel/generalAffairsManagement/dutyWorkerUserNameSearchPopup";
	}
	
	// 팀코드검색창 리스트
	@RequestMapping(value="/personnel/generalAffairsManagement/dutyWorker/dutyWorkerUserNameSearchPopup/searchTeamCodes", method = RequestMethod.GET)
	public String searchTeamCodeList(Model model ,String deptCode) {
		System.out.println("dutyWorkerController-searchTeamCodeList");
		
		List<TeamCode> searchTeamCodeList = dutyWorkerService.searchTeamCodesList(deptCode);
		
		model.addAttribute("searchTeamCodeList", searchTeamCodeList);
		
		return "personnel/generalAffairsManagement/dutyWorkerUserNameSearchPopup";
	}
	
	// 직군코드검색창 리스트
	@RequestMapping(value="/personnel/generalAffairsManagement/dutyWorker/dutyWorkerUserNameSearchPopup/searchJobGroupCodes", method = RequestMethod.GET)
	public String searchJobGroupCodesList(Model model ,String teamCode) {
		System.out.println("dutyWorkerController-searchJobGroupCodesList");
		
		List<JobGroupCode> searchJobGroupCodesList = dutyWorkerService.searchJobGroupCodesList(teamCode);
		
		model.addAttribute("searchJobGroupCodesList", searchJobGroupCodesList);
		
		return "personnel/generalAffairsManagement/dutyWorkerUserNameSearchPopup";
	}
	
	// 조건검색 리스트
	@RequestMapping(value="/personnel/generalAffairsManagement/dutyWorker/dutyWorkerUserNameSearchPopup/searchUserCheckList", method = RequestMethod.GET)
	public String searchUserCheckList(Model model ,String typeCode) {
		System.out.println("dutyWorkerController-searchUserCheckList");
		
		List<UserCheckList> searchUserCheckList = dutyWorkerService.searchUserCheckList(typeCode);
		
		model.addAttribute("searchUserCheckList", searchUserCheckList);
		
		return "personnel/generalAffairsManagement/dutyWorkerUserNameSearchPopup";
	}
	
	// 리스트 선택
	@RequestMapping(value="/personnel/generalAffairsManagement/dutyWorker/dutyWorkerUserNameSearchPopup/searchUserCheck", method = RequestMethod.GET)
	public String searchUserChoice() {
		System.out.println("dutyWorkerController-searchUserChoice");
		
		/*List<DutyWorker> searchUserChoice = */
		
		return null;
	}
	
	// 승인 처리
	@RequestMapping(value="/personnel/generalAffairsManagement/dutyWorker/acknowledgmentBtn", method = RequestMethod.POST)
	public String acknowledgmentModify(List<String> acknowledgmentList) {
		System.out.println("dutyWorkerController-acknowledgmentModify");
		
		
		
		return null;
	}
	
	// 당직 입력창
	@RequestMapping(value="/personnel/generalAffairsManagement/dutyWorker/dutyWorkerInsert", method = RequestMethod.GET)
	public String dutyWorkerInsert() {
		System.out.println("dutyWorkerController-dutyWorkerInsert");
		
		return "personnel/generalAffairsManagement/dutyWorker/dutyWorkerInsert";
	}
}
