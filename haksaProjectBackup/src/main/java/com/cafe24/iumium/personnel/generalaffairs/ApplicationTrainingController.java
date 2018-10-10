// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.personnel.generalaffairs.dto.ApplicationTraining;
import com.cafe24.iumium.personnel.generalaffairs.service.ApplicationTrainingService;

@Controller
public class ApplicationTrainingController {

	@Autowired
	private ApplicationTrainingService applicationTrainingService;
	
	// 연수 리스트
	@RequestMapping(value="/personnel/generalAffairsManagement/training/trainingList", method = RequestMethod.GET)
	public String ApplicationTrainingList(Model model) {
		
		List<ApplicationTraining> trainingList = applicationTrainingService.trainingList();
				
		model.addAttribute("trainingList" ,trainingList);
		
		return "personnel/generalAffairsManagement/training/trainingList";
	}
}
