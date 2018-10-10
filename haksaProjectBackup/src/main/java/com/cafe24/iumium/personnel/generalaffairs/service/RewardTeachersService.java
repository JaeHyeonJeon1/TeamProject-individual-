// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.generalaffairs.dao.RewardTeachersDao;
import com.cafe24.iumium.personnel.generalaffairs.dto.RewardTeachers;

@Service
@Transactional
public class RewardTeachersService {

	@Autowired
	private RewardTeachersDao rewardTeachersDao;
	
	// 리스트 출력
	public List<RewardTeachers> rewardTeachers() {
		System.out.println("RewardTeachersService-rewardTeachers");
		
		return rewardTeachersDao.selectRewardTeachersList();
	}
}
