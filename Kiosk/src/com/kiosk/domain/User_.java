package com.kiosk.domain;

public class User_ {
	private String UserPhone;
	private int UserPoint;
	
	public User_() {
		
	}

	public User_(String userPhone, int userPoint) {
		super();
		UserPhone = userPhone;
		UserPoint = userPoint;
	}

	public String getUserPhone() {
		return UserPhone;
	}

	public void setUserPhone(String userPhone) {
		UserPhone = userPhone;
	}

	public int getUserPoint() {
		return UserPoint;
	}

	public void setUserPoint(int userPoint) {
		UserPoint = userPoint;
	}
	
}
