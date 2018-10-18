// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dto;

public class TeachersWrittenApology {

	private int apologyNo;	// 교직원 시말서 번호
	private String personnelNumber;	// 교직원 번호
	private String recordId;	// 등록자 아이디
	private String apologyDisciplinaryHistory;	// 징계 내역
	private String apologyWhetherToSubmit;	// 시말서 제출여부
	private String apologyAttachedFile;	// 첨부 파일
	private String teachersWrittenApologyRegistrationDay;	// 시스템 등록일자
	private String apologyModificationDate;	// 최종수정 일자
	private String deptNameKorean;	// 부서 명
	private String rankNameKorean;	// 직급 명
	private String humanName;	// 성명
	
	public int getApologyNo() {
		return apologyNo;
	}
	public void setApologyNo(int apologyNo) {
		this.apologyNo = apologyNo;
	}
	public String getPersonnelNumber() {
		return personnelNumber;
	}
	public void setPersonnelNumber(String personnelNumber) {
		this.personnelNumber = personnelNumber;
	}
	public String getRecordId() {
		return recordId;
	}
	public void setRecordId(String recordId) {
		this.recordId = recordId;
	}
	public String getApologyDisciplinaryHistory() {
		return apologyDisciplinaryHistory;
	}
	public void setApologyDisciplinaryHistory(String apologyDisciplinaryHistory) {
		this.apologyDisciplinaryHistory = apologyDisciplinaryHistory;
	}
	public String getApologyWhetherToSubmit() {
		return apologyWhetherToSubmit;
	}
	public void setApologyWhetherToSubmit(String apologyWhetherToSubmit) {
		this.apologyWhetherToSubmit = apologyWhetherToSubmit;
	}
	public String getApologyAttachedFile() {
		return apologyAttachedFile;
	}
	public void setApologyAttachedFile(String apologyAttachedFile) {
		this.apologyAttachedFile = apologyAttachedFile;
	}
	public String getTeachersWrittenApologyRegistrationDay() {
		return teachersWrittenApologyRegistrationDay;
	}
	public void setTeachersWrittenApologyRegistrationDay(String teachersWrittenApologyRegistrationDay) {
		this.teachersWrittenApologyRegistrationDay = teachersWrittenApologyRegistrationDay;
	}
	public String getApologyModificationDate() {
		return apologyModificationDate;
	}
	public void setApologyModificationDate(String apologyModificationDate) {
		this.apologyModificationDate = apologyModificationDate;
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
		return "TeachersWrittenApologyDto [apologyNo=" + apologyNo + ", personnelNumber=" + personnelNumber
				+ ", recordId=" + recordId + ", apologyDisciplinaryHistory=" + apologyDisciplinaryHistory
				+ ", apologyWhetherToSubmit=" + apologyWhetherToSubmit + ", apologyAttachedFile=" + apologyAttachedFile
				+ ", teachersWrittenApologyRegistrationDay=" + teachersWrittenApologyRegistrationDay
				+ ", apologyModificationDate=" + apologyModificationDate + ", deptNameKorean=" + deptNameKorean
				+ ", rankNameKorean=" + rankNameKorean + ", humanName=" + humanName + "]";
	}
	
}
