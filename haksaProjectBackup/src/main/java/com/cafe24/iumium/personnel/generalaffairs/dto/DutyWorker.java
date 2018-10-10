// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dto;

public class DutyWorker {

	private int workerNumber;	// 근무조 번호
	private String personnelNumber;	// 교직원 번호
	private String record_id;	// 등록자 아이디
	private String workerDayOfTheWeek;	// 근무 요일
	private String workerType;	// 근태 종류
	private String workerStartTime;	// 근태시작 시간
	private String workerEndTime;	// 근태종료 시간
	private String workerDate;	// 근태 일자
	private String workerSpecialNote;	// 비고
	private String workerApprovalStatus; // 승인여부
	private String workerRegistrationDay; // 시스템 등록일자
	private String workerModificationDate; // 최종 수정일자
	private String deptNameKorean;	// 부서명
	private String rankNameKorean;	// 직급명
	private String humanName;	// 성명
	
	public int getWorkerNumber() {
		return workerNumber;
	}
	public void setWorkerNumber(int workerNumber) {
		this.workerNumber = workerNumber;
	}
	public String getPersonnelNumber() {
		return personnelNumber;
	}
	public void setPersonnelNumber(String personnelNumber) {
		this.personnelNumber = personnelNumber;
	}
	public String getRecord_id() {
		return record_id;
	}
	public void setRecord_id(String record_id) {
		this.record_id = record_id;
	}
	public String getWorkerDayOfTheWeek() {
		return workerDayOfTheWeek;
	}
	public void setWorkerDayOfTheWeek(String workerDayOfTheWeek) {
		this.workerDayOfTheWeek = workerDayOfTheWeek;
	}
	public String getWorkerType() {
		return workerType;
	}
	public void setWorkerType(String workerType) {
		this.workerType = workerType;
	}
	public String getWorkerStartTime() {
		return workerStartTime;
	}
	public void setWorkerStartTime(String workerStartTime) {
		this.workerStartTime = workerStartTime;
	}
	public String getWorkerEndTime() {
		return workerEndTime;
	}
	public void setWorkerEndTime(String workerEndTime) {
		this.workerEndTime = workerEndTime;
	}
	public String getWorkerDate() {
		return workerDate;
	}
	public void setWorkerDate(String workerDate) {
		this.workerDate = workerDate;
	}
	public String getWorkerSpecialNote() {
		return workerSpecialNote;
	}
	public void setWorkerSpecialNote(String workerSpecialNote) {
		this.workerSpecialNote = workerSpecialNote;
	}
	public String getWorkerApprovalStatus() {
		return workerApprovalStatus;
	}
	public void setWorkerApprovalStatus(String workerApprovalStatus) {
		this.workerApprovalStatus = workerApprovalStatus;
	}
	public String getWorkerRegistrationDay() {
		return workerRegistrationDay;
	}
	public void setWorkerRegistrationDay(String workerRegistrationDay) {
		this.workerRegistrationDay = workerRegistrationDay;
	}
	public String getWorkerModificationDate() {
		return workerModificationDate;
	}
	public void setWorkerModificationDate(String workerModificationDate) {
		this.workerModificationDate = workerModificationDate;
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
		return "DutyWorkerDto [workerNumber=" + workerNumber + ", personnelNumber=" + personnelNumber + ", record_id="
				+ record_id + ", workerDayOfTheWeek=" + workerDayOfTheWeek + ", workerType=" + workerType
				+ ", workerStartTime=" + workerStartTime + ", workerEndTime="
				+ workerEndTime + ", workerDate=" + workerDate + ", workerSpecialNote=" + workerSpecialNote
				+ ", workerApprovalStatus=" + workerApprovalStatus + ", workerRegistrationDay=" + workerRegistrationDay
				+ ", workerModificationDate=" + workerModificationDate + ", deptNameKorean=" + deptNameKorean
				+ ", rankNameKorean=" + rankNameKorean + ", humanName=" + humanName + "]";
	}
		
}
