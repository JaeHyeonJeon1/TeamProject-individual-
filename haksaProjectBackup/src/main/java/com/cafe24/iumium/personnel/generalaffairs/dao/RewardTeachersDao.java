// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.generalaffairs.dto.RewardTeachers;

@Repository
public class RewardTeachersDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.generalaffairs.dao.RewardTeachersMapper.";
	
	// 포상 리스트
	public List<RewardTeachers> selectRewardTeachersList() {
		System.out.println("RewardTeachersDao-selectRewardTeachersList");
		
		return sqlSessionTemplate.selectList(nameSpace +"selectRewardTeachersList");
	}
}
