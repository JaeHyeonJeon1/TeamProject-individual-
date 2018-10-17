// 2018.10.01 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.generalaffairs.dao.HolidayDao;
import com.cafe24.iumium.personnel.generalaffairs.dto.Holiday;


@Service
@Transactional
public class HolidayService {

	@Autowired
	private HolidayDao holidayDao;
	
	// 리스트 출력
	public List<Holiday> holidayList() {
		System.out.println("HolidayService-holidayList");
		
		return holidayDao.selectHolidayList();
	}
	
	// 입력 처리
	public void holidayInsert(Holiday holiday) {
		System.out.println("HolidayService-holidayInsert");
		
		holidayDao.holidayInsert(holiday);
	}
	
	// 삭제 처리
	public void checkListDelete(String checkListDelete) {
		System.out.println("HolidayService-checkListDelete");
		System.out.println("checkListDelete :" +checkListDelete);
		
		String[] deleteList = checkListDelete.split(",");
		
		for(int i=0; i <deleteList.length; i++) {
			
			holidayDao.checkListDelete(deleteList[i]);
			
		}
		
	}
}
