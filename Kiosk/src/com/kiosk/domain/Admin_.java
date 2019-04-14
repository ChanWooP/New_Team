package com.kiosk.domain;

public class Admin_ {
	private String AdminId;
	private String AdminPw;
	
	public Admin_() {
		
	}

	public Admin_(String adminId, String adminPw) {
		AdminId = adminId;
		AdminPw = adminPw;
	}

	public String getAdminId() {
		return AdminId;
	}

	public void setAdminId(String adminId) {
		AdminId = adminId;
	}

	public String getAdminPw() {
		return AdminPw;
	}

	public void setAdminPw(String adminPw) {
		AdminPw = adminPw;
	}
	
}
