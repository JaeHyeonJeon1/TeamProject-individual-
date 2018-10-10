// 2018.10.01 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String holidayInsertAction(Holiday holiday ,HttpSession session) {
		System.out.println("HolidayController-holidayInsertAction");
		System.out.println("holidayCategory :" + holiday.getHolidayCategory());
		System.out.println("holidayName : " + holiday.getHolidayName());
		System.out.println("holidayStartDay : " + holiday.getHolidayStartDay());
		System.out.println("holidayEndDay : " + holiday.getHolidayEndDay());
		
		String userId = (String) session.getAttribute("userId");
		
		return "personnel/generalAffairsManagement/holiday/holidayList";
	}
}
