// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.generalaffairs.dao.TeachersWrittenApologyDao;
import com.cafe24.iumium.personnel.generalaffairs.dto.TeachersWrittenApology;

@Service
@Transactional
public class TeachersWrittenApologyService {

	@Autowired
	private TeachersWrittenApologyDao teachersWrittenApologyDao;
	
	// 시말서 리스트
	public List<TeachersWrittenApology> apologyList() {
		
		return teachersWrittenApologyDao.apologyList();
	}
}
