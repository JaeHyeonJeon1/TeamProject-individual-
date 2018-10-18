// 2018.10.18 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.generalaffairs.dto.Punishment;
import com.cafe24.iumium.personnel.generalaffairs.dto.TeachersDisciplinary;

@Repository
public class TeachersDisciplinaryDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	final  String nameSpace = "com.cafe24.iumium.personnel.generalaffairs.dao.TeachersDisciplinaryMapper.";
	
	// 징계 내역 리스트
	public List<TeachersDisciplinary> selectDisciplinaryList() {
		System.out.println("TeachersDisciplinaryDao-selectDisciplinaryList");
		
		return sqlSessionTemplate.selectList(nameSpace+"selectDisciplinaryList");
	}
	
	// 징계 리스트
	public List<Punishment> selectPunishmentList() {
		System.out.println("TeachersDisciplinaryDao-selectPunishmentList");
		
		return sqlSessionTemplate.selectList(nameSpace+"selectPunishmentList");
	}
	
	// 입력 처리
	public void disciplinaryInsert(TeachersDisciplinary teachersDisciplinary ) {
		System.out.println("TeachersDisciplinaryDao-disciplinaryInsert");
		
		sqlSessionTemplate.selectList(nameSpace+"disciplinaryInsert" ,teachersDisciplinary);
		
	}
	
	// 교직원 번호
	public List<TeachersDisciplinary> personnelNumber(TeachersDisciplinary teachersDisciplinary ) {
		System.out.println("TeachersDisciplinaryDao-disciplinaryInsert");
		
		return sqlSessionTemplate.selectList(nameSpace+"personnelNumber" ,teachersDisciplinary);
	}
}
