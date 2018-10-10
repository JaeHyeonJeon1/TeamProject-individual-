// 2018.10.02 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.generalaffairs.dto.Vehicle;

@Repository
public class VehicleDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.generalaffairs.dao.VehicleMapper.";
	
	// 차량운행 신청 리스트 
	public List<Vehicle> selectVehicleList() {
		System.out.println("VehicleDao-selectVehicleList()");
		
		return sqlSessionTemplate.selectList(nameSpace +"selectVehicleList");
	}
}
