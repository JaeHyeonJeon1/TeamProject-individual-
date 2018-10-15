// 2018.10.14 28기 전재
package com.cafe24.iumium.personnel.statistics.dto;

public class FullTimeTeacher {

	private String yearList;	// 검색 년도 리스트 출력
	private String positionNumber; // 보직사항코드
	private String teamCode;	// 보직 명

	
	public String getYearList() {
		return yearList;
	}

	public void setYearList(String yearList) {
		this.yearList = yearList;
	}
}
