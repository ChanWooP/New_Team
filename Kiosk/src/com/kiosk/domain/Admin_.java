package com.kiosk.domain;

public class Admin_ {
	private String adminId;
	private String adminPw;
	
	public Admin_() {
		
	}

	public Admin_(String adminId, String adminPw) {
		this.adminId = adminId;
		this.adminPw = adminPw;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPw() {
		return adminPw;
	}

	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}
	
}
