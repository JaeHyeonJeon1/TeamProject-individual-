// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.personnel.generalaffairs.dto.TeachersWrittenApology;
import com.cafe24.iumium.personnel.generalaffairs.service.TeachersWrittenApologyService;

@Controller
public class TeachersWrittenApologyController {
	
	@Autowired
	private TeachersWrittenApologyService teachersWrittenApologyService;
	
	@RequestMapping(value="/personnel/generalAffairsManagement/apology/apologyList", method = RequestMethod.GET)
	public String tearchersWrittenApologyList(Model model) {
		
		List<TeachersWrittenApology> pologyList = teachersWrittenApologyService.apologyList();
		
		model.addAttribute("pologyList", pologyList);
		
		return "personnel/generalAffairsManagement/apology/apologyList";
		
	}

}
