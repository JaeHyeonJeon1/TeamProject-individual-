// 2018.10.01 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.personnel.generalaffairs.dto.Vehicle;
import com.cafe24.iumium.personnel.generalaffairs.service.VehicleService;

@Controller
public class VehicleController {

	@Autowired
	private VehicleService vehicleService;
	
	// 리스트 이동
	@RequestMapping(value="/personnel/generalAffairsManagement/vehicle/vehicleList", method = RequestMethod.GET)
	public String vehicleList(Model model) {
		
		List<Vehicle> vehicleList = vehicleService.vehicleList();

		model.addAttribute("vehicleList" ,vehicleList);
		
		return "personnel/generalAffairsManagement/vehicle/vehicleList";
	}
	
}
