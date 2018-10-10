// 2018.10.01 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.generalaffairs.dto.Holiday;

@Repository
public class HolidayDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.generalaffairs.dao.HolidayMapper.";
	
	// 휴일 리스트
	public List<Holiday> selectHolidayList(){
		
		return sqlSessionTemplate.selectList(nameSpace + "selectHolidayList");
		
	}
}