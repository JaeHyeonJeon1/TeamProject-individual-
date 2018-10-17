// 2018.10.01 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cafe24.iumium.personnel.generalaffairs.dto.Holiday;
import com.cafe24.iumium.personnel.generalaffairs.service.HolidayService;

@Controller
public class HolidayController {
	
	@Autowired
	private HolidayService holidayService;
	
	// 휴일 리스트 출력
	@RequestMapping(value="/personnel/generalAffairsManagement/holiday/holidayList", method = RequestMethod.GET)
	public String holidayList(Model model) {
		
		List<Holiday> holidayList = holidayService.holidayList();
		
		model.addAttribute("holidayList", holidayList);
		
		return "personnel/generalAffairsManagement/holiday/holidayList";
	}
	
	// 입력화면으로 이동
	@RequestMapping(value="/personnel/generalAffairsManagement/holiday/holidayInsert", method = RequestMethod.GET)
	public String holidayInsert() {
		System.out.println("HolidayController-holidayInsert");
		
		return "personnel/generalAffairsManagement/holiday/holidayInsert";
	}
	
	// 입력처리 실행
	@RequestMapping(value="/personnel/generalAffairsManagement/holiday/holidayInsertAction", method = RequestMethod.POST)
	public String holidayInsertAction(@ModelAttribute Holiday holiday ,HttpSession session ,RedirectAttributes redirect) {
		System.out.println("HolidayController-holidayInsertAction");
		
		String userId = (String)session.getAttribute("userId");
		
		holiday.setPersonnelNumber(userId);
		
		holidayService.holidayInsert(holiday);
		
		redirect.addFlashAttribute("result", "입력");
		
		return "redirect:/personnel/generalAffairsManagement/holiday/holidayList";
	}
	
	// 삭제처리 
	@RequestMapping(value="/personnel/generalAffairsManagement/holiday/holidayDelete", method = RequestMethod.GET)
	public String checkListDelete(@RequestParam(value = "checkList") String checkListDelete ,RedirectAttributes redirect) {
		System.out.println("HolidayController-checkListDelete");
		System.out.println("checkListDelete :" +checkListDelete);
		
		holidayService.checkListDelete(checkListDelete);
			
		redirect.addFlashAttribute("delete", "삭제");
		
		return "redirect:/personnel/generalAffairsManagement/holiday/holidayList";
	}
}
