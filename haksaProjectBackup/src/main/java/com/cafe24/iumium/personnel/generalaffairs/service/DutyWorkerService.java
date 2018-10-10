// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.generalaffairs.dao.DutyWorkerDao;
import com.cafe24.iumium.personnel.generalaffairs.dto.DutyWorker;

@Service
@Transactional
public class DutyWorkerService {

	@Autowired
	private DutyWorkerDao dutyWorkerDao;
	
	// 당직 리스트 출력
	public List<DutyWorker> workerList() {
		System.out.println("DutyWorkerService-workerList");
		
		return dutyWorkerDao.selectWorkerList();
	}
}
