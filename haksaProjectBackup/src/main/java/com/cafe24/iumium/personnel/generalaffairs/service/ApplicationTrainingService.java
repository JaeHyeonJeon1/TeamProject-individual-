// 2018.0.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.generalaffairs.dao.ApplicationTrainingDao;
import com.cafe24.iumium.personnel.generalaffairs.dto.ApplicationTraining;
import com.cafe24.iumium.personnel.generalaffairs.dto.TrainingCode;

@Service
@Transactional
public class ApplicationTrainingService {

	@Autowired
	private ApplicationTrainingDao applicationTrainingDao;
	
	// 연수신청 리스트 출력
	public List<ApplicationTraining> trainingList() {
		System.out.println("Service-trainingList()");
		
		return applicationTrainingDao.selectTrainingList();
		
	}
	
	// 연수코드 
	public List<TrainingCode> trainingCodeList() {
		System.out.println("Service-trainingCodeList()");
		
		return applicationTrainingDao.trainingCodeList();
	}
}
