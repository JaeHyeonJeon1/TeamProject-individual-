// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.generalaffairs.dto.DutyWorker;

@Repository
public class DutyWorkerDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.generalaffairs.dao.DutyWorkerMapper.";
	
	// 당직 리스트
	public List<DutyWorker> selectWorkerList() {
		System.out.println("DutyWorkerDao-selectWorkerList()");
		
		return sqlSessionTemplate.selectList(nameSpace + "selectWorkerList");
	}
}
