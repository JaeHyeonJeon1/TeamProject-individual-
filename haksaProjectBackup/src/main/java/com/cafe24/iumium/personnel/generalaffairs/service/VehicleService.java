// 2018.10.02 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.generalaffairs.dao.VehicleDao;
import com.cafe24.iumium.personnel.generalaffairs.dto.Vehicle;

@Service
@Transactional
public class VehicleService {

	@Autowired
	private VehicleDao vehicleDao;
	
	// 리스트 출력
	public List<Vehicle> vehicleList() {
		
		return vehicleDao.selectVehicleList();
	}
	
}
