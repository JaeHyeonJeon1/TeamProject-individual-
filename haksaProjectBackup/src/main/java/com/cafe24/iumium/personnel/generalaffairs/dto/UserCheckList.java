// 2018.10.13 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dto;

public class UserCheckList {

	// 임용 테이블
	private String personnelNumber;	// 교직원 번호
	// 인적사항 테이블
	private String humanName; // 성명
	// 부서코드 테이블
	private String deptCode; // 부서코드
	private String deptNameKorean; // 부서명
	// 팀코드 테이블
	private String teamCode; // 팀코드
	private String teamNameKorean; // 팀코드
	// 직군코드 테이블
	private String groupCode; // 직군 코드
	private String groupName; // 직군 명
	// 직종코드 테이블
	private String typeCode; // 직종 콘드
	private String typeName; // 직종 명
	// 직급코드 테이블
	private String rankCode; // 직급 코드
	private String rankNameKorean; // 직급 명
	
	public String getPersonnelNumber() {
		return personnelNumber;
	}
	public void setPersonnelNumber(String personnelNumber) {
		this.personnelNumber = personnelNumber;
	}
	public String getHumanName() {
		return humanName;
	}
	public void setHumanName(String humanName) {
		this.humanName = humanName;
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
	public String getGroupCode() {
		return groupCode;
	}
	public void setGroupCode(String groupCode) {
		this.groupCode = groupCode;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getTypeCode() {
		return typeCode;
	}
	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getRankCode() {
		return rankCode;
	}
	public void setRankCode(String rankCode) {
		this.rankCode = rankCode;
	}
	public String getRankNameKorean() {
		return rankNameKorean;
	}
	public void setRankNameKorean(String rankNameKorean) {
		this.rankNameKorean = rankNameKorean;
	}
	
	@Override
	public String toString() {
		return "UserCheckList [personnelNumber=" + personnelNumber + ", humanName=" + humanName + ", deptCode="
				+ deptCode + ", deptNameKorean=" + deptNameKorean + ", teamCode=" + teamCode + ", teamNameKorean="
				+ teamNameKorean + ", groupCode=" + groupCode + ", groupName=" + groupName + ", typeCode=" + typeCode
				+ ", typeName=" + typeName + ", rankCode=" + rankCode + ", rankNameKorean=" + rankNameKorean + "]";
	}
	
}
