// 2018.10.14 28기 전재
package com.cafe24.iumium.personnel.statistics.dto;

public class FullTimeTeacher {

	private String yearList;	// 검색 년도 리스트 출력
	private String jobGroupCode; // 직군 코드
	private String jobGroupName;	// 직군코드 명
	private String deptCode; // 부서 코드
	private String deptNameKorean; // 부서 명
	private String teamCode; // 팀코드
	private String teamNameKorean; // 팀코드 명
	private String jobRankCode; // 직급코드
	private String jobRankNameKorean; // 직급 명
	private String humanName; // 성명
	private String humanPhoneNumber; // 전화번호
	private String humanEmail; // 이메일
	
	public String getYearList() {
		return yearList;
	}
	public void setYearList(String yearList) {
		this.yearList = yearList;
	}
	public String getJobGroupCode() {
		return jobGroupCode;
	}
	public void setJobGroupCode(String jobGroupCode) {
		this.jobGroupCode = jobGroupCode;
	}
	public String getJobGroupName() {
		return jobGroupName;
	}
	public void setJobGroupName(String jobGroupName) {
		this.jobGroupName = jobGroupName;
	}
	public String getDeptCode() {
		return deptCode;
	}
	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}
	public String getDeptNameKorean() {
		return deptNameKorean;
	}
	public void setDeptNameKorean(String deptNameKorean) {
		this.deptNameKorean = deptNameKorean;
	}
	public String getTeamCode() {
		return teamCode;
	}
	public void setTeamCode(String teamCode) {
		this.teamCode = teamCode;
	}
	public String getTeamNameKorean() {
		return teamNameKorean;
	}
	public void setTeamNameKorean(String teamNameKorean) {
		this.teamNameKorean = teamNameKorean;
	}
	public String getJobRankCode() {
		return jobRankCode;
	}
	public void setJobRankCode(String jobRankCode) {
		this.jobRankCode = jobRankCode;
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
	public String getHumanPhoneNumber() {
		return humanPhoneNumber;
	}
	public void setHumanPhoneNumber(String humanPhoneNumber) {
		this.humanPhoneNumber = humanPhoneNumber;
	}
	public String getHumanEmail() {
		return humanEmail;
	}
	public void setHumanEmail(String humanEmail) {
		this.humanEmail = humanEmail;
	}
	
	@Override
	public String toString() {
		return "FullTimeTeacher [yearList=" + yearList + ", jobGroupCode=" + jobGroupCode + ", jobGroupName="
				+ jobGroupName + ", deptCode=" + deptCode + ", deptNameKorean=" + deptNameKorean + ", teamCode="
				+ teamCode + ", teamNameKorean=" + teamNameKorean + ", jobRankCode=" + jobRankCode
				+ ", jobRankNameKorean=" + jobRankNameKorean + ", humanName=" + humanName + ", humanPhoneNumber="
				+ humanPhoneNumber + ", humanEmail=" + humanEmail + "]";
	}
	
}
