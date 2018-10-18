// 2018.10.18 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dto;


public class Punishment {

	private String rewardPunishmentCode;	// 상벌 코드
	private String rewardPunishmentCodeName;	// 상벌 코드 명
	private String rewardPunishmentDivision;	// 상벌 구분
	
	public String getRewardPunishmentCode() {
		return rewardPunishmentCode;
	}
	public void setRewardPunishmentCode(String rewardPunishmentCode) {
		this.rewardPunishmentCode = rewardPunishmentCode;
	}
	public String getRewardPunishmentCodeName() {
		return rewardPunishmentCodeName;
	}
	public void setRewardPunishmentCodeName(String rewardPunishmentCodeName) {
		this.rewardPunishmentCodeName = rewardPunishmentCodeName;
	}
	public String getRewardPunishmentDivision() {
		return rewardPunishmentDivision;
	}
	public void setRewardPunishmentDivision(String rewardPunishmentDivision) {
		this.rewardPunishmentDivision = rewardPunishmentDivision;
	}
	
	@Override
	public String toString() {
		return "Punishment [rewardPunishmentCode=" + rewardPunishmentCode + ", rewardPunishmentCodeName="
				+ rewardPunishmentCodeName + ", rewardPunishmentDivision=" + rewardPunishmentDivision + "]";
	}
	
}
