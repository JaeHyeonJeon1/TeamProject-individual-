// 2018.10.17 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dto;

public class TrainingCode {

	private String trainingCode;	// 연수코드 
	private String trainingCodeName;	// 연수코드 명
	private String trainingHomeAndAbroadDivision;	//국내외구분
	
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
	public String getTrainingHomeAndAbroadDivision() {
		return trainingHomeAndAbroadDivision;
	}
	public void setTrainingHomeAndAbroadDivision(String trainingHomeAndAbroadDivision) {
		this.trainingHomeAndAbroadDivision = trainingHomeAndAbroadDivision;
	}
	
	@Override
	public String toString() {
		return "TainingCode [trainingCode=" + trainingCode + ", trainingCodeName=" + trainingCodeName
				+ ", trainingHomeAndAbroadDivision=" + trainingHomeAndAbroadDivision + "]";
	}
	
}
