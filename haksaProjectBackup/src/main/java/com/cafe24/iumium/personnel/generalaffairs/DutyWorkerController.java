// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.personnel.generalaffairs.dto.DutyWorker;
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
}
