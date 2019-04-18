package com.kiosk.domain;

public class User_ {
	private String userPhone;
	private int userPoint;
	
	public User_() {
		
	}

	public User_(String userPhone, int userPoint) {
		super();
		this.userPhone = userPhone;
		this.userPoint = userPoint;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public int getUserPoint() {
		return userPoint;
	}

	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}
	
}
