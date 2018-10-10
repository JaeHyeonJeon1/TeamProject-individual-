// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.personnel.generalaffairs.dto.RewardTeachers;
import com.cafe24.iumium.personnel.generalaffairs.service.RewardTeachersService;

@Controller
public class RewardTeachersController {

	@Autowired
	private RewardTeachersService rewardTeachersService;
	
	// 포상 리스트 출력
	@RequestMapping(value="/personnel/generalAffairsManagement/reward/rewardList", method = RequestMethod.GET)
	public String rewardTeachersList(Model model) {
		System.out.println("RewardTeachersController-rewardTeachersList");
		
		List<RewardTeachers> rewardList = rewardTeachersService.rewardTeachers();
		
		model.addAttribute("rewardList" ,rewardList);
		
		return "personnel/generalAffairsManagement/reward/rewardList";
	}
}
