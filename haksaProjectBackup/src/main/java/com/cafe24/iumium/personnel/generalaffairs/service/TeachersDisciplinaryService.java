// 2018.10.18 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.generalaffairs.dao.TeachersDisciplinaryDao;
import com.cafe24.iumium.personnel.generalaffairs.dto.Punishment;
import com.cafe24.iumium.personnel.generalaffairs.dto.TeachersDisciplinary;

@Service
@Transactional
public class TeachersDisciplinaryService {

	@Autowired
	private TeachersDisciplinaryDao teachersDisciplinaryDao;
	
	// 징계 리스트
	public List<TeachersDisciplinary> selectDisciplinaryList() {
		System.out.println("TeachersDisciplinaryService-selectDisciplinaryList");
		
		return teachersDisciplinaryDao.selectDisciplinaryList();
	}
	
	// 징계 리스트
	public List<Punishment> selectPunishmentList() {
		System.out.println("TeachersDisciplinaryService-selectPunishmentList");
		
		return teachersDisciplinaryDao.selectPunishmentList();
	}
	
	// 입력 처리
	public void disciplinaryInsert(TeachersDisciplinary teachersDisciplinary ) {
		System.out.println("TeachersDisciplinaryService-disciplinaryInsert");
		
		// 입력 실행
		teachersDisciplinaryDao.disciplinaryInsert(teachersDisciplinary);
		
	}
}
