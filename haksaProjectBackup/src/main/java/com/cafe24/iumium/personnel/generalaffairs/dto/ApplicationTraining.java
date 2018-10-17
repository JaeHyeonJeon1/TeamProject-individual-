// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dto;

public class ApplicationTraining {

	private int trainingNo;	// 연수신청 번호
	private String personnelNumber;	// 교직원 번호
	private String trainingCode;	// 연수코드
	private String trainingCodeName;	// 연수코드 명
	private String trainingStartDate;	// 연수 시작 일자
	private String trainingEndDate;	// 연수 종료 일자
	private String trainingPurpose;	// 연수 목적
	private String trainingApprovalStatus;	// 승인 여부
	private String trainingRegistrationDay;	// 시스템등록 일자
	private String trainingModificationDate;	// 최종수정 일자
	private String deptNameKorean;	// 부서 명
	private String jobRankNameKorean;	// 직급 명
	private String humanName;	// 성명
	
	public int getTrainingNo() {
		return trainingNo;
	}
	public void setTrainingNo(int trainingNo) {
		this.trainingNo = trainingNo;
	}
	public String getPersonnelNumber() {
		return personnelNumber;
	}
	public void setPersonnelNumber(String personnelNumber) {
		this.personnelNumber = personnelNumber;
	}
	public String getTrainingCode() {
		return trainingCode;
	}
	public void setTrainingCode(String trainingCode) {
		this.trainingCode = trainingCode;
	}
	public String getTrainingCodeName() {
		return trainingCodeName;
	}
	public void setTrainingCodeName(String trainingCodeName) {
		this.trainingCodeName = trainingCodeName;
	}
	public String getTrainingStartDate() {
		return trainingStartDate;
	}
	public void setTrainingStartDate(String trainingStartDate) {
		this.trainingStartDate = trainingStartDate;
	}
	public String getTrainingEndDate() {
		return trainingEndDate;
	}
	public void setTrainingEndDate(String trainingEndDate) {
		this.trainingEndDate = trainingEndDate;
	}
	public String getTrainingPurpose() {
		return trainingPurpose;
	}
	public void setTrainingPurpose(String trainingPurpose) {
		this.trainingPurpose = trainingPurpose;
	}
	public String getTrainingApprovalStatus() {
		return trainingApprovalStatus;
	}
	public void setTrainingApprovalStatus(String trainingApprovalStatus) {
		this.trainingApprovalStatus = trainingApprovalStatus;
	}
	public String getTrainingRegistrationDay() {
		return trainingRegistrationDay;
	}
	public void setTrainingRegistrationDay(String trainingRegistrationDay) {
		this.trainingRegistrationDay = trainingRegistrationDay;
	}
	public String getTrainingModificationDate() {
		return trainingModificationDate;
	}
	public void setTrainingModificationDate(String trainingModificationDate) {
		this.trainingModificationDate = trainingModificationDate;
	}
	public String getDeptNameKorean() {
		return deptNameKorean;
	}
	public void setDeptNameKorean(String deptNameKorean) {
		this.deptNameKorean = deptNameKorean;
	}
	public String getJobRankNameKorean() {
		return jobRankNameKorean;
	}
	public void setJobRankNameKorean(String jobRankNameKorean) {
		this.jobRankNameKorean = jobRankNameKorean;
	}
	public String getHumanName() {
		return humanName;
	}
	public void setHumanName(String humanName) {
		this.humanName = humanName;
	}
	
	@Override
	public String toString() {
		return "ApplicationTrainingDto [trainingNo=" + trainingNo + ", personnelNumber=" + personnelNumber
				+ ", trainingCode=" + trainingCode + ", trainingCodeName=" + trainingCodeName + ", trainingStartDate="
				+ trainingStartDate + ", trainingEndDate=" + trainingEndDate + ", trainingPurpose=" + trainingPurpose
				+ ", trainingApprovalStatus=" + trainingApprovalStatus + ", trainingRegistrationDay="
				+ trainingRegistrationDay + ", trainingModificationDate=" + trainingModificationDate
				+ ", deptNameKorean=" + deptNameKorean + ", jobRankNameKorean=" + jobRankNameKorean + ", humanName=" + humanName
				+ "]";
	}
	
}
