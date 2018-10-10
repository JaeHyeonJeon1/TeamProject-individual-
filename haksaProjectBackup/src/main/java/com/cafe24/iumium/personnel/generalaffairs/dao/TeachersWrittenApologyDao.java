// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.generalaffairs.dto.TeachersWrittenApology;

@Repository
public class TeachersWrittenApologyDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final String nameSpace = "com.cafe24.iumium.personnel.generalaffairs.dao.TeachersWrittenApologyMapper.";
	
	// 시말서리스트
	public List<TeachersWrittenApology> apologyList() {
		
		return sqlSessionTemplate.selectList(nameSpace +"selectWrittenApologyList");
				
	}
	
}
