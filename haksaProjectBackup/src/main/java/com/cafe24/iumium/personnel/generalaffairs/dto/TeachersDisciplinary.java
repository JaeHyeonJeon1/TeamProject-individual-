// 2018.10.18 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dto;

public class TeachersDisciplinary {

	private int teachersDisciplinaryNo;	// 교직원 징계 번호
	private String personnelNumber;	// 교직원 번호
	private String teachersDisciplinaryCode;	// 상벌 코드
	private String punishmentCodeName;	// 상벌 코드 명
	private String PunishmentDivision;	// 상벌 구분
	private String recordId;	// 등록자 아이디
	private String teachersDisciplinaryStartDate;	// 징계 시작 기간
	private String teachersDisciplinaryEndDate;	// 징계 종료 기간
	private String teachersDisciplinaryRegistrationDay;	// 시스템 등록 일자
	private String teachersDisciplinaryModificationDate;	// 최종 수정 일자
	private String deptNameKorean;	// 부서명
	private String rankNameKorean;	// 직급명
	private String humanName;	// 성명
	
	public int getTeachersDisciplinaryNo() {
		return teachersDisciplinaryNo;
	}
	public void setTeachersDisciplinaryNo(int teachersDisciplinaryNo) {
		this.teachersDisciplinaryNo = teachersDisciplinaryNo;
	}
	public String getPersonnelNumber() {
		return personnelNumber;
	}
	public void setPersonnelNumber(String personnelNumber) {
		this.personnelNumber = personnelNumber;
	}
	public String getTeachersDisciplinaryCode() {
		return teachersDisciplinaryCode;
	}
	public void setTeachersDisciplinaryCode(String teachersDisciplinaryCode) {
		this.teachersDisciplinaryCode = teachersDisciplinaryCode;
	}
	public String getPunishmentCodeName() {
		return punishmentCodeName;
	}
	public void setPunishmentCodeName(String punishmentCodeName) {
		this.punishmentCodeName = punishmentCodeName;
	}
	public String getPunishmentDivision() {
		return PunishmentDivision;
	}
	public void setPunishmentDivision(String punishmentDivision) {
		PunishmentDivision = punishmentDivision;
	}
	public String getRecordId() {
		return recordId;
	}
	public void setRecordId(String recordId) {
		this.recordId = recordId;
	}
	public String getTeachersDisciplinaryStartDate() {
		return teachersDisciplinaryStartDate;
	}
	public void setTeachersDisciplinaryStartDate(String teachersDisciplinaryStartDate) {
		this.teachersDisciplinaryStartDate = teachersDisciplinaryStartDate;
	}
	public String getTeachersDisciplinaryEndDate() {
		return teachersDisciplinaryEndDate;
	}
	public void setTeachersDisciplinaryEndDate(String teachersDisciplinaryEndDate) {
		this.teachersDisciplinaryEndDate = teachersDisciplinaryEndDate;
	}
	public String getTeachersDisciplinaryRegistrationDay() {
		return teachersDisciplinaryRegistrationDay;
	}
	public void setTeachersDisciplinaryRegistrationDay(String teachersDisciplinaryRegistrationDay) {
		this.teachersDisciplinaryRegistrationDay = teachersDisciplinaryRegistrationDay;
	}
	public String getTeachersDisciplinaryModificationDate() {
		return teachersDisciplinaryModificationDate;
	}
	public void setTeachersDisciplinaryModificationDate(String teachersDisciplinaryModificationDate) {
		this.teachersDisciplinaryModificationDate = teachersDisciplinaryModificationDate;
	}
	public String getDeptNameKorean() {
		return deptNameKorean;
	}
	public void setDeptNameKorean(String deptNameKorean) {
		this.deptNameKorean = deptNameKorean;
	}
	public String getRankNameKorean() {
		return rankNameKorean;
	}
	public void setRankNameKorean(String rankNameKorean) {
		this.rankNameKorean = rankNameKorean;
	}
	public String getHumanName() {
		return humanName;
	}
	public void setHumanName(String humanName) {
		this.humanName = humanName;
	}
	
	@Override
	public String toString() {
		return "TeachersDisciplinary [teachersDisciplinaryNo=" + teachersDisciplinaryNo + ", personnelNumber="
				+ personnelNumber + ", teachersDisciplinaryCode=" + teachersDisciplinaryCode + ", punishmentCodeName="
				+ punishmentCodeName + ", PunishmentDivision=" + PunishmentDivision + ", recordId=" + recordId
				+ ", teachersDisciplinaryStartDate=" + teachersDisciplinaryStartDate + ", teachersDisciplinaryEndDate="
				+ teachersDisciplinaryEndDate + ", teachersDisciplinaryRegistrationDay="
				+ teachersDisciplinaryRegistrationDay + ", teachersDisciplinaryModificationDate="
				+ teachersDisciplinaryModificationDate + ", deptNameKorean=" + deptNameKorean + ", rankNameKorean="
				+ rankNameKorean + ", humanName=" + humanName + "]";
	}
	
}
