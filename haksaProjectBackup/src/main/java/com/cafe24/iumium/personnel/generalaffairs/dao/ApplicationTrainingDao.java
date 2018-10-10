// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.generalaffairs.dto.ApplicationTraining;

@Repository
public class ApplicationTrainingDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.generalaffairs.dao.ApplicationTrainingMapper.";
	
	// 연수 리스트
	public List<ApplicationTraining> selectTrainingList(){
		System.out.println("ApplicationTrainingDao-selectTrainingList");
		
		return sqlSessionTemplate.selectList(nameSpace + "selectTrainingList");
		
	}
}
