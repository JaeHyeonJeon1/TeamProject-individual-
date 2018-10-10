// 2018.10.08 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dto;

public class RewardTeachers {

	private int teachersNo;		// 교직원포상 번호
	private String personnelNumber;	// 교직원 번호
	private String recordId;	// 등록자 아이디
	private String teachersAwards;	// 수상내역
	private String teachersAwardingAgency;	// 수여기관
	private String teachersAwarder;	// 수여자
	private String teachersDetail;	// 상세내용
	private String teachersAttachedFile;	// 수여장 첨부파일
	private String teachersApprovalStatus;	// 승인 여부
	private String teachersRegistrationDay;	// 시스템 등록일자
	private String teachersModificationDate;	// 최종수정 일자
	private String deptNameKorean;	// 부서 명
	private String rankNameKorean;	// 직급 명
	private String humanName;	// 성명
	
	public int getTeachersNo() {
		return teachersNo;
	}
	public void setTeachersNo(int teachersNo) {
		this.teachersNo = teachersNo;
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
	public String getTeachersAwards() {
		return teachersAwards;
	}
	public void setTeachersAwards(String teachersAwards) {
		this.teachersAwards = teachersAwards;
	}
	public String getTeachersAwardingAgency() {
		return teachersAwardingAgency;
	}
	public void setTeachersAwardingAgency(String teachersAwardingAgency) {
		this.teachersAwardingAgency = teachersAwardingAgency;
	}
	public String getTeachersAwarder() {
		return teachersAwarder;
	}
	public void setTeachersAwarder(String teachersAwarder) {
		this.teachersAwarder = teachersAwarder;
	}
	public String getTeachersDetail() {
		return teachersDetail;
	}
	public void setTeachersDetail(String teachersDetail) {
		this.teachersDetail = teachersDetail;
	}
	public String getTeachersAttachedFile() {
		return teachersAttachedFile;
	}
	public void setTeachersAttachedFile(String teachersAttachedFile) {
		this.teachersAttachedFile = teachersAttachedFile;
	}
	public String getTeachersApprovalStatus() {
		return teachersApprovalStatus;
	}
	public void setTeachersApprovalStatus(String teachersApprovalStatus) {
		this.teachersApprovalStatus = teachersApprovalStatus;
	}
	public String getTeachersRegistrationDay() {
		return teachersRegistrationDay;
	}
	public void setTeachersRegistrationDay(String teachersRegistrationDay) {
		this.teachersRegistrationDay = teachersRegistrationDay;
	}
	public String getTeachersModificationDate() {
		return teachersModificationDate;
	}
	public void setTeachersModificationDate(String teachersModificationDate) {
		this.teachersModificationDate = teachersModificationDate;
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
		return "RewardTeachersDto [teachersNo=" + teachersNo + ", personnelNumber=" + personnelNumber + ", recordId="
				+ recordId + ", teachersAwards=" + teachersAwards + ", teachersAwardingAgency=" + teachersAwardingAgency
				+ ", teachersAwarder=" + teachersAwarder + ", teachersDetail=" + teachersDetail
				+ ", teachersAttachedFile=" + teachersAttachedFile + ", teachersApprovalStatus="
				+ teachersApprovalStatus + ", teachersRegistrationDay=" + teachersRegistrationDay
				+ ", teachersModificationDate=" + teachersModificationDate + ", deptNameKorean=" + deptNameKorean
				+ ", rankNameKorean=" + rankNameKorean + ", humanName=" + humanName + "]";
	}
	
}
