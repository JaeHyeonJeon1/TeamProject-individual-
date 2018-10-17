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
		System.out.println("HolidayDao-selectHolidayList");
		
		return sqlSessionTemplate.selectList(nameSpace + "selectHolidayList");
		
	}
	
	// 입력 처리
	public void holidayInsert(Holiday holiday ) {
		System.out.println("HolidayDao-holidayInsert");
		
		sqlSessionTemplate.selectList(nameSpace + "holidayInsert", holiday);
		
	}
	
	// 삭제처리
	public void checkListDelete(String checkListDelete) {
		System.out.println("HolidayDao-checkListDelete");
		System.out.println("checkListDelete :" +checkListDelete);
		
		sqlSessionTemplate.selectList(nameSpace + "checkListDelete" ,checkListDelete);
	}
}