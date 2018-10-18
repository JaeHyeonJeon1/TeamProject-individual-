// 2018.10.18 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cafe24.iumium.personnel.generalaffairs.dto.Punishment;
import com.cafe24.iumium.personnel.generalaffairs.dto.TeachersDisciplinary;
import com.cafe24.iumium.personnel.generalaffairs.service.TeachersDisciplinaryService;

@Controller
public class TeachersDisciplinaryController {

	@Autowired
	private TeachersDisciplinaryService teachersDisciplinaryService;
	
	// 징계 내역리스트
	@RequestMapping(value="/personnel/generalAffairsManagement/disciplinary/disciplinaryList", method = RequestMethod.GET)
	public String selectDisciplinaryList(Model model) {
		System.out.println("TeachersDisciplinaryController-selectDisciplinaryList");
		
		List<TeachersDisciplinary> disciplinaryList = teachersDisciplinaryService.selectDisciplinaryList();
		model.addAttribute("disciplinaryList", disciplinaryList);
		
		return "personnel/generalAffairsManagement/disciplinary/disciplinaryList";
	}
	
	// 징계 리스트 및 입력창
	@RequestMapping(value="/personnel/generalAffairsManagement/disciplinary/disciplinaryInsert", method = RequestMethod.GET)
	public String disciplinaryInsert(Model model) {
		System.out.println("TeachersDisciplinaryController-disciplinaryInsert");
		
		List<Punishment>pnishmentList =  teachersDisciplinaryService.selectPunishmentList();
		model.addAttribute("pnishmentList", pnishmentList);
		
		return "personnel/generalAffairsManagement/disciplinary/disciplinaryInsert";
	}
	
	// 징계 등록
	@RequestMapping(value="/personnel/generalAffairsManagement/disciplinary/disciplinaryInsertAction", method = RequestMethod.POST)
	public String disciplinaryInsert(TeachersDisciplinary teachersDisciplinary ,HttpSession session ,RedirectAttributes redirect) {
		System.out.println("TeachersDisciplinaryController-disciplinaryInsert");
		
		String userId = (String)session.getAttribute("userId");
		teachersDisciplinary.setPersonnelNumber(userId);
		
		teachersDisciplinaryService.disciplinaryInsert(teachersDisciplinary);
		
		redirect.addFlashAttribute("result", "입력");
	
		return "redirect:/personnel/generalAffairsManagement/disciplinary/disciplinaryList";
	}
}
