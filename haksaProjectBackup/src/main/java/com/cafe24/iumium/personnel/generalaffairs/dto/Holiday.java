// 2018.10.01 28기 전재현
package com.cafe24.iumium.personnel.generalaffairs.dto;

public class Holiday {
	
	private String holidayNumber;	// 휴일 번호
	private String personnelNumber;	// 교직원 번호
	private String holidayName;	// 휴일 명
	private String holidayCategory;	// 휴일 구분
	private String holidayStartDay;	// 휴일시작 일자
	private String holidayEndDay;	// 휴일종료 일자
	private String holidayRegistrationDay;	// 시스템등록 일자
	
	public String getHolidayNumber() {
		return holidayNumber;
	}
	public void setHolidayNumber(String holidayNumber) {
		this.holidayNumber = holidayNumber;
	}
	public String getPersonnelNumber() {
		return personnelNumber;
	}
	public void setPersonnelNumber(String personnelNumber) {
		this.personnelNumber = personnelNumber;
	}
	public String getHolidayName() {
		return holidayName;
	}
	public void setHolidayName(String holidayName) {
		this.holidayName = holidayName;
	}
	public String getHolidayCategory() {
		return holidayCategory;
	}
	public void setHolidayCategory(String holidayCategory) {
		this.holidayCategory = holidayCategory;
	}
	public String getHolidayStartDay() {
		return holidayStartDay;
	}
	public void setHolidayStartDay(String holidayStartDay) {
		this.holidayStartDay = holidayStartDay;
	}
	public String getHolidayEndDay() {
		return holidayEndDay;
	}
	public void setHolidayEndDay(String holidayEndDay) {
		this.holidayEndDay = holidayEndDay;
	}
	public String getHolidayRegistrationDay() {
		return holidayRegistrationDay;
	}
	public void setHolidayRegistrationDay(String holidayRegistrationDay) {
		this.holidayRegistrationDay = holidayRegistrationDay;
	}
	
	@Override
	public String toString() {
		return "Holiday [holidayNumber=" + holidayNumber + ", personnelNumber=" + personnelNumber + ", holidayName="
				+ holidayName + ", holidayCategory=" + holidayCategory + ", holidayStartDay=" + holidayStartDay
				+ ", holidayEndDay=" + holidayEndDay + ", holidayRegistrationDay=" + holidayRegistrationDay + "]";
	}
	
}
