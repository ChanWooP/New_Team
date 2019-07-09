package com.sp.owner.owner;

//세션에 저장할 정보를 가진 클래스
public class SessionInfo {
	private String hotelId;
	private String ownerName;
	private String ownerPwd;
	private String ownerTel;
	private String email;
	private String hotelCreated;
	private String hotelModified;
	private String businessnum;

	public String getHotelId() {
		return hotelId;
	}

	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getOwnerPwd() {
		return ownerPwd;
	}

	public void setOwnerPwd(String ownerPwd) {
		this.ownerPwd = ownerPwd;
	}

	public String getOwnerTel() {
		return ownerTel;
	}

	public void setOwnerTel(String ownerTel) {
		this.ownerTel = ownerTel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHotelCreated() {
		return hotelCreated;
	}

	public void setHotelCreated(String hotelCreated) {
		this.hotelCreated = hotelCreated;
	}

	public String getHotelModified() {
		return hotelModified;
	}

	public void setHotelModified(String hotelModified) {
		this.hotelModified = hotelModified;
	}

	public String getBusinessnum() {
		return businessnum;
	}

	public void setBusinessnum(String businessnum) {
		this.businessnum = businessnum;
	}

}
